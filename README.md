# The Cloverdale Network

A log of developments to my personal server. Includes hardware, software, and all things developmental.

<!-- TODO: add a photo of the rack here -->
<!-- ![The rack](hardware/photos/rack-front.jpg) -->

## Overview

The Cloverdale Network is a self-hosted homelab built on a used **HP EliteDesk 800 G3** running **Proxmox VE**, mounted in a 10" GeeekPi rack with a built-in status display. It hosts media streaming, a game server, a local AI chatbot, and remote access, with a dedicated firewall and network-wide DNS filtering on the roadmap.

## Stack at a Glance

| Layer | What's running |
|---|---|
| Hypervisor | Proxmox VE 9.2 |
| Media | Jellyfin (LXC) |
| Gaming | Crafty Controller + Minecraft Bedrock, MCXboxBroadcast (Docker in LXC) |
| AI | Ollama + Open WebUI (LXC) |
| Remote access | Tailscale |
| Monitoring | Rack LCD status dashboard |
| Network | AT&T Internet Air gateway, 8-port managed switch |

## Repository Layout

| Folder | Contents |
|---|---|
| [`hardware/`](hardware/) | Bill of materials, component notes, buy links, photos |
| [`software/`](software/) | Every service running on the server, with setup notes and configs |
| [`network/`](network/) | Topology diagram, connectivity decisions, firewall plans |
| [`docs/`](docs/) | Lessons learned and changelog |
| [`roadmap.md`](roadmap.md) | What's planned next |

## Network Diagram

See [`network/topology.md`](network/topology.md).

## Highlights

- Diagnosed a no-display fault down to unseated RAM on a used eBay unit
- Worked around carrier-grade NAT with a tunnel, then secured a public IPv4 from the ISP
- Identified a failing enterprise HDD despite clean SMART readings
- Runs a local LLM entirely on-prem with a browser chat interface

Full write-ups in [`docs/lessons-learned.md`](docs/lessons-learned.md).
