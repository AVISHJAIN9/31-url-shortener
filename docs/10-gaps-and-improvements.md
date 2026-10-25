# Gaps & Engineering Roadmap

## Identified Gaps & Upgrades
1. **Redis Caching Tier**: Add Redis to cache frequently accessed slugs (`short_url:xyz -> full_url`) to offload 90% of read traffic from MongoDB.
2. **Malware & Phishing Scanning**: Integrate Google Web Risk API to asynchronously verify long URLs before shortening.
3. **Geo & Device Telemetry**: Parse the `User-Agent` and `CF-IPCountry` headers to store browser, OS, and country metrics for every click.
