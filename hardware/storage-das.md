# External Storage (DAS)

## Setup

- **Enclosure:** CENMATE 2-bay USB 3.0 DAS (no RAID)
- **Drives:** 2x ~4TB
- **Purpose:** Media library for Jellyfin
- **Mount:** Drive mounted on the host at `/mnt/media`, bind-mounted into the Jellyfin container

## Problems Encountered

### USB disconnects
Drives intermittently disconnected. Disabling UAS via a kernel parameter helped:

```
usb-storage.quirks=<VID>:<PID>:u
```

Disconnects continued even after a physical reseat, so the enclosure remains under evaluation.

### Drive failure
The second drive (WD RE4, WD4000FYYZ) failed with hardware-level errors: Read Capacity failures and unreadable identity/SMART data, despite SMART reportedly reading clean earlier. Pursuing a replacement.

## Takeaway
USB DAS is a budget option but not a reliable long-term foundation. See [roadmap](../roadmap.md).
