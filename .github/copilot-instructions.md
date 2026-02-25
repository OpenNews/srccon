# Copilot instructions for SRCCON

## Big picture architecture

- This repo is a Jekyll site, not an app server: source content + templates compile into `_site/` (`Rakefile` `build`, `.github/workflows/test.yml`).
- Page content is mostly root-level Markdown (for example `homepage.md`) with frontmatter driving layout/navigation behavior.
- Liquid composition pattern:
  - Layouts in `_layouts/` (for example `_layouts/layout_hub.html`) wrap `{{ content }}`.
  - Shared fragments live in `_includes/`.
  - Structured content lives in `_data/*.yml`.
- Collections are configured in `_config.yml` (`transcripts`, `share`) and output to permalinked paths.
- Legacy material exists in `_archive/`; prefer editing current root pages, `_layouts/`, `_includes/`, `_data/`, and collection content unless asked to update archive files.

## Workflow commands agents should use

- Setup/runtime baseline: Ruby `.ruby-version` and Bundler.
- Primary local loop: `bundle exec rake default` (`build` + `check` + `serve`).
- If you need a fresh output directory first: run `bundle exec rake clean` before `build`/`default`.
- Build-only when debugging rendering: `bundle exec rake build`.
- Config/data guardrail before deeper edits: `bundle exec rake check` (depends on `validate_yaml`).
- Full local validation suite: `bundle exec rake test` (aggregate task in `tasks/test.rake`).
- `bundle exec rake test:sessions` exists but is currently a placeholder and is not included in aggregate `rake test`.
- Formatting:
  - `bundle exec rake lint` for checks (StandardRB + Prettier).
  - `bundle exec rake format` for autofix (StandardRB + Prettier).

## Project-specific conventions (enforced by tasks)

- Root markdown pages should include frontmatter `section` and `permalink` (`test:page_config`).
- In Liquid templates, prefer `page.root_url`; `site.root_url` is treated as an error except legacy `_includes/prior_events.html` (`test:templates`).
- Liquid href style matters: `href="{{variable}}"` is warned on; `{{ page.url }}`-style spacing/object references are expected (`test:templates`).
- (Template checks intentionally skip some file paths)

## Validation nuances and CI differences

- `test:html_proofer` checks built output in `_site/` and aborts if `_site/` does not exist.
- Local `test:html_proofer` enforces HTTPS links (`enforce_https: true` in `tasks/test.rake`).
- CI `test.yml` intentionally runs htmlproofer with `--no-enforce-https`; do not assume parity with local failures.
- YAML validation is stricter than syntax-only: `validate_yaml` also detects duplicate keys using Psych AST traversal in `Rakefile`.
- `rake check` reports configuration errors (template bucket/distribution defaults) but currently does not `abort`; use it as a guardrail signal, not a hard gate.

## Deployment boundaries and integrations

- Deployment settings come from `_config.yml` → `deployment.bucket`, `deployment.staging_bucket`, `deployment.cloudfront_distribution_id`.
- Branch-driven behavior in `.github/workflows/deploy.yml`:
  - `staging` push syncs `_site/` to staging S3.
  - `main` push syncs production S3 and invalidates CloudFront.
- Local deploy tasks in `Rakefile` default to dry runs (`deploy:staging`, `deploy:production`) and require explicit confirmation for real deploys.
- AWS auth uses GitHub OIDC with `AWS_ROLE_ARN`; avoid adding static credentials.

## Editing guidance for agents

- Keep edits minimal and aligned with existing Liquid/Jekyll patterns; do not introduce new frameworks/toolchains.
- For template/frontmatter/data changes, run targeted checks first (`check`, `test:templates`, `test:page_config`) before `rake test`.
- If modifying deploy logic, update both Rake deploy tasks and matching GitHub workflow behavior to keep local/CI intent consistent.
