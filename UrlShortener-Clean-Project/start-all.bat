@echo off
echo ========================================================
echo Starting URL Shortener Application...
echo ========================================================

start "URL Shortener Backend (Port 3000)" cmd /k "cd /d \"%~dp0backend\" && npm start"
start "URL Shortener Frontend (Port 5173)" cmd /k "cd /d \"%~dp0frontend\" && npm run dev"

echo.
echo Application is starting!
echo Backend API: http://localhost:3000
echo Frontend:    http://localhost:5173
echo.
pause
