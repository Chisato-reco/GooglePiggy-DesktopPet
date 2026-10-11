@echo off
setlocal
cd /d "%~dp0"

if exist "%~dp0source-launcher\run.py" (
  if defined GOOGLEPIGGY_PYTHON (
    start "" "%GOOGLEPIGGY_PYTHON%" "%~dp0source-launcher\run.py" %*
    exit /b 0
  )
  where pythonw >nul 2>nul
  if not errorlevel 1 (
    start "" pythonw "%~dp0source-launcher\run.py" %*
    exit /b 0
  )
  where pyw >nul 2>nul
  if not errorlevel 1 (
    start "" pyw -3 "%~dp0source-launcher\run.py" %*
    exit /b 0
  )
)

if exist "%~dp0pig_pet.exe" (
  start "" "%~dp0pig_pet.exe" %*
  exit /b 0
)

echo Python was not found. Install Python 3.11+ and the requirements, or set GOOGLEPIGGY_PYTHON.
pause
