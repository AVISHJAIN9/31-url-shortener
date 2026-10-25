# F5: TanStack Query Server State & Redux Dashboard

## 1. Description & Frontend Architecture
The user interface pairs Redux Toolkit for synchronous client state (user authentication, active modals) with TanStack Query for asynchronous server state management (link history, click counters, mutation states).

## 2. State Management Split
| State Type | Library | Purpose |
|---|---|---|
| **Client UI State** | Redux Toolkit (`@reduxjs/toolkit`) | Current user session, toast alerts, theme preferences |
| **Server Cache State**| TanStack Query (`@tanstack/react-query`) | URL listings, click stats, optimistic mutations, refetching |

## 3. Say It Out Loud
"On the frontend, I decoupled client UI state from asynchronous server state. I used Redux Toolkit strictly for synchronous user credentials and UI modal toggles, while delegating all data fetching, caching, and background refetching to TanStack Query. When an author creates a new short link, TanStack Query immediately invalidates the 'userUrls' query key, triggering an instant background re-render without requiring manual state synchronization. This prevents stale analytics and ensures a responsive user experience."
