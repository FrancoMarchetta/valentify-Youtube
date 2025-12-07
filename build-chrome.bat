@echo off
echo ========================================
echo  Creating Chrome Web Store Package
echo ========================================
echo.

REM Set version from manifest.json
set VERSION=1.9.0
set OUTPUT_FILE=youtube-mrbeastify-v%VERSION%.zip

REM Delete old zip if exists
if exist %OUTPUT_FILE% (
    echo Removing old package...
    del %OUTPUT_FILE%
)

echo Creating package: %OUTPUT_FILE%
echo.

REM Create zip with all necessary files
powershell -Command "Compress-Archive -Path manifest.json,icons,images,mrbeastify.js,settings.html,settings.js,icon.png,PRIVACY_POLICY.md,README.md -DestinationPath %OUTPUT_FILE% -Force"

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ========================================
    echo  SUCCESS! Package created successfully
    echo ========================================
    echo.
    echo File: %OUTPUT_FILE%
    echo.
    echo Next steps:
    echo 1. Go to Chrome Web Store Developer Console
    echo 2. Click "New Item"
    echo 3. Upload %OUTPUT_FILE%
    echo 4. Follow the guide in CHROME_WEB_STORE.md
    echo.
) else (
    echo.
    echo ========================================
    echo  ERROR! Package creation failed
    echo ========================================
    echo.
)

pause
