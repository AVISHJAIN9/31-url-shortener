# Feature Inventory: Distributed URL Shortener Engine

## Overview of Core Features
- **F1: Collision-Resistant Nanoid Slug Generation**: High-entropy 7-character Base62/URL-safe string generation with over 4.3 trillion unique permutations.
- **F2: Atomic Redirection & Real-Time Click Telemetry**: Sub-millisecond HTTP 302 redirection with atomic MongoDB `$inc` click counters that prevent race conditions.
- **F3: Custom Vanity Alias & Collision Detection**: Allows registered users to specify customized vanity slugs with database-enforced unique constraints (`11000` duplicate key handling).
- **F4: Secure Cookie-Based JWT Authentication**: Stateless identity verification using httpOnly cookies, password hashing with bcrypt, and contextual `req.user` injection.
- **F5: TanStack Query Server State & Redux Dashboard**: Real-time URL management table with optimistic cache updates, instant clipboard copying, and user history tracking.

## Say It Out Loud (Feature Summary)
"When presenting this project, I highlight the balance between speed and data integrity. On one hand, redirection must be blisteringly fast—which I achieve through single-hop indexed database lookups and HTTP 302 redirects. On the other hand, analytics must be completely accurate, so I implemented atomic increments at the database layer rather than separate read-and-write passes that could cause race conditions under high concurrency."
