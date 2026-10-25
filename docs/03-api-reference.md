# API Reference: Distributed URL Shortener Engine

## Base URL: `http://localhost:3000`

| Method | Endpoint | Auth | Purpose | Status Codes |
|---|---|---|---|---|
| `GET` | `/:id` | No | Resolve short slug and issue 302 redirect | `302`, `404` |
| `POST` | `/api/create` | Optional | Generate short URL (anonymous or user-linked) | `200`, `400`, `409` |
| `POST` | `/api/auth/register` | No | Register new user account | `201`, `400`, `409` |
| `POST` | `/api/auth/login` | No | Authenticate user & issue httpOnly cookie | `200`, `401` |
| `POST` | `/api/auth/logout` | Yes | Clear auth cookie | `200` |
| `GET` | `/api/user/urls` | Yes | Retrieve all URLs created by authenticated user | `200`, `401` |
