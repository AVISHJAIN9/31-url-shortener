# Modern Full-Stack MERN URL Shortener

A high-performance URL shortener application built with React 19, Redux Toolkit, TanStack Router, Tailwind CSS v4, Express, and MongoDB.

---

## 📁 Clean Repository Structure

```
37-url-shortner/
├── backend/                  # Express + MongoDB API Server
│   ├── src/
│   │   ├── config/           # MongoDB and Cookie Configuration
│   │   ├── controller/       # Auth, User, and URL Redirection Controllers
│   │   ├── dao/              # Database Access Layer
│   │   ├── middleware/       # JWT Auth Middleware
│   │   ├── models/           # User & ShortURL Mongoose Schemas
│   │   ├── routes/           # Express API Routes
│   │   ├── services/         # Auth & ShortURL Business Logic
│   │   └── utils/            # Error Handlers, Helpers, and Request Wrappers
│   ├── .env.example          # Backend Environment Template
│   ├── app.js                # Server Entry Point (Port 3000)
│   └── package.json
├── frontend/                 # React 19 + Vite + Tailwind Client
│   ├── src/
│   │   ├── api/              # Axios API Calls (User, ShortURL)
│   │   ├── components/       # UrlForm, UserUrl, LoginForm, RegisterForm, NavBar
│   │   ├── pages/            # HomePage, DashboardPage, AuthPage
│   │   ├── routing/          # TanStack Router Configuration & Routes
│   │   ├── store/            # Redux Toolkit Store & Auth Slices
│   │   └── utils/            # Axios Instance with Credentials & Helpers
│   ├── .env.example          # Frontend Environment Template
│   ├── index.html
│   ├── package.json
│   └── vite.config.js        # Vite Config (Port 5173)
├── install-all.bat           # One-Click Dependency Installer
├── start-all.bat             # One-Click Dual Server Launcher
├── .gitignore                # Root Gitignore
├── package.json              # Root Workspace Config
└── README.md
```

---

## 🚀 Quick Start Guide

### 1. Prerequisites
- **Node.js**: v18+ or v20+
- **MongoDB**: Running locally on `mongodb://127.0.0.1:27017` or MongoDB Atlas URI

### 2. Install Dependencies
Double-click `install-all.bat` or run:
```bash
# Backend
cd backend && npm install --legacy-peer-deps

# Frontend
cd ../frontend && npm install --legacy-peer-deps
```

### 3. Environment Setup

#### Backend (`backend/.env`)
Copy `backend/.env.example` to `backend/.env`:
```env
PORT=3000
MONGO_URI=mongodb://127.0.0.1:27017/url_shortner
FRONTEND_URL=http://localhost:5173
JWT_SECRET=supersecret_jwt_key_replace_in_production
NODE_ENV=development
```

#### Frontend (`frontend/.env`)
Copy `frontend/.env.example` to `frontend/.env`:
```env
VITE_API_URL=http://localhost:3000
```

### 4. Running the Application
Double-click `start-all.bat` or run separately:

```bash
# Terminal 1 - Backend
cd backend
npm start

# Terminal 2 - Frontend
cd frontend
npm run dev
```

- **Frontend App**: `http://localhost:5173`
- **Backend API**: `http://localhost:3000`
- **Short URL Redirection**: `http://localhost:3000/:id`

---

## 🛠️ Cleanups & Fixes Applied
1. **Removed Nested & Copy Tag Directories**: Flattened the deeply nested `url shortner/URL_SHORTNER-master/` path into clean `backend/` and `frontend/` top-level folders.
2. **Fixed Deprecated Mongoose Options**: Removed deprecated `useNewUrlParser` and `useUnifiedTopology` options from MongoDB connection config and added fallback connection string.
3. **Enhanced Environment Variable Handling**: Standardized `dotenv.config()` and added configurable `PORT` and `FRONTEND_URL` support.
4. **Added Dynamic API Base URL**: Added `import.meta.env.VITE_API_URL` fallback support in `axiosInstance.js`.
5. **Removed OS Junk**: Deleted macOS `.DS_Store` files and updated root `.gitignore`.
6. **Provided One-Click Automation**: Added `install-all.bat` and `start-all.bat` scripts.

---

## License & Attribution
- Original Repository Origin: `https://github.com/AVISHJAIN9/url-shortner`
- Licensed under the **ISC License**.
