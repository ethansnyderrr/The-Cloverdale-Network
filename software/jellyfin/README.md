# Jellyfin

**Container:** LXC 101

## Why Jellyfin over Plex
TODO: fully open source, no account required, no paywalled features.

## Storage
Media drive mounted on the host at `/mnt/media` and bind-mounted into the container.

```
# /etc/pve/lxc/101.conf (excerpt)
mp0: /mnt/media,mp=/mnt/media
```

## Clients
- Roku via the Jellyfin app, using Moonfin (community client with built-in themes) for a better UI
- Remote access via Tailscale
