# Security Audit & Risk Analysis

## Threat Modeling & Mitigations
- **Phishing & Malicious Destination URLs**: Attackers often use shorteners to disguise phishing domains. *Mitigation*: Integrate Google Safe Browsing API or VirusTotal lookups before saving long URLs.
- **Cross-Site Scripting (XSS)**: Handled by setting `httpOnly: true` and `SameSite: Lax` on authentication cookies.
- **Route Hijacking via Vanity Slugs**: Attackers trying to claim reserved endpoints (e.g., `/:id` matching `/api` or `/admin`). *Mitigation*: Strict reserved-route blacklist checked before vanity slug insertion.
- **Brute Force Vanity Squatting**: Handled via rate-limiting middleware on `/api/create`.
