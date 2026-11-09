# From CGNAT to a Public IP

## Problem
AT&T Internet Air placed the connection behind carrier-grade NAT. No public IP meant no port forwarding, so outside players couldn't reach the Minecraft server.

## Workaround
Used a **playit.gg** tunnel to expose the Bedrock server externally without port forwarding.

## Resolution
Requested a public IPv4 through the AT&T Internet Air gateway portal. It was granted, which enabled port forwarding for self-hosted services.

## What I learned
- **How CGNAT works.** The ISP shares one public IPv4 address across many customers, so the gateway's "WAN IP" isn't actually reachable from the internet. Port forwarding on the gateway can't fix that, because the blocking NAT layer is on the ISP's side.
- **How to confirm it.** If the WAN IP the gateway reports doesn't match the address websites see, or falls in the `100.64.0.0/10` shared range, you're behind CGNAT.
- **Tunnels are a valid workaround.** A tunnel like playit.gg makes an outbound connection to a relay, so traffic can come back in without any inbound ports. The cost is an extra hop and depending on a third-party service.
- **Ask before engineering around it.** The real fix was simply requesting a public IP from the ISP.
- **A public IP means exposure.** Once ports are forwarded, the service is reachable by anyone, which is part of why a dedicated firewall is next on the roadmap.
