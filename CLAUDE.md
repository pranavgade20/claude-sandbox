# CLAUDE.md

Docker container for running Claude Code CLI with `--dangerously-skip-permissions` in an isolated environment. Users mount project directories into `/workspace`.

## Structure

- `Dockerfile` - Container definition based on `node:24-slim`, installs Claude Code CLI globally
