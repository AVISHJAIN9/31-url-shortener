# Say It Out Loud: Comprehensive Spoken Scripts

## 30-Second Elevator Pitch
"I built a high-performance URL shortening and telemetry platform using Express 5, MongoDB, React 19, and Redux Toolkit. It generates collision-resistant 7-character Nanoid slugs and vanity aliases, routing redirects via atomic click-tracking updates in MongoDB with zero race conditions. On the frontend, it uses TanStack Query for optimistic cache invalidation and TanStack Router for type-safe navigation, backed by an enterprise DAO pattern on the server that handles high concurrent redirect traffic effortlessly."

## Feature Scripts
- **F1 (Nanoid Slug Generation)**: "I implemented the core link shortening engine using Nanoid with a customized 7-character alphabet..."
- **F2 (Atomic Redirection)**: "For the redirection pipeline, I chose HTTP 302 temporary redirects over HTTP 301 permanent redirects..."
- **F3 (Custom Vanity Aliases)**: "To give users personalized branding, I implemented custom vanity aliases..."
- **F4 (JWT Cookie Auth)**: "I designed the authentication system using stateless JSON Web Tokens stored in httpOnly, SameSite cookies..."
- **F5 (TanStack & Redux)**: "On the frontend, I decoupled client UI state from asynchronous server state..."
