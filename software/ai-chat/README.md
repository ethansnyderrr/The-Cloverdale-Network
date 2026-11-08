# AI Chat (Ollama + Open WebUI)

**Container:** LXC 103 (`ai-chat`), Debian 13, 4 cores / 12GB / 20GB
**Status:** Stopped until needed

A fully local LLM chatbot. Nothing leaves the network.

## Components
- **Ollama** serving the `llama3.1:8b` model
- **Open WebUI** installed via `uv` (Python 3.11), running as a systemd service for a browser-based chat interface

## Setup

See [`setup.sh`](setup.sh) (**reconstructed**).

1. Install Ollama with its official script. It sets itself up as `ollama.service` listening on `127.0.0.1:11434`.
2. Pull `llama3.1:8b`.
3. Install `uv`, then run Open WebUI with Python 3.11 under systemd ([`open-webui.service`](open-webui.service)).
4. Browse to `http://<container-ip>:8080` and create the admin account on first visit.

## Why it gets the most resources

It has the most RAM of any guest (12GB). The 8B model needs roughly 5GB just to load, and there's no GPU, so everything runs on the i5's CPU. That's also why it stays stopped when nobody's using it.

## Notes
- CPU-only, so replies are noticeably slower than cloud chatbots. An 8B model is about the limit for this hardware.
- Also used as the subject of a class pitch (AI product teardown and redesign).
