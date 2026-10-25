# Tech Choice Comparisons

## 1. Short Slug Generation: Nanoid vs MD5 Hash Truncation vs Base62 Auto-Increment vs UUIDv4
| Criteria | Nanoid (Chosen) | MD5 / SHA-256 Truncation | Base62 Auto-Increment | UUIDv4 |
|---|---|---|---|---|
| Slug Length | 7 characters | 7-8 characters | Variable (1 to 6 chars) | 36 characters (Too long) |
| Collision Risk | Negligible ($64^7$ space) | High after truncation | Zero (Monotonic ID) | Zero |
| Information Leakage | None (cryptographically random) | None | High (Competitor counts) | None |
| Coordination Overhead | Zero (Distributed) | Zero | Requires centralized sequence | Zero |

**Why Chosen**: Nanoid provides collision resistance, zero coordination overhead, and complete privacy without exposing total business volume through sequential IDs.

## 2. Redirection Status: HTTP 302 Found vs HTTP 301 Moved Permanently
| Criteria | HTTP 302 (Chosen) | HTTP 301 |
|---|---|---|
| Browser Caching | No caching (requests hit server every time) | Cached aggressively by browser |
| Analytics Accuracy | 100% accurate per-click tracking | Drops drastically after first visit |
| Server Load | Handles every click event | Zero load on repeated clicks |

**Why Chosen**: URL shorteners rely heavily on accurate telemetry and analytics for creators; HTTP 301 completely undermines this capability.
