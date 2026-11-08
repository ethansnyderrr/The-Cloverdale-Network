# Sophos SG 105 Rev. 2 (OPNsense Firewall)

**Bought:** used, on eBay
**Runs:** OPNsense (replacing Sophos's own firmware)
**Status:** OPNsense installed and boots cleanly to the login prompt. Not in line yet.

## Why this box

- A small, fanless, purpose-built firewall appliance with multiple gigabit ports, cheap on the used market.
- Sophos's firmware ties you to their licensing; OPNsense is free, open source, and updated often.
- Considered a second HP EliteDesk Mini with a USB Ethernet adapter instead, but USB NICs are a weak point for a firewall.

## Why OPNsense over pfSense

- Faster update cadence
- Native WireGuard support
- Better fit for non-Netgate hardware

## Ports

| Port | Role | Connects to |
|---|---|---|
| eth1 | WAN | AT&T Internet Air gateway |
| eth0 | LAN | 8-port managed switch |

## Install notes

TODO: how the installer was booted (USB image, console vs. VGA), any SG 105 Rev. 2 quirks hit during install.

## What's blocking deployment

Going in line takes down the internet for the whole house during the cutover, and once it's in, every device depends on it. Before that happens:

1. **UPS** so a power blip doesn't drop the firewall and everything behind it.
2. **Wi-Fi access point** behind OPNsense so roommates have Wi-Fi on the new network.

Full plan: [network/firewall-plan.md](../network/firewall-plan.md).
