# Firewall and DNS Plan

## Status

OPNsense is installed on a used **Sophos SG 105 Rev. 2** ([hardware notes](../hardware/sophos-sg105.md)) and boots cleanly. It goes in line after the **UPS** and **Wi-Fi access point** are bought and set up.

## Why OPNsense over pfSense
- Faster update cadence
- Native WireGuard support
- Better fit for non-Netgate hardware

## Addressing plan

The homelab keeps its existing `192.168.1.x` addresses, so nothing on the server needs re-addressing. The AT&T gateway moves out of the way instead.

| Segment | Range | Notes |
|---|---|---|
| AT&T gateway LAN | `192.168.0.x` | Gateway only talks to OPNsense's WAN |
| OPNsense LAN (homelab) | `192.168.1.x` | OPNsense at `192.168.1.1`; server, switch, AP and all clients |

## Cutover steps

Planned for late at night, when roommates aren't using the internet.

1. Change the AT&T gateway's LAN range to `192.168.0.x`.
2. Cable it: AT&T gateway → OPNsense **WAN (eth1)**; OPNsense **LAN (eth0)** → switch.
3. Set OPNsense LAN to `192.168.1.1` and turn on its DHCP server for `192.168.1.x` (keeping existing static and reserved addresses).
4. Point the Proxmox host and any static guests' gateway at `192.168.1.1`.
5. Redo the **Minecraft port forward** (19132/UDP to Crafty, CT 102) on OPNsense.
6. Connect the AP to the switch, powered from the UPS.
7. Move roommates onto the new Wi-Fi.

## Wi-Fi

One **flat network**, no VLAN split. Roommates on the new Wi-Fi get full access to homelab services (Jellyfin, scoreboard, Minecraft).

## DNS (after the cutover)
- Pi-hole for network-wide DNS filtering
- Unbound as failover

## Routing
- Policy-based VPN routing for streaming traffic

## History
A first Pi-hole LXC was removed after DHCP setup couldn't be made to work with the ISP gateway. Revisiting once OPNsense handles DHCP.
