# Engineering Quality, Testing & Operations

## Quality Standards
- **Framework**: Express 5 with native async promise rejection handling (`tryCatchWrapper.js`).
- **Code Separation**: Dedicated DAO layer ensures database queries are never scattered across controller files.
- **Environment Parity**: Zero hardcoded credentials; all configurations injected via `.env` files.
