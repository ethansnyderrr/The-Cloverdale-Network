# Windows 11 VM

**VM:** 100 (`Windows11VM`), 2 cores / 1 socket / 8GB RAM / 64GB disk
**Status:** Stopped (on demand)

A full Windows 11 install used as a **test box**: trying software, checking how something behaves on Windows, and practicing Windows admin without touching my own laptop.

## Config

- OS type `win11`
- Disk: 64GB on `local-lvm`, `scsi0` with `discard=on` (so freed space returns to the thin pool) and `iothread=1`

## Notes

It stays shut down most of the time. 8GB is a big share of the host's 32GB, and the EliteDesk's i5 doesn't leave much headroom for a daily-use Windows desktop, so I haven't found a practical full-time use for it on this hardware yet.
