# Firewall and DNS Plan

## OPNsense
Planned as a dedicated device between the AT&T gateway and the switch, likely on a used Sophos SG 105w.

**Why OPNsense over pfSense:**
- Faster update cadence
- Native WireGuard support
- Better fit for non-Netgate hardware

## DNS
- Pi-hole for network-wide DNS filtering
- Unbound as failover

## Routing
- Policy-based VPN routing for streaming traffic

## History
A first Pi-hole LXC was removed after DHCP setup couldn't be made to work with the ISP gateway. Revisiting once OPNsense handles DHCP.
