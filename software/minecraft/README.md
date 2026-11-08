# Minecraft (Bedrock)

A Bedrock server for friends on mobile and console. Both containers stay stopped until people want to play.

## Components

| CT ID | Name | Specs | Role |
|---|---|---|---|
| 102 | crafty-controller | Debian, 2 cores / 4GB / 16GB | Crafty Controller web panel + the Bedrock server |
| 104 | mc-broadcast | Debian, 2 cores / 2GB / 8GB | MCXboxBroadcast in Docker, advertises the server over Xbox Live so console players can join |

## Crafty Controller (102)

**Reconstructed** install, using Crafty's official installer:

```bash
apt update && apt install -y git
git clone https://gitlab.com/crafty-controller/crafty-installer-4.0.git
cd crafty-installer-4.0
./install_crafty.sh
```

Crafty's panel runs on port **8443** (HTTPS). The Bedrock server itself is created from the panel and listens on **19132/UDP**.

## MCXboxBroadcast (104)

Console players can't type in a server address, so MCXboxBroadcast signs into an Xbox account and makes the server show up as a joinable friend session.

- Runs in Docker as a container named `mcxbox` ([`docker-compose.yml`](docker-compose.yml))
- Switched from bridge to **host** network mode so it can reach the Crafty server over the LAN
- First run prints a Microsoft sign-in code; the auth cache it saves is a secret and stays out of the repo

## Networking
- External access originally used a playit.gg tunnel to get around CGNAT; see the [CGNAT write-up](../../network/cgnat-to-public-ip.md)
- With a public IPv4 now, 19132/UDP is port-forwarded. This has to be **redone on OPNsense** at the firewall cutover ([plan](../../network/firewall-plan.md))
