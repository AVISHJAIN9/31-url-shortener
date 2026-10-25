---
layout: home

hero:
  name: "URL Shortener Engine"
  text: "High-Throughput Link Shortening & Telemetry"
  tagline: "Express 5 • MongoDB • Nanoid • React 19 • Redux Toolkit • TanStack Query"
  actions:
    - theme: brand
      text: Get Started
      link: /00a-project-analysis
    - theme: alt
      text: System Design
      link: /system-design/README

features:
  - title: Cryptographic Slug Generation
    details: High-entropy 7-character Nanoid slugs yielding over 4.3 trillion collision-resistant combinations.
  - title: Atomic Click Telemetry
    details: Sub-millisecond HTTP 302 redirection with MongoDB $inc atomic counters eliminating race conditions.
  - title: Dual State Architecture
    details: Clean separation of synchronous client UI state in Redux Toolkit and asynchronous server caching in TanStack Query.
---
