# Software

All services run as guests on Proxmox VE. Most are kept **stopped until needed** to save RAM and power on the EliteDesk; only the always-on services run full time.

## Service Inventory

| ID | Name | Type | OS | Cores / RAM / Disk | Purpose | Status |
|---|---|---|---|---|---|---|
| — | Proxmox VE 9.2 | Host | Debian-based | i5 / 32GB / 256GB SSD | Hypervisor | ✅ Running |
| 100 | Windows11VM | VM | Windows 11 | 2 / 8GB / 64GB | Test box | ⏸️ Stopped (on demand) |
| 101 | jellyfin | LXC | Ubuntu | 2 / 2GB / 40GB | Media server | ✅ Running |
| 102 | crafty-controller | LXC | Debian | 2 / 4GB / 16GB | Minecraft Bedrock server | ⏸️ Stopped (on demand) |
| 103 | ai-chat | LXC | Debian 13 | 4 / 12GB / 20GB | Ollama + Open WebUI | ⏸️ Stopped (on demand) |
| 104 | mc-broadcast | LXC | Debian | 2 / 2GB / 8GB | MCXboxBroadcast (Docker) | ⏸️ Stopped (on demand) |
| 105 | scoreboard | LXC | Debian | 1 / 512MB / 4GB | TV sports scoreboard | ⏸️ Stopped (on demand) |
| 106 | osp-bot | LXC | Debian | 1 / 1GB / 8GB | Paper-trading bot + team dashboard deploys | ✅ Running |
| 107 | layer-one | LXC | Debian 13 | 2 / 2GB / 16GB | Layer One 3D-printing guide (MIS 430) | ✅ Running |
| — | Tailscale | — | — | — | Remote access | 🚧 In progress |

All containers are **unprivileged** with `nesting=1` (Jellyfin and Crafty also have `keyctl=1`).

## Services

- [Proxmox and guest creation](proxmox/guests.md)
- [Jellyfin](jellyfin/)
- [Minecraft](minecraft/)
- [AI Chat](ai-chat/)
- [Scoreboard](scoreboard/)
- [OSP bot](osp-bot/)
- [Layer One](layer-one/)
- [Windows 11 VM](windows11-vm/)
- [Tailscale](tailscale/)
- [Rack dashboard](dashboard/)

> Config files in this repo are sanitized. Secrets live in local `.env` files that are never committed. Files marked **reconstructed** were rebuilt from setup notes and may differ slightly from what's on the box.
