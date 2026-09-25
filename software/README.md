# Software

All services run as guests on Proxmox VE.

## Service Inventory

| CT ID | Name | OS | Purpose | Status |
|---|---|---|---|---|
| — | Proxmox VE 9.2 | Debian-based | Hypervisor | ✅ Running |
| 101 | Jellyfin | TODO | Media server | ✅ Running |
| 102 | Crafty Controller | TODO | Minecraft Bedrock server | ✅ Running |
| 103 | ai-chat | Debian 13 | Ollama + Open WebUI | ✅ Running |
| 104 | mc-broadcast | TODO | MCXboxBroadcast (Docker) | ✅ Running |
| — | Tailscale | — | Remote access | 🚧 In progress |
| — | Windows 11 VM | Windows 11 | TODO | 🚧 Planned |

## Services

- [Proxmox](proxmox/)
- [Jellyfin](jellyfin/)
- [Minecraft](minecraft/)
- [AI Chat](ai-chat/)
- [Tailscale](tailscale/)
- [Dashboard](dashboard/)

> Config files in this repo are sanitized. Secrets live in local `.env` files that are never committed.
