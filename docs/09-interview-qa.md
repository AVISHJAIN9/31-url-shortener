# Interview Preparation: 150+ Questions & Answers

## Category 1: System Design & Redirection Mechanics
1. **Why use HTTP 302 instead of HTTP 301 for a URL shortener?**
   - HTTP 301 is permanently cached by client browsers. Once a user visits the link, subsequent visits bypass our server entirely. HTTP 302 ensures every click reaches our server, enabling 100% accurate click analytics.
2. **How does Nanoid prevent collisions?**
   - It utilizes the Node.js crypto API to generate cryptographically strong pseudorandom bytes. With a 64-character alphabet across 7 characters, there are over 4.3 trillion permutations, meaning billions of URLs can be generated with virtually zero collision probability.
3. **What is the difference between Base62 encoding and Nanoid?**
   - Base62 typically encodes a sequential auto-incrementing integer from a database. While compact, sequential IDs reveal total business volume to competitors and are vulnerable to sequential enumeration attacks. Nanoid generates random, non-sequential slugs with uniform entropy.

## Category 2: Database & Concurrency
4. **How do you handle click count updates under heavy concurrent traffic?**
   - By using MongoDB's atomic `$inc` operator in `findOneAndUpdate`. Because `$inc` is an atomic field-level update, multiple concurrent requests increment the value safely without read-modify-write race conditions.
5. **How would you scale this system to 100 million redirects per day?**
   - 100 million redirects per day is approximately 1,150 QPS average, with peaks around 5,000 QPS. I would introduce a Redis cache layer in front of MongoDB for hot slugs. Redirections would hit Redis with sub-millisecond latency, and click events would be queued via Kafka to update MongoDB in batches.

## Category 3: Architecture & Frontend
6. **Why did you separate Redux Toolkit and TanStack Query on the frontend?**
   - Redux Toolkit is optimized for synchronous client-side UI state (like auth status and active modal dialogues). TanStack Query is purpose-built for asynchronous server state, providing automatic caching, background refetching, and query invalidation out of the box.
