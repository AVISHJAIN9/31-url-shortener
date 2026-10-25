# Step 0 Pre-Check: Project Type Detection

## Detected Project Type
**Primary Type**: Full-Stack Distributed Systems & URL Shortening Service (Express 5 + MongoDB / Mongoose + React 19 + Redux Toolkit + TanStack Query & Router)
**Sub-Category**: High-Throughput Redirection Engine, Base62 / Nanoid Cryptographic Slugs, Atomic Analytics Tracking, Layered DAO Architecture.

## Evidence
- **Backend Core**: Express 5.1.0 (`backend/package.json`), Mongoose 8.1.0, `nanoid` 5.1.5, `jsonwebtoken` 9.0.2, `bcryptjs` 3.0.2, `cookie-parser` 1.4.7.
- **Frontend Core**: React 19.1.0, Vite 6.3.5, `@reduxjs/toolkit` 2.8.1, `react-redux` 9.2.0, `@tanstack/react-query` 5.75.5, `@tanstack/react-router` 1.120.3, Tailwind CSS v4.1.5 (`frontend/package.json`).
- **Architectural Pattern**: Enterprise Data Access Object (DAO) pattern (`backend/src/dao/short_url.js`), decoupled Service layer (`backend/src/services/`), and custom Express 5 async error handling (`backend/src/utils/errorHandler.js`).
- **Database Schema**: Indexed BSON collection `shortUrls` (`backend/src/models/short_url.model.js`) with unique compound indexes and atomic `$inc` click counters.

## Documentation Track
- **Full Stack / High-Throughput Systems Track**: Detailed coverage of URL hashing mathematics, collision probabilities, atomic counter semantics, HTTP 301 vs 302 redirection trade-offs, TanStack server cache invalidation, and horizontal scale-out.
