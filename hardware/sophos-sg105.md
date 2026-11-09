# Sophos SG 105 Rev. 2 (OPNsense Firewall)

**Bought:** used, on eBay
**Runs:** OPNsense (replacing Sophos's own firmware)
**Status:** OPNsense installed and boots cleanly to the login prompt. Not in line yet.

## Hardware

| Item | Spec |
|---|---|
| CPU | Intel Atom E3826, dual-core 1.46GHz, with AES-NI (hardware encryption for VPN traffic) |
| RAM | 2GB DDR3L SODIMM (upgradeable) |
| Storage | 64GB SATA SSD |
| Network | 4x gigabit Ethernet (Intel i211) |
| Other | VGA console, USB 2.0, fanless |

## Why this box

- A small, fanless, purpose-built firewall appliance with multiple gigabit ports, cheap on the used market.
- Sophos's firmware ties you to their licensing; OPNsense is free, open source, and updated often.
- Its CPU supports AES-NI, which OPNsense uses to speed up VPN encryption.
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

## Known quirks of this model

- Rev. 1 and Rev. 2 units ship with a 32-bit (IA32) BIOS even though the CPU is 64-bit, which is why some installers have trouble booting on them.
- Firewall OS installers on this hardware are typically done from a USB stick, with the VGA port or a serial console used to watch the install.

## What's blocking deployment

Going in line takes down the internet for the whole house during the cutover, and once it's in, every device depends on it. Before that happens:

1. **UPS** so a power blip doesn't drop the firewall and everything behind it.
2. **Wi-Fi access point** behind OPNsense so roommates have Wi-Fi on the new network.

Full plan: [network/firewall-plan.md](../network/firewall-plan.md).
