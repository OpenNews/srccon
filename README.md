## SRCCON

This is the website for [SRCCON](https://www.srccon.org), the yearly conference for newsroom developers, designers, data reporters, and others who work with code in and around newsrooms.

## How to update the SRCCON site

### Local Development

Prerequisites:

- Ruby 3.2 or higher (see `.ruby-version`)
- Bundler 2.0 or higher

If you need to install Ruby:

- macOS/Linux: Use [rbenv](https://github.com/rbenv/rbenv) or [rvm](https://rvm.io/)
- macOS with Homebrew: `brew install ruby`
- Windows: Use [RubyInstaller](https://rubyinstaller.org/)

If you need to install Bundler: `gem install bundler`

### Working locally with live reload

```bash
bundle exec rake default  # Runs :build, :check and :serve commands with file watching
```

View at [https://localhost:4000](https://localhost:4000/)

Alternatively:

```bash
bundle exec rake serve    # Simple local server with live reload
```

### Core Commands

```bash
bundle exec rake clean              # Clean the build directory
bundle exec rake build              # 'Bake' the site to `_site/`
bundle exec rake serve              # Render locally with live reload
bundle exec rake default            # runs :clean, :build, :serve in a loop
```

### Testing changes locally

- Clone this repository to your local machine.
- For minor updates, work directly in the `staging` branch. For major updates, or if you're working on long-term changes to the site, create a new feature branch.
- NOTE: You do _not_ need to commit updates to your local `_site` directory -- it is `.gitignored`. But it is what copies over to S3 when you run your selection within the `bundle exec rake deploy:*` commands. after you run `bundle exec rake build` or `bundle exec rake serve`.

You only need to commit new or updated markdown documents and templates, and new or updated static media files.

### Pre-Launch Validation

```bash
bundle exec rake check              # Validate _config.yml configuration
```

#### Available tests

```bash
# Quick HTML validation
bundle exec rake test:html_proofer      # Validate built HTML and internal links
bundle exec rake test:templates         # Check template syntax

# Content quality
bundle exec rake test:placeholders      # Find unconfigured or TODO content patterns
bundle exec rake test:page_config       # Validate args at top of Markdown files

# Best practices
bundle exec rake test:a11y              # Accessibility checks
bundle exec rake test:performance       # File-size and performance warnings

# Optional: External/public link review (separate namespace; slower, requires network)
bundle exec rake review:external_links  # Check public/external URLs

# Optional: Deployment audit (compare staging vs production)
bundle exec rake review:compare_deployed_sites  # Compare staging and production content for differences

# Run 'em all
bundle exec rake test                   # Comprehensive validation suite (excludes review:* tasks)
```

### Post-Deployment Review & Audit

Use these tasks after deploys (or as part of scheduled maintenance) to audit site health and release quality:

```bash
# External/public link audit (network-dependent, slower)
bundle exec rake review:external_links

# Release audit: staging vs production content drift
bundle exec rake review:compare_deployed_sites

# Include archive/legacy URLs not present in local _site
bundle exec rake review:compare_deployed_sites EXTRA_PATHS="/2014/,/2014/program/"

# Or load extra paths from a file (one path per line)
bundle exec rake review:compare_deployed_sites EXTRA_PATHS_FILE=temp/archive_paths.txt
```

- `review:external_links` helps detect outbound link rot, redirects, or policy changes on third-party sites.
- `review:compare_deployed_sites` helps confirm that production reflects the intended staging state and flags unexpected content deltas.

### Branch Strategy & Deployment

This project uses GitHub Actions for automated deployment to AWS S3 and CloudFront:

- `main` → Production deployment (S3 + CloudFront invalidation)
- `staging` → Staging deployment (S3 only)
- Other branches → Test builds only (no deployment)

All deployments are tracked in GitHub's **Deployments** tab, making it easy to see deployment history, status, and environment URLs.

### Pushing to staging

- When you're ready to have someone review a site update, update the `staging` branch in GitHub. If you're working in `staging` locally, you just need to push your code changes. If you're working in a separate feature branch, push that branch to GitHub and then open a pull request into `staging` and merge it.
- A commit to the `staging` branch on GitHub will trigger an automatic build of the SRCCON staging site via GitHub Actions.
- The GitHub Actions workflow can take a minute or two to complete. Your changes will not be visible on the staging site immediately, but they'll be there quickly.
- **View deployment status:** Check the repository's [Deployments](https://github.com/OpenNews/srccon/deployments) tab to see the deployment history and status.

### Pushing to production

- Review your changes on the staging site, and if everything looks OK, come back to this repo and open a pull request from `staging` into `main`.
- **Optional QA step:** Run `bundle exec rake review:compare_deployed_sites` to see a detailed comparison of staging vs production content before merging.
- Merging a pull request into `main`, or pushing any commit to the `main` branch, will trigger an automatic build of the production site at [srccon.org](https://srccon.org) via GitHub Actions.
- The production site is delivered through Amazon CloudFront so that we can serve a secure, https-enabled [srccon.org](https://srccon.org). CloudFront also caches everything for performance. The rebuild process triggers an invalidation of the entire cache, but it still may take up to 10 minutes for site changes to be reflected on production.
- **View deployment status:** Check the repository's [Deployments](https://github.com/OpenNews/srccon/deployments) tab to see the deployment history and status.

### GitHub Actions Workflows

The repository includes GitHub Actions workflows in `.github/workflows/`:

1. **Deploy Workflow** (`deploy.yml`)
   - Triggers on push to `main` or `staging` branches
   - Builds Jekyll site with Ruby 3.2
   - Creates GitHub Deployment events for tracking
   - Deploys to S3 using AWS CLI with OIDC authentication
   - Invalidates CloudFront cache (production only)
   - Updates deployment status (success/failure) in GitHub Deployments tab

2. **Test Workflow** (`test.yml`)
   - Runs on all PRs and non-deployment branches
   - Validates Jekyll build succeeds
   - Checks internal links with html-proofer
   - Tests deployment commands with `--dryrun` flag

3. **Health Check Workflow** (`health-check.yml`)
   - Runs weekly to validate template still builds successfully
   - Reports outdated dependencies
   - Creates GitHub Issue(s?) on failure

### Deployment Configuration

Deployment settings are configured in `_config.yml`.

Authentication uses AWS OIDC with the github.com/OpenNews Organization-level secret `AWS_ROLE_ARN`. No repository-level AWS secrets are required.

### Dependency Management

```bash
bundle exec rake outdated           # Check for outdated dependencies
bundle exec rake outdated:all       # Chained outdated dependencies
```

- `bundler` manages Ruby gems (Jekyll and plugins)
- `dependabot` automatically creates PRs for dependency updates
- Weekly automated health checks catch breaking changes
