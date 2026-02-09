# claude-sandbox: Run Claude Code CLI in an isolated container
FROM node:24-slim

RUN apt-get update && apt-get install -y \
    git \
    curl \
    wget \
    vim \
    build-essential \
    python3 \
    sudo \
    && rm -rf /var/lib/apt/lists/*

RUN useradd -m -s /bin/bash claude && \
    echo "claude ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

RUN npm install -g @anthropic-ai/claude-code

RUN mkdir -p /workspace && chown claude:claude /workspace
RUN mkdir -p /home/claude/.claude && chown -R claude:claude /home/claude/.claude

USER claude
WORKDIR /workspace

ENTRYPOINT ["claude", "--dangerously-skip-permissions"]
