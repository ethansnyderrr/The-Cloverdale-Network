# Proxmox VE

## Install
- Version: Proxmox VE 9.2
- Flashed to USB with Rufus in **DD mode**

## Post-install
- Resolved initial network misconfiguration
- Switched to the no-subscription repository
- Added `usb-storage.quirks` kernel parameter for the DAS (see [storage notes](../../hardware/storage-das.md))

## Guests
See [guests.md](guests.md) for how every container and the VM are created.

## Why Proxmox
- **Free and open source.** The full product works without a subscription; the no-subscription repository provides updates.
- **Containers and VMs in one place.** Lightweight LXC containers for Linux services, plus full KVM virtual machines (like the Windows 11 VM) when something needs its own OS.
- **Web UI.** Every guest can be created, started, stopped and monitored from a browser, with a shell for anything the UI doesn't cover.
- **Snapshots and backups.** A guest can be snapshotted before a risky change and rolled back if it breaks, which makes experimenting safe.
- **Industry relevance.** It's built on Debian and KVM and is used by real businesses, so the skills carry over to enterprise virtualization.
