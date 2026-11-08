#!/usr/bin/env bash
# Reconstructed setup for LXC 103 (ai-chat), Debian 13, run as root.
# Review before running; this mirrors how the container was built.
set -euo pipefail

apt update
apt install -y curl ca-certificates

# 1. Ollama (installs and enables ollama.service on 127.0.0.1:11434)
curl -fsSL https://ollama.com/install.sh | sh
ollama pull llama3.1:8b

# 2. uv (Python package/runtime manager)
curl -LsSf https://astral.sh/uv/install.sh | sh

# 3. Open WebUI as a systemd service
install -m 644 open-webui.service /etc/systemd/system/open-webui.service
systemctl daemon-reload
systemctl enable --now open-webui
