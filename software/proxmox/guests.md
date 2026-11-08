# Creating the Guests

> **Reconstructed** reference, rebuilt from each guest's current `pct config` / `qm config`. Template filenames change with each release, so check yours with `pveam list local` and substitute.

All containers use `local-lvm` storage, are unprivileged, and sit on the default `vmbr0` bridge.

```bash
# Download templates (check `pveam available` for current names)
pveam update
pveam download local debian-13-standard_<version>_amd64.tar.zst
pveam download local ubuntu-<version>-standard_<version>_amd64.tar.zst

# 101 jellyfin (Ubuntu) - media library bind-mounted from the host
pct create 101 local:vztmpl/ubuntu-<version>-standard_<version>_amd64.tar.zst \
  --hostname jellyfin --cores 2 --memory 2048 --rootfs local-lvm:40 \
  --unprivileged 1 --features nesting=1,keyctl=1 \
  --net0 name=eth0,bridge=vmbr0,ip=dhcp
pct set 101 -mp0 /mnt/media,mp=/mnt/media

# 102 crafty-controller
pct create 102 local:vztmpl/debian-13-standard_<version>_amd64.tar.zst \
  --hostname crafty-controller --cores 2 --memory 4096 --rootfs local-lvm:16 \
  --unprivileged 1 --features nesting=1,keyctl=1 \
  --net0 name=eth0,bridge=vmbr0,ip=dhcp

# 103 ai-chat
pct create 103 local:vztmpl/debian-13-standard_<version>_amd64.tar.zst \
  --hostname ai-chat --cores 4 --memory 12288 --rootfs local-lvm:20 \
  --unprivileged 1 --features nesting=1 \
  --net0 name=eth0,bridge=vmbr0,ip=dhcp

# 104 mc-broadcast (nesting needed for Docker)
pct create 104 local:vztmpl/debian-13-standard_<version>_amd64.tar.zst \
  --hostname mc-broadcast --cores 2 --memory 2048 --rootfs local-lvm:8 \
  --unprivileged 1 --features nesting=1 \
  --net0 name=eth0,bridge=vmbr0,ip=dhcp

# 105 scoreboard
pct create 105 local:vztmpl/debian-13-standard_<version>_amd64.tar.zst \
  --hostname scoreboard --cores 1 --memory 512 --rootfs local-lvm:4 \
  --unprivileged 1 --features nesting=1 \
  --net0 name=eth0,bridge=vmbr0,ip=dhcp

# 106 osp-bot
pct create 106 local:vztmpl/debian-13-standard_<version>_amd64.tar.zst \
  --hostname osp-bot --cores 1 --memory 1024 --rootfs local-lvm:8 \
  --unprivileged 1 --features nesting=1 \
  --net0 name=eth0,bridge=vmbr0,ip=dhcp

# 107 layer-one
pct create 107 local:vztmpl/debian-13-standard_<version>_amd64.tar.zst \
  --hostname layer-one --cores 2 --memory 2048 --rootfs local-lvm:16 \
  --unprivileged 1 --features nesting=1 \
  --net0 name=eth0,bridge=vmbr0,ip=dhcp
```

Several guests use DHCP reservations / static addresses on the LAN; those aren't published here.

## Windows 11 VM (100)

Created in the web UI: 2 cores, 1 socket, 8GB RAM, 64GB disk on `local-lvm` (`scsi0`, `discard=on`, `iothread=1`), OS type `win11`.

## Day-to-day

```bash
pct list; qm list          # what's running
pct start 103              # spin up an on-demand guest
pct stop 103               # and shut it back down
```
