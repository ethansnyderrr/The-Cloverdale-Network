# Lessons Learned

Format: Problem → Investigation → Outcome.

## 1. No display on a used EliteDesk
- **Problem:** No video output on first boot.
- **Outcome:** Faulty/unseated RAM. Reseated and it booted. Lesson: on used hardware, check that components are seated before assuming something's dead.

## 2. SSD not consistently detected
- **Problem:** Crucial SATA SSD in a tool-less caddy dropped in and out.
- **Outcome:** Worked through during bring-up; the SSD is now the Proxmox boot drive.

## 3. Pi-hole DHCP
- **Problem:** Couldn't get Pi-hole DHCP working alongside the ISP gateway.
- **Outcome:** Removed the container and deferred until OPNsense is in place, so DHCP can live on the firewall instead of competing with the gateway.

## 4. Behind CGNAT
- **Problem:** No public IP, so no port forwarding.
- **Outcome:** playit.gg tunnel, then a public IPv4 from AT&T. See [write-up](../network/cgnat-to-public-ip.md).

## 5. MCXboxBroadcast couldn't reach the server
- **Problem:** Docker container in bridge mode couldn't reach Crafty on the LAN.
- **Outcome:** Switched to host network mode.

## 6. USB DAS disconnects
- **Problem:** Drives intermittently disconnected.
- **Investigation:** Disabled UAS via `usb-storage.quirks`, physically reseated drives.
- **Outcome:** Improved but not resolved. Enclosure still under evaluation.

## 7. Drive failure despite clean SMART
- **Problem:** WD RE4 4TB stopped responding.
- **Investigation:** Read Capacity failures, identity/SMART data unreadable.
- **Outcome:** Confirmed hardware failure; pursuing replacement. Lesson: a clean SMART report on a used drive isn't a guarantee.
