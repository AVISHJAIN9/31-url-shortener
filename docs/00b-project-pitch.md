# Project Pitch: Distributed URL Shortener Engine

## 30-Second Elevator Pitch
"I built a high-performance URL shortening and telemetry platform using Express 5, MongoDB, React 19, and Redux Toolkit. It generates collision-resistant 7-character Nanoid slugs and vanity aliases, routing redirects via atomic click-tracking updates in MongoDB with zero race conditions. On the frontend, it uses TanStack Query for optimistic cache invalidation and TanStack Router for type-safe navigation, backed by an enterprise DAO pattern on the server that handles high concurrent redirect traffic effortlessly."

## 2-Minute Comprehensive Pitch
"Link shortening appears deceptively simple on the surface, but building a production-grade system requires solving critical distributed systems challenges: collision-free slug generation, atomic analytics tracking under viral click storms, and sub-millisecond redirect latencies.

To address these demands, I architected this full-stack platform using Express 5 and modern ES modules. The backend implements a strict layered architecture separating routing, business logic in services, and data persistence via the Data Access Object pattern. When generating short links, the system leverages Nanoid with a 64-character URL-friendly alphabet across 7 characters, providing over 4.3 trillion unique combinations with negligible collision risk.

For link resolution, the service executes an atomic `findOneAndUpdate` operation with `$inc: { clicks: 1 }` against a unique B-Tree indexed field, ensuring click counts remain mathematically accurate even during concurrent traffic surges. On the frontend, I utilized React 19 paired with Redux Toolkit for synchronous client credentials and TanStack Query for managing server-state caching and background revalidation. 

Security is integrated at every hop: passwords use salted bcrypt hashing, sessions are managed via httpOnly JWT cookies to prevent cross-site scripting exposure, and custom conflict error handlers gracefully catch vanity slug collisions. It is an architecture designed for high throughput, operational simplicity, and seamless horizontal scaling."
