# Layer One

**Container:** LXC 107 (`layer-one`), Debian 13, 2 cores / 2GB / 16GB
**Status:** Running
**Code:** [ethansnyderrr/Layer-One](https://github.com/ethansnyderrr/Layer-One)

Layer One is my MIS 430 team project (Fall 2026), where I'm lead developer. It's a guide for UA University Libraries' 3D printing service that gets first-timers to a finished print: a student describes what they need in plain words, and Layer One generates a printable `.stl` file, shows it in a spinnable 3D viewer, checks that it's printable, and explains how to submit it, what it costs and when to pick it up.

## How it's hosted

- The app is a Python web service listening on port **8000** inside the container.
- It calls **Claude's API** to turn the description into a part. The API key lives in a local `.env` in the container and is never committed.
- Prototyped here on the homelab rather than on paid cloud hosting.

## Why it's here

Running it on the homelab gives the team a live demo for testing and the final presentation without paying for hosting. It sits in its own container so a bad build can't affect anything else.

See the Layer-One repo for the code and setup.
