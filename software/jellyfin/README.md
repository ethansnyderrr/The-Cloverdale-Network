# Jellyfin

**Container:** LXC 101 (`jellyfin`), Ubuntu, 2 cores / 2GB / 40GB
**Status:** Always on

## Why Jellyfin over Plex
- **Fully free and open source.** No subscription and no features held back for paying users.
- **No account or cloud login.** Everything runs locally; the server doesn't depend on someone else's service being up.
- **Remote streaming stays free.** Since April 29, 2025, Plex requires a Plex Pass or a Remote Watch Pass to stream from your own server outside your home network, and it extended that to its Roku app in late 2025. With Jellyfin plus Tailscale, watching my own library away from home costs nothing.

## Storage
Media drive mounted on the host at `/mnt/media` and bind-mounted into the container.

```
# /etc/pve/lxc/101.conf (excerpt)
mp0: /mnt/media,mp=/mnt/media
```

## Clients
- Roku via the Jellyfin app, using Moonfin (community client with built-in themes) for a better UI
- Remote access via Tailscale
