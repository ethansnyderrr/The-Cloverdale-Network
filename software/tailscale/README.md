# Tailscale

Personal remote access from my laptop and phone.

## Scope
- No exit node or subnet routing for now
- Scoped to reaching Jellyfin from outside the LAN

## Why Tailscale
- **Built on WireGuard,** a modern, fast, well-audited VPN protocol.
- **No port forwarding.** Devices connect to each other through Tailscale's coordination, so nothing on the homelab has to be opened to the internet for remote access.
- **Simple access control.** ACLs decide which devices can reach which services, managed from one admin console.
- **Free for this use.** The Personal plan is free for non-commercial use, with up to 6 users and unlimited personal devices.

## Why not just port-forward Jellyfin?
Exposing a media server directly to the internet means anyone can find and probe it. With Tailscale, Jellyfin is only reachable from my own signed-in devices.
