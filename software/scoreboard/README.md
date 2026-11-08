# Scoreboard (TV Sports Stats Display)

**Container:** LXC 105 (`scoreboard`), Debian, 1 core / 512MB / 4GB
**Status:** Stopped until needed

A live sports stats board for the living-room TV.

## How it works

- The scoreboard is two files in `/opt/scoreboard`: a Python server (`scoreboard-server.py`) and the page it serves (`scoreboard.html`).
- systemd runs the server ([`scoreboard.service`](scoreboard.service)) and restarts it within 5 seconds if it ever crashes.
- A **Fire TV Stick (2nd gen)** acts as the display client: it opens the scoreboard's local URL full-screen like a kiosk.
- The Fire TV runs a **hub / launcher** page with tiles: the sports scoreboard, the movie library (Jellyfin), and the local AI chat.

## Design decisions

- **Split host / display.** Hosting the page on the server and using a cheap streaming stick as the screen keeps all the logic in one place, and the stick can be swapped without touching the app.
- **Horizontal, not vertical.** The original plan was a portrait (vertical) TV, but Roku OS can't rotate its output, so the layout went landscape.
- **Fire TV Stick instead of a Raspberry Pi.** Already owned, and it runs a full browser.
- **Moved off the Proxmox host** into its own LXC so it can be stopped, backed up and rebuilt independently.

## Setup

```bash
# inside CT 105
mkdir -p /opt/scoreboard
# copy scoreboard-server.py and scoreboard.html into /opt/scoreboard
install -m 644 scoreboard.service /etc/systemd/system/scoreboard.service
systemctl daemon-reload
systemctl enable --now scoreboard
```

The service file is the real one from the container. TODO: add `scoreboard-server.py` and `scoreboard.html` once they're checked for keys.

## Running it

```bash
pct start 105
# then open the hub on the Fire TV and pick the scoreboard tile
```
