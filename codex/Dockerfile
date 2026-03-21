# codex-sandbox: Run OpenAI Codex CLI in an isolated container
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

RUN useradd -m -s /bin/bash codex && \
    echo "codex ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

RUN mkdir -p /workspace && chown codex:codex /workspace

RUN npm i -g @openai/codex

USER codex

WORKDIR /workspace

ENTRYPOINT ["codex", "--dangerously-bypass-approvals-and-sandbox"]
