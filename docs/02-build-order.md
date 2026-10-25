# Step-by-Step Build Order

## Rebuilding the URL Shortener Engine from Scratch

### Phase 1: Express 5 Foundation & Database Connection
1. Initialize modern ES module project (`"type": "module"` in `backend/package.json`).
2. Install `express` 5.1.0, `mongoose` 8.1.0, `nanoid` 5.1.5, `dotenv`, `cors`, `cookie-parser`.
3. Create `backend/src/config/monogo.config.js` with auto-reconnect listeners.
4. Setup `backend/app.js` with middleware chain and centralized error handler.

### Phase 2: Schema Design & Data Access Object (DAO) Layer
1. Build `backend/src/models/short_url.model.js` with unique compound index on `short_url`.
2. Build `backend/src/models/user.model.js` with email uniqueness and bcrypt password hashing.
3. Implement `backend/src/dao/short_url.js` encapsulating `saveShortUrl`, `getShortUrl`, and atomic click increments.

### Phase 3: Service Layer & Nanoid Logic
1. Implement `backend/src/services/short_url.service.js` with Nanoid 7-char generation.
2. Add custom slug conflict detection and reserved path filtering.

### Phase 4: Controllers & Redirection Handlers
1. Build `short_url.controller.js` for `/api/create` and `/:id` HTTP 302 redirection.
2. Build `auth.controller.js` and `user.controller.js`.
3. Wire route modules in `backend/src/routes/`.

### Phase 5: React 19 Frontend & State Management
1. Initialize Vite project with React 19 and Tailwind CSS v4.
2. Install `@reduxjs/toolkit`, `react-redux`, `@tanstack/react-query`, `@tanstack/react-router`.
3. Configure Axios client with `withCredentials: true`.
4. Build `ShortenForm`, `UrlTable`, and `AnalyticsModal` components.
