# The Cloverdale Network

A log of developments to my personal server. Includes hardware, software, and all things developmental.

<!-- TODO: add a photo of the rack here -->
<!-- ![The rack](hardware/photos/rack-front.jpg) -->

## Overview

The Cloverdale Network is a self-hosted homelab built on a used **HP EliteDesk 800 G3** running **Proxmox VE**, mounted in a 10" GeeekPi rack with a built-in status display. It hosts media streaming, a game server, a local AI chatbot, a TV sports scoreboard, a team paper-trading bot, a 3D-printing guide app for a class project, and a Windows test VM. A dedicated **OPNsense firewall** (on a used Sophos SG 105) is built and waiting on a UPS and Wi-Fi access point before it goes in line.

## Stack at a Glance

| Layer | What's running |
|---|---|
| Hypervisor | Proxmox VE 9.2 |
| Media | Jellyfin (LXC 101) |
| Gaming | Crafty Controller + Minecraft Bedrock (LXC 102), MCXboxBroadcast in Docker (LXC 104) |
| AI | Ollama + Open WebUI (LXC 103) |
| Display | TV sports scoreboard (LXC 105) shown on a Fire TV Stick, rack LCD status dashboard |
| Automation | OSP paper-trading bot + team dashboard deploys (LXC 106) |
| Projects | Layer One, 3D-printing guide for MIS 430 (LXC 107) |
| Testing | Windows 11 VM (VM 100) |
| Remote access | Tailscale |
| Network | AT&T Internet Air gateway, 8-port managed switch; OPNsense firewall staged |

## Repository Layout

| Folder | Contents |
|---|---|
| [`hardware/`](hardware/) | Bill of materials, component notes, buy links, photos |
| [`software/`](software/) | Every guest on the server, with what it does, setup steps and configs |
| [`network/`](network/) | Topology diagrams, connectivity decisions, firewall cutover plan |
| [`docs/`](docs/) | Lessons learned and changelog |
| [`roadmap.md`](roadmap.md) | What's planned next |

## Network Diagram

See [`network/topology.md`](network/topology.md).

## Highlights

- Diagnosed a no-display fault down to unseated RAM on a used eBay unit
- Worked around carrier-grade NAT with a tunnel, then secured a public IPv4 from the ISP
- Identified a failing enterprise HDD despite clean SMART readings
- Runs a local LLM entirely on-prem with a browser chat interface
- Flashed OPNsense onto a used Sophos SG 105 Rev. 2 in place of its vendor firmware
- Runs eight guests on a $70 desktop, keeping most of them stopped until needed

Full write-ups in [`docs/lessons-learned.md`](docs/lessons-learned.md).
