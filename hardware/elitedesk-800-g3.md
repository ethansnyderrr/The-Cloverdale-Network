# HP EliteDesk 800 G3

The core of the build. Purchased used on eBay.

## Specs

| Item | Value |
|---|---|
| CPU | Intel Core i5 (TODO: exact model) |
| RAM | 32GB |
| Boot drive | 256GB Crucial SATA SSD |
| Expansion | Open M.2 2280 NVMe slot |
| Video out | HDMI → rack LCD |

## Bring-up Notes

**No display on first boot.** Traced to faulty/unseated RAM. Reseating resolved it.

**Intermittent SSD detection.** The Crucial SSD in the tool-less caddy was not consistently detected. TODO: document final fix.

## Expansion Plans

- Populate the M.2 2280 NVMe slot for faster VM/container storage
