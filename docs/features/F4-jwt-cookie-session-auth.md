# F4: Secure Cookie-Based JWT Authentication

## 1. Description & Security Posture
The platform provides user registration, credential verification, and automated session attachment (`backend/src/utils/attachUser.js`). JWT tokens are stored inside httpOnly cookies to mitigate Cross-Site Scripting (XSS) risks.

## 2. Token Flow
```mermaid
sequenceDiagram
    participant User
    participant AuthCtrl as auth.controller.js
    participant Cookie as httpOnly Cookie
    participant Middleware as attachUser.js

    User->>AuthCtrl: POST /api/auth/login (email, password)
    AuthCtrl->>AuthCtrl: Verify bcrypt hash
    AuthCtrl->>AuthCtrl: Sign JWT (userId, 7-day expiry)
    AuthCtrl-->>Cookie: Set-Cookie: token=JWT; HttpOnly; SameSite=Lax
    User->>Middleware: Subsequent request with Cookie
    Middleware->>Middleware: jwt.verify(cookie.token)
    Middleware->>Middleware: Attach user context to req.user
```

## 3. Say It Out Loud
"I designed the authentication system using stateless JSON Web Tokens stored in httpOnly, SameSite cookies rather than browser localStorage. This eliminates the risk of token theft via Cross-Site Scripting attacks. On every incoming request, a lightweight `attachUser` middleware inspects the cookie jar, decodes the token if present, and attaches the authenticated user object to the request context. If no token is provided, the request continues as an anonymous visitor, allowing guest users to generate links while reserving analytics dashboards for registered members."
