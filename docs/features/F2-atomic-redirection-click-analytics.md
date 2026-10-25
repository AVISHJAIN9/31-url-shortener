# F2: Atomic Redirection & Real-Time Click Telemetry

## 1. Description & Redirection Mechanics
When a visitor accesses `http://localhost:3000/:id`, the server resolves the 7-character slug, increments the total click counter in an atomic operation, and immediately issues an HTTP 302 Found redirect to the destination URL.

## 2. Sequence Diagram
```mermaid
sequenceDiagram
    participant Visitor
    participant App as Express app.js
    participant Ctrl as short_url.controller.js
    participant DAO as short_url.dao.js
    participant Mongo as MongoDB Atlas

    Visitor->>App: GET /:id (e.g., /abc1234)
    App->>Ctrl: redirectFromShortUrl(req, res)
    Ctrl->>DAO: getShortUrl("abc1234")
    DAO->>Mongo: findOneAndUpdate({ short_url: "abc1234" }, { $inc: { clicks: 1 } })
    Mongo-->>DAO: Updated Document (full_url, clicks)
    DAO-->>Ctrl: Return destination URL
    Ctrl-->>Visitor: HTTP 302 Found (Location: full_url)
    Visitor->>Visitor: Browser navigates to destination
```

## 3. HTTP 301 vs 302 Trade-Off
- **HTTP 301 (Moved Permanently)**: Browsers cache the destination indefinitely. While this reduces server load, subsequent visits bypass the server entirely, making accurate click analytics impossible.
- **HTTP 302 (Found / Temporary)**: Browsers request the redirection endpoint every time, guaranteeing 100% accurate click analytics.

## 4. Say It Out Loud
"For the redirection pipeline, I chose HTTP 302 temporary redirects over HTTP 301 permanent redirects. While 301 allows browser-level caching, it causes subsequent clicks to bypass our server, which destroys our ability to track analytics. In the database layer, I used MongoDB's atomic `findOneAndUpdate` with the `$inc` operator. This guarantees that even if thousands of users click the link simultaneously during a viral campaign, the click count remains mathematically exact without requiring pessimistic distributed locks."
