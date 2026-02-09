# claude-sandbox

Run [Claude Code](https://github.com/anthropics/claude-code) CLI in an isolated Docker container with `--dangerously-skip-permissions`.

## Setup

```bash
echo "alias claude-sandbox='docker run -it --rm -v ~/.claude-docker.json:/home/claude/.claude.json -v ~/.claude-docker:/home/claude/.claude -v \$(pwd):/workspace pranavgade20/claude-sandbox'" >> ~/.bashrc
source ~/.bashrc
```

For zsh:
```bash
echo "alias claude-sandbox='docker run -it --rm -v ~/.claude-docker.json:/home/claude/.claude.json -v ~/.claude-docker:/home/claude/.claude -v \$(pwd):/workspace pranavgade20/claude-sandbox'" >> ~/.zshrc
source ~/.zshrc
```

## Run

After completing the steps in Setup:

```bash
cd your-project
claude-sandbox
```

On first run, you'll be prompted to log in with your API key or Claude subscription.

With a prompt:
```bash
claude-sandbox -p "fix all TypeScript errors"
```

## Build Locally

```bash
git clone https://github.com/pranavgade20/claude-sandbox.git
cd claude-sandbox
docker build -t claude-sandbox .
```

## License

GNU GPLv3
