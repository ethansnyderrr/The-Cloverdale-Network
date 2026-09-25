# AI Chat (Ollama + Open WebUI)

**Container:** LXC 103 (`ai-chat`), Debian 13

A fully local LLM chatbot. Nothing leaves the network.

## Components
- **Ollama** serving the `llama3.1:8b` model
- **Open WebUI** installed via `uv` (Python 3.11), running as a systemd service for a browser-based chat interface

## Setup
TODO: install steps.

## Service file
See [`open-webui.service`](open-webui.service).

## Notes
TODO: performance on CPU-only i5, response times, model choice reasoning.
