# Minecraft (Bedrock)

A Bedrock server for friends on mobile and console.

## Components

| CT ID | Name | Role |
|---|---|---|
| 102 | Crafty Controller | Server management panel + Bedrock server |
| 104 | mc-broadcast | MCXboxBroadcast in Docker, advertises the server over Xbox Live so console players can join |

## Networking
- MCXboxBroadcast switched from bridge to **host** network mode so it can reach the Crafty server over the LAN
- External access originally used a playit.gg tunnel to get around CGNAT; see [CGNAT write-up](../../network/cgnat-to-public-ip.md)

## Config
See [`docker-compose.yml`](docker-compose.yml).
