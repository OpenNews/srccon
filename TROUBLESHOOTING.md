# Troubleshooting

Common issues and solutions for SRCCON site development and deployment.

> **Note:** This guide is for event organizers building their SRCCON sites. Template maintainers should see the [README.md - Troubleshooting](README.md#troubleshooting) section for template-specific issues.

## Start Here: Quick Triage

**Site won't build?**

1. Read the error message carefully - it usually tells you the filename and line number
2. Check YAML syntax in the mentioned file
3. Look for unclosed Liquid tags in templates
4. Run `bundle exec rake clean && bundle exec rake build` for a fresh build

**Site builds but looks wrong?**

1. Hard refresh your browser (Ctrl+Shift+R or Cmd+Shift+R)
2. Check browser console (F12) for 404 errors
3. Verify file paths and case sensitivity
4. Check `_config.yml` baseurl and url settings

**Made changes but not seeing them?**

1. Some changes need server restart: `_config.yml`, `_data/*.yml`, new files
2. Check that Jekyll is done building (watch terminal output)
3. Hard refresh browser
4. Clear Jekyll cache: `bundle exec rake clean`

## Quick Reference: Rake Tasks

Most common issues can be resolved using built-in Rake tasks. See [tasks/README.md](tasks/README.md) for complete documentation.

1. `bundle exec rake setup` - Initialize new site from template (first-time only)
2. `bundle exec rake build` - Build the Jekyll site
3. `bundle exec rake serve` - Build and serve the site locally at http://localhost:4000
   - 3a. Add `--trace` flag for detailed error output if build fails
   - 3b. Server auto-rebuilds on file changes (except `_config.yml` and `_data/*.yml`)
4. `bundle exec rake clean` - Clear Jekyll cache and built files
5. `bundle exec rake check` - Validate configuration has been updated from template defaults
6. `bundle exec rake format` - Auto-fix code formatting
7. `bundle exec rake lint` - Check code formatting
8. `bundle exec rake outdated` - Check for outdated gems

## Common Error Messages

| Error                                        | Solution                                                          |
| -------------------------------------------- | ----------------------------------------------------------------- |
| "Could not find gem..."                      | `bundle install` or delete `Gemfile.lock` and retry               |
| "Liquid syntax error"                        | Check for unclosed tags/mismatched delimiters; see error filename |
| "Could not locate included file"             | Verify file exists in `_includes/` with exact case                |
| "YAML Exception: mapping values not allowed" | Use spaces (not tabs), quote strings with colons                  |
| "Port 4000 already in use"                   | `lsof -ti:4000 \| xargs kill -9` or use `--port 4001`             |
| "Permission denied"                          | Never use `sudo` with bundle/gem; use rbenv/rvm on macOS          |

## Resources

- [SITE_README.md](SITE_README.md) - Development guide & setup checklist
- [tasks/README.md](tasks/README.md) - Complete Rake task reference
- [AWS_authentication.md](AWS_authentication.md) - OIDC and AWS setup
- [Jekyll Docs](https://jekyllrb.com/docs/) - Template language reference

## Setup & Configuration

### New site setup fails

- Ensure you're in the repository root with `_config.yml` present
- Run with trace for details: `bundle exec rake setup --trace`
- If not in a git repo: `git init`, commit files, add remote, push to GitHub, then retry

### Configuration validation errors

**Run `bundle exec rake check` to identify issues**, then:

- Update placeholder values in `_config.yml`
- Coordinate subdomain with OpenNews team (e.g., `2026.srccon.org`)
- Follow the [Setup Checklist](SITE_README.md#setup-checklist)

## Environment & Dependencies

### Ruby version mismatch

- Check versions: `cat .ruby-version` vs `ruby --version`
- Install correct version:
  - rbenv: `rbenv install $(cat .ruby-version) && rbenv local $(cat .ruby-version)`
  - rvm: `rvm install $(cat .ruby-version) && rvm use $(cat .ruby-version)`

### Gem installation issues

- Run `bundle install` after updating Ruby version
- Run `bundle exec rake outdated` to check for outdated dependencies
- Delete `Gemfile.lock` and re-run `bundle install` if errors persist
- **Never use `sudo`** - install gems in user directory or use rbenv/rvm

### Node.js required for formatting

- Check: `node --version` (need 14+)
- Install: macOS `brew install node`, Linux `apt install nodejs npm`
- Run `npm install` for Prettier dependencies

### Platform-specific notes

- **Windows:** Use WSL for better compatibility
- **Case sensitivity:** Use exact case for file paths (matters on Linux/production)
- **Permissions:** Never use `sudo` with Ruby/Bundler on macOS/Linux

## Build & Cache Issues

### Build fails or server won't start

1. Run `bundle exec rake clean` to clear caches
2. Run `bundle install` to update dependencies
3. Check port 4000: `lsof -i :4000` (kill with `lsof -ti:4000 | xargs kill -9`)
4. Try with verbose output: `jekyll serve --verbose`

### Stale or corrupted cache

- Run `bundle exec rake clean` (clears `.jekyll-cache` and `_site`)
- Hard refresh browser: Ctrl+Shift+R (Windows/Linux) or Cmd+Shift+R (Mac)
- Use incognito/private window for testing

## Jekyll & Template Errors

### Liquid syntax errors

- Check for unclosed tags: `{% if %}` needs `{% endif %}`
- Check mismatched delimiters: `{{` needs `}}`, `{%` needs `%}`
- Build locally to see specific error: `bundle exec rake build`
- Run `bundle exec rake format` to fix formatting issues

### Include or layout not found

- Verify file exists in `_includes/` or `_layouts/` with exact case
- Include with extension: `{% include navigation.html %}`
- Check build output for specific filename: `bundle exec rake build`

### Variables not rendering

- Use `default` filter: `{{ page.title | default: "No Title" }}`
- Debug with: `{{ page | jsonify }}`
- Check variable scope: `site.*` (config) vs `page.*` (front matter)

## YAML & Data Files

### YAML syntax errors

- Validate at [yamllint.com](http://www.yamllint.com/)
- Use spaces (not tabs) for indentation
- Quote strings with colons: `title: "Session: Building Tools"`
- Build locally to see parsing errors: `bundle exec rake build`

### Front matter issues

- Must start/end with `---` (three dashes) at top of file
- Must be valid YAML (test at [yamllint.com](http://www.yamllint.com/))
- Strings with colons need quotes: `title: "Event: SRCCON"`

## Deployment

### Site shows old content after deploy

- CloudFront cache takes 5-10 minutes to propagate
- Check GitHub Actions logs to confirm invalidation triggered
- Staging bypasses CloudFront (updates appear immediately)

### Deployment fails

- Verify `_config.yml` has correct S3 bucket config
- Check repository has access to `AWS_ROLE_ARN` secret
- Review GitHub Actions logs for specific errors
- See [AWS_authentication.md](AWS_authentication.md) for OIDC setup

## Git & GitHub

### Cannot push to branch

- Protected branches require PRs - create feature branch: `git checkout -b feature-name`
- Check branch protection rules: Settings → Branches

### Merge conflicts

- Check status: `git status`
- Resolve conflicts in marked files, then: `git add <file> && git commit`
- Or abort: `git merge --abort`

### GitHub Actions not triggering

- Check workflow file is in `.github/workflows/` and valid YAML
- Verify branch names match workflow triggers
- Check Actions tab and ensure Actions enabled (Settings → Actions)

## Assets & Resources

### Missing images or broken links

- Verify file exists with exact case: `Logo.png` ≠ `logo.png`
- Check paths are from site root: `/media/img/logo.png`
- Load page locally and check browser console (F12) for 404 errors
- Visually inspect pages for broken images (broken icon or alt text)

### CSS/JS not loading

- Check browser console (F12) for 404 errors
- Hard refresh: Ctrl+Shift+R (Windows/Linux) or Cmd+Shift+R (Mac)
- Verify files exist in `media/css/` or `media/js/`
- Inspect page source (Ctrl+U) to verify correct paths in `<link>` and `<script>` tags

## Manual Smoke Testing

### Before committing changes

1. **Build locally:** `bundle exec rake build` - must succeed without errors
2. **Start dev server:** `bundle exec rake serve` - visit http://localhost:4000
3. **Visual inspection:** Check that pages render correctly, images load, styles apply
4. **Browser console:** Open DevTools (F12) - check for 404s or JavaScript errors
5. **Mobile view:** Toggle device toolbar in DevTools to check responsive layout
6. **Navigation:** Click through main navigation links to verify no broken pages

### Code formatting

- Run `bundle exec rake format` to auto-fix all formatting issues
- Run `bundle exec rake lint` to check formatting without changes
- For format-on-save, ensure VSCode extensions installed and `npm install` completed

## Jekyll-Specific Gotchas

### Files and folders Jekyll ignores

- Files/folders starting with `.` (hidden) are ignored
- Files/folders starting with `_` are special (except `_config.yml`, `_data/`, `_includes/`, `_layouts/`, `_site/`)
- Add files to `exclude:` list in `_config.yml` if needed (e.g., `node_modules/`, `vendor/`)

### Changes that require server restart

**Restart required:**

- `_config.yml` changes
- `_data/*.yml` changes
- New files/folders
- Gemfile changes (also run `bundle install`)

**No restart needed:**

- Content file changes (`.md`, `.html`)
- Template changes (`_includes/`, `_layouts/`)
- Asset changes (CSS, JS, images)

### URL and path issues

- Paths in content should be absolute from site root: `/media/img/logo.png` not `media/img/logo.png`
- Check `baseurl` in `_config.yml` - should be empty for root domain
- Use `{{ site.baseurl }}` in templates for path prefix if needed
- Links to pages: `/conduct/` not `conduct.html`

## Getting Better Error Messages

### Build fails with vague error

- Run with `--trace` flag: `bundle exec rake build --trace`
- Check Jekyll verbose output: `bundle exec jekyll build --verbose`
- Look for filename and line number in error output
- Errors often appear several lines up from where the command stopped

### Server crashes or hangs

- Check for infinite loops in Liquid templates
- Look for circular includes (`{% include %}` calling itself)
- Verify no missing `{% endif %}` or `{% endfor %}` tags
- Restart with verbose: `bundle exec jekyll serve --verbose`
