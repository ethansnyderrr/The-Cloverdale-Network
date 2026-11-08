# Hardware

## Bill of Materials

> Used-market prices vary. eBay and Amazon links point to model searches rather than specific listings since listings expire.

| Component | Model | Specs / Notes | Paid | Where to Buy |
|---|---|---|---|---|
| Server | HP EliteDesk 800 G3 | Intel i5, 32GB RAM, 256GB SATA SSD | $70 | [eBay search](https://www.ebay.com/sch/i.html?_nkw=hp+elitedesk+800+g3) |
| Boot SSD | Crucial SATA SSD | 256GB, tool-less caddy | $TODO | TODO |
| External storage | CENMATE 2-bay USB 3.0 DAS | No RAID, 2x ~4TB drives (one failed, being returned) | ~$60 | [Amazon search](https://www.amazon.com/s?k=cenmate+2+bay+usb+3.0+hard+drive+enclosure) |
| Rack | GeeekPi 10" rack mount | Houses the full build | $120 | [Amazon search](https://www.amazon.com/s?k=geeekpi+10+inch+rack) |
| Display | GeeekPi 10" rack-mount LCD | HDMI + USB touchscreen, shows status dashboard | $100 | [Amazon search](https://www.amazon.com/s?k=geeekpi+10+inch+rack+mount+lcd+touch+screen) |
| Switch | SW8-25G-MGV2 | 8-port managed switch | $70 | [Amazon search](https://www.amazon.com/s?k=SW8-25G-MGV2) |
| Firewall | Sophos SG 105 Rev. 2 (used, eBay) | OPNsense installed, not yet in line | $TODO | [eBay search](https://www.ebay.com/sch/i.html?_nkw=sophos+sg+105+rev+2) |
| Scoreboard display | Fire TV Stick (2nd gen) | Kiosk client for the TV scoreboard | Already owned | — |

**Total spent:** ~$420 + firewall (excluding boot SSD)

## Planned

| Component | Model | Why |
|---|---|---|
| UPS | CyberPower EC650LCD | Keeps the firewall, switch and AP up through power blips; velcroed to the side of the rack |
| Wi-Fi access point | TBD (rectangular, router-style) | Wi-Fi behind OPNsense so roommates move onto the homelab network |

Both are needed before the firewall goes in line. See the [firewall cutover plan](../network/firewall-plan.md).

## Component Notes

- [EliteDesk 800 G3](elitedesk-800-g3.md)
- [Storage / DAS](storage-das.md)
- [Rack and display](rack-and-display.md)
- [Networking gear](networking-gear.md)
- [Sophos SG 105 firewall](sophos-sg105.md)

## Photos

Drop images in [`photos/`](photos/).
