# claude-sandbox: Run Claude Code CLI in an isolated container
FROM debian:bookworm-slim

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

RUN mkdir -p /workspace && chown claude:claude /workspace
RUN mkdir -p /home/claude/.claude && chown -R claude:claude /home/claude/.claude

USER claude
RUN curl -fsSL https://claude.ai/install.sh | bash

ENV PATH="/home/claude/.local/bin:$PATH"

WORKDIR /workspace

ENTRYPOINT ["bash", "-lc", "claude --dangerously-skip-permissions \"$@\"", "--"]
