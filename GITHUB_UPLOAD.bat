@echo off
REM MoJoX Earn - GitHub Upload Script
REM This script automates the GitHub upload process

echo.
echo =========================================
echo    MoJoX Earn - GitHub Upload Script
echo =========================================
echo.

REM Check if Git is installed
git --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Git is not installed!
    echo Please download and install Git from: https://git-scm.com/download/win
    pause
    exit /b 1
)

echo Step 1: Enter your GitHub username
set /p username="GitHub Username: "

echo.
echo Step 2: Enter your repository name
echo (Press Enter for 'ubrazil')
set /p repo="Repository Name (default: ubrazil): "
if "%repo%"=="" set repo=ubrazil

echo.
echo Step 3: Choose repository visibility
echo 1. Public (Recommended - better for SEO)
echo 2. Private
set /p visibility="Choice (1 or 2): "

echo.
echo =========================================
echo Preparing GitHub upload...
echo =========================================
echo.

echo Your repository URL will be:
echo https://github.com/%username%/%repo%

echo.
echo Important Instructions:
echo.
echo 1. Go to https://github.com/new
echo 2. Create a new repository with these settings:
echo    - Repository name: %repo%
echo    - Visibility: Public
echo    - Initialize: NO (don't add README)
echo.
echo 3. Copy this command and paste in PowerShell:
echo.
echo     git remote add origin https://github.com/%username%/%repo%.git
echo     git branch -M main
echo     git push -u origin main
echo.
echo 4. For authentication, you'll need:
echo    - Generate Personal Access Token at:
echo      https://github.com/settings/tokens
echo    - Use token as password when prompted
echo.
echo Press any key to continue...
pause

cd /d "C:\Users\Mujahid Islam\Desktop\Prjct-8-25\Ubrazil_1"

REM Display current Git status
echo.
echo Current Git Status:
echo.
git status

echo.
echo =========================================
echo Ready to push to GitHub!
echo =========================================
echo.

pause
