# Project Map: Distributed URL Shortener Engine

## Folder Tree
```
37-url-shortner/
├── UrlShortener-Clean-Project/
│   ├── backend/
│   │   ├── src/
│   │   │   ├── config/
│   │   │   │   └── monogo.config.js      # Mongoose connection & event listeners
│   │   │   ├── controller/
│   │   │   │   ├── auth.controller.js    # Register, login, cookie issuance
│   │   │   │   ├── short_url.controller.js # Link generation & 302 redirection
│   │   │   │   └── user.controller.js    # User URL retrieval & history
│   │   │   ├── dao/
│   │   │   │   └── short_url.js          # Direct Mongoose queries & atomic updates
│   │   │   ├── middleware/
│   │   │   │   └── auth.middleware.js    # Token extraction & role guards
│   │   │   ├── models/
│   │   │   │   ├── short_url.model.js    # shortUrl schema with indexed short_url
│   │   │   │   └── user.model.js         # User credentials schema
│   │   │   ├── routes/
│   │   │   │   ├── auth.routes.js        # /api/auth routes
│   │   │   │   ├── short_url.route.js    # /api/create routes
│   │   │   │   └── user.routes.js        # /api/user routes
│   │   │   ├── services/
│   │   │   │   └── short_url.service.js  # Nanoid generation & business logic
│   │   │   └── utils/
│   │   │       ├── attachUser.js         # Cookie-based req.user attachment
│   │   │       ├── errorHandler.js       # Centralized HTTP error handling
│   │   │       ├── helper.js             # Nanoid string generation helper
│   │   │       └── tryCatchWrapper.js    # Async route wrapper for Express 5
│   │   ├── app.js                        # Express server entry & route mounting
│   │   └── package.json                  # Express 5.1.0, Mongoose 8.1.0
│   ├── frontend/
│   │   ├── src/
│   │   │   ├── api/
│   │   │   │   └── urlApi.js             # Axios client with credentials
│   │   │   ├── components/               # UI components (forms, tables, modal)
│   │   │   ├── pages/                    # Home, Login, Register
│   │   │   ├── routing/                  # TanStack Router configuration
│   │   │   ├── store/                    # Redux Toolkit root store & slices
│   │   │   ├── App.jsx                   # Root layout wrapper
│   │   │   └── main.jsx                  # React 19 mount point
│   │   └── package.json                  # React 19, Redux Toolkit, TanStack Query
│   └── package.json                      # Workspace scripts
└── docs/                                 # VitePress documentation portal
```

## Dependencies & Rationale
| Package | Version | Purpose |
|---|---|---|
| `express` | 5.1.0 | Fast, minimalist web framework with native Promise error handling |
| `mongoose` | 8.1.0 | ODM for MongoDB schema validation, compound indexing, and casting |
| `nanoid` | 5.1.5 | High-entropy, URL-safe random string generator for short slugs |
| `jsonwebtoken` | 9.0.2 | Cryptographic stateless JWT token issuance and signature verification |
| `bcryptjs` | 3.0.2 | Adaptive CPU work-factor password hashing |
| `cookie-parser` | 1.4.7 | Extracts JWT tokens from HTTP request cookies |
| `react` | 19.1.0 | Modern declarative UI component library |
| `@reduxjs/toolkit` | 2.8.1 | Predictable global client state container |
| `@tanstack/react-query` | 5.75.5 | Powerful asynchronous server-state fetching, caching, and updating |
| `@tanstack/react-router` | 1.120.3 | Modern, fully type-safe client router |
| `tailwindcss` | 4.1.5 | High-performance atomic utility CSS engine |
