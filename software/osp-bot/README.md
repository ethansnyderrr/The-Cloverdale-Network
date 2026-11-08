# OSP Bot

**Container:** LXC 106 (`osp-bot`), Debian, 1 core / 1GB / 8GB
**Status:** Always on

Runs the paper-trading bot and supporting jobs for **Pulse OSP**, a student investing team. The code lives in the team's **private repository**, so none of it is published here. This page covers how it's hosted.

## What runs on it

| Unit | Type | What it does |
|---|---|---|
| `osp-bot.service` | Service | The paper-trading bot. Trades a paper (simulated-money) account during market hours. No real money. |
| `osp-dashboard.timer` | Timer | Rebuilds the team's internal dashboard from the repo and bot data, then deploys it. Hourly at :05 from 13:05 to 22:05 UTC on weekdays (the US market day), plus once nightly. |
| `osp-health.timer` | Timer | Regular health check on the bot. |
| `osp-logs.timer` | Timer | Pushes the day's bot logs back to the team repo at 4:30 PM Eastern on weekdays, after the close. |

All timers use `Persistent=true`, so a run missed while the box was off happens as soon as it's back.

## Why it's here

- The bot needs to be up for the whole market day, every weekday. The homelab is already on 24/7, so a 1-core, 1GB container costs almost nothing.
- The dashboard timer replaced a GitHub Actions schedule, which keeps the deploy next to the bot's data.
- One container for one job: it can be restarted or rebuilt without touching anything else on the server.

## Secrets

Broker paper-account keys and deploy tokens live in an environment file inside the container only and are never committed anywhere.
