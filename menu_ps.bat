@echo off
chcp 65001 >nul
title SWAT-CAS PowerShell Menu
mode con: cols=80 lines=30

:menu
cls
echo.
echo     ╔══════════════════════════════════════════════════════════════╗
echo     ║             █▀▀ █░█░█ ▄▀█ ▀█▀   █▀▀ ▄▀█ █▀                   ║
echo     ║             ▄▄█ ▀▄▀▄▀ █▀█ ░█░   █▄▄ █▀█ ▄█                   ║
echo     ╠══════════════════════════════════════════════════════════════╣
echo     ║                PowerShell Menu Launcher v1.1                 ║
echo     ║                   Creado por swat_h                          ║
echo     ╚══════════════════════════════════════════════════════════════╝
echo.
echo     ┌──────────────────────────────────────────────────────────────┐
echo     │                     [1] OPCIONES BÁSICAS                     │
echo     ├──────────────────────────────────────────────────────────────┤
echo     │  1. 🟢 PowerShell Normal                                     │
echo     │  2. 🔵 PowerShell como Administrador                         │
echo     │  3. 📂 PowerShell en Documents                               │
echo     │  4. 📥 PowerShell en Downloads                               │
echo     └──────────────────────────────────────────────────────────────┘
echo.
echo     ┌──────────────────────────────────────────────────────────────┐
echo     │                    [2] OPCIONES AVANZADAS                    │
echo     ├──────────────────────────────────────────────────────────────┤
echo     │  5. 🖥️  PowerShell en Escritorio                             │
echo     │  6. ✏️  PowerShell ISE (Editor)                              │
echo     │  7. 🌟 Terminal Windows                                      │
echo     │  8. ⚡ CMD como Administrador                                │
echo     └──────────────────────────────────────────────────────────────┘
echo.
echo     ┌──────────────────────────────────────────────────────────────┐
echo     │                 [3] HERRAMIENTAS DESARROLLO                  │
echo     ├──────────────────────────────────────────────────────────────┤
echo     │  9. 💼 PowerShell en proyecto actual                         │
echo     │  A. 🐙 Git Bash (si está instalado)                          │
echo     │  B. 🔷 VS Code (si está instalado)                           │
echo     │  C. ⚙️  Configurar variables de entorno                      │
echo     │  D. 🎨 Personalizar este menú                                │
echo     └──────────────────────────────────────────────────────────────┘
echo.
echo     ╔══════════════════════════════════════════════════════════════╗
echo     ║  X. Salir  │  R. Refresh  │  I. Info  │  H. Help             ║
echo     ╚══════════════════════════════════════════════════════════════╝
echo.

choice /c 123456789ABCDXRIH /n /m "  🎯 Selecciona una opción: "

if errorlevel 18 goto help
if errorlevel 17 goto help
if errorlevel 16 goto info
if errorlevel 15 goto refresh
if errorlevel 14 goto exit
if errorlevel 13 goto customize
if errorlevel 12 goto envvars
if errorlevel 11 goto vscode
if errorlevel 10 goto gitbash
if errorlevel 9 goto currentproject
if errorlevel 8 goto cmdadmin
if errorlevel 7 goto terminal
if errorlevel 6 goto ise
if errorlevel 5 goto desktop
if errorlevel 4 goto downloads
if errorlevel 3 goto documents
if errorlevel 2 goto admin
if errorlevel 1 goto normal

:normal
echo.
echo  ✅ [NORMAL] Abriendo PowerShell estándar...
start powershell -NoExit -Command "Write-Host '=== SWAT-CAS POWERSHELL ===' -ForegroundColor Green; Write-Host 'Sesión iniciada: %date% %time%' -ForegroundColor Cyan"
goto end

:admin
echo.
echo  🔐 [ADMIN] Solicitando elevación de privilegios...
powershell -Command "Start-Process powershell -Verb RunAs -ArgumentList '-NoExit', '-Command', \"Write-Host '=== SWAT-CAS ADMIN POWERSHELL ===' -ForegroundColor Red; Write-Host 'Sesión administrativa iniciada: %date% %time%' -ForegroundColor Yellow\""
goto end

:documents
echo.
echo  📂 [DOCS] Abriendo PowerShell en Documents...
start powershell -NoExit -Command "Set-Location -Path "$env:USERPROFILE\OneDrive\Documentos"; Write-Host '=== SWAT-CAS POWERSHELL EN DOCUMENTS ===' -ForegroundColor Green; Write-Host 'Ubicación: Documents' -ForegroundColor Cyan; Get-ChildItem | Select-Object -First 10 Name, Length, LastWriteTime | Format-Table -AutoSize"
goto end

:downloads
echo.
echo  📥 [DOWN] Abriendo PowerShell en Downloads...
start powershell -NoExit -Command "Set-Location -Path "$env:USERPROFILE\Downloads"; Write-Host '=== SWAT-CAS POWERSHELL EN DOWNLOADS ===' -ForegroundColor Green; Write-Host 'Ubicación: Downloads' -ForegroundColor Cyan; Get-ChildItem | Select-Object -First 10 Name, Length, LastWriteTime | Format-Table -AutoSize"
goto end

:desktop
echo.
echo  🖥️  [DESK] Abriendo PowerShell en Escritorio...
start powershell -NoExit -Command "Set-Location -Path "$env:USERPROFILE\OneDrive\Desktop"; Write-Host '=== SWAT-CAS POWERSHELL EN ESCRITORIO ===' -ForegroundColor Green; Write-Host 'Ubicación: Escritorio' -ForegroundColor Cyan; Get-ChildItem | Select-Object -First 10 Name, Length, LastWriteTime | Format-Table -AutoSize"
goto end

:ise
echo.
echo  ✏️  [ISE] Abriendo PowerShell ISE Editor...
if exist "%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell_ise.exe" (
    start powershell_ise
    echo  ✅ PowerShell ISE iniciado
) else (
    echo  ❌ PowerShell ISE no disponible
    echo  ℹ️  Esta característica no está disponible en Windows 11
    timeout /t 3 /nobreak >nul
)
goto end

:terminal
echo.
echo  🌟 [TERM] Abriendo Windows Terminal...
if exist "%LocalAppData%\Microsoft\WindowsApps\wt.exe" (
    start wt
    echo  ✅ Windows Terminal iniciado
) else (
    echo  ❌ Windows Terminal no instalado
    echo  ℹ️  Instálalo desde Microsoft Store
    timeout /t 3 /nobreak >nul
)
goto end

:cmdadmin
echo.
echo  ⚡ [CMD] Abriendo Command Prompt como Administrador...
powershell -Command "Start-Process cmd -Verb RunAs -ArgumentList '/k', 'echo === SWAT-CAS CMD ADMINISTRADOR === && echo Fecha: %date% %time% && title SWAT-CAS CMD ADMIN MODE'"
goto end

:currentproject
echo.
echo  💼 [PROJ] Abriendo PowerShell en proyecto personalizado...
set /p "projectpath=  📁 Ingresa la ruta de tu proyecto (Enter para carpeta actual): "
if "%projectpath%"=="" (
    start powershell -NoExit -Command "Write-Host '=== SWAT-CAS POWERSHELL EN CARPETA ACTUAL ===' -ForegroundColor Yellow; Write-Host 'Ubicación: %CD%' -ForegroundColor Cyan; Get-ChildItem | Select-Object -First 15 Name, Length, LastWriteTime | Format-Table -AutoSize"
) else (
    if exist "%projectpath%" (
        start powershell -NoExit -Command "Set-Location -Path '%projectpath%'; Write-Host '=== SWAT-CAS POWERSHELL EN PROYECTO ===' -ForegroundColor Yellow; Write-Host 'Ubicación: %projectpath%' -ForegroundColor Cyan; Get-ChildItem | Select-Object -First 15 Name, Length, LastWriteTime | Format-Table -AutoSize"
    ) else (
        echo  ❌ La ruta especificada no existe
        timeout /t 2 /nobreak >nul
        goto currentproject
    )
)
goto end

:gitbash
echo.
echo  🐙 [GIT] Buscando Git Bash...
if exist "C:\Program Files\Git\bin\bash.exe" (
    start "" "C:\Program Files\Git\bin\bash.exe" --login -i
    echo  ✅ Git Bash abierto
) else if exist "C:\Program Files (x86)\Git\bin\bash.exe" (
    start "" "C:\Program Files (x86)\Git\bin\bash.exe" --login -i
    echo  ✅ Git Bash abierto
) else (
    echo  ❌ Git Bash no encontrado
    echo  ℹ️  Descarga Git desde: https://git-scm.com/download/win
    timeout /t 4 /nobreak >nul
)
goto end

:vscode
echo.
echo  🔷 [CODE] Buscando Visual Studio Code...
where code >nul 2>nul
if %errorlevel%==0 (
    echo  ✅ Iniciando VS Code...
    start code .
    echo  ℹ️  VS Code se está abriendo en la carpeta actual
) else (
    echo  ❌ VS Code no encontrado en PATH
    echo  ℹ️  Descarga VS Code desde: https://code.visualstudio.com/
    timeout /t 4 /nobreak >nul
)
goto end

:envvars
echo.
echo  ⚙️  [ENV] Abriendo variables de entorno del sistema...
start sysdm.cpl
echo  ✅ Panel de variables de entorno abierto
goto end

:customize
echo.
echo  🎨 [CUSTOM] Personalizando SWAT-CAS...
echo  ℹ️  Esta característica está en desarrollo
echo  ℹ️  Próximamente podrás cambiar colores y opciones
timeout /t 2 /nobreak >nul
goto menu

:info
cls
echo.
echo     ╔══════════════════════════════════════════════════════════════╗
echo     ║                      SWAT-CAS INFORMACIÓN                     ║
echo     ╠══════════════════════════════════════════════════════════════╣
echo     ║  █▀▀ █░█░█ ▄▀█ ▀█▀   █▀▀ ▄▀█ █▀  PowerShell Menu v1.1       ║
echo     ║  ▄▄█ ▀▄▀▄▀ █▀█ ░█░   █▄▄ █▀█ ▄█  Creado por swat_h          ║
echo     ║                                                              ║
echo     ║  Fecha: %date%                                 ║
echo     ║  Hora: %time%                                   ║
echo     ║  Usuario: %USERNAME%                                  ║
echo     ║  Directorio: %CD%║
echo     ╚══════════════════════════════════════════════════════════════╝
echo.
echo  Presiona cualquier tecla para volver al menú...
pause >nul
goto menu

:help
cls
echo.
echo     ╔══════════════════════════════════════════════════════════════╗
echo     ║                      SWAT-CAS AYUDA                          ║
echo     ╠══════════════════════════════════════════════════════════════╣
echo     ║  Este menú SWAT-CAS te permite acceder rápidamente a         ║
echo     ║  diferentes herramientas de desarrollo y PowerShell.         ║
echo     ║                                                              ║
echo     ║  Atajos disponibles:                                         ║
echo     ║    • X - Salir del programa                                  ║
echo     ║    • R - Recargar el menú                                    ║
echo     ║    • I - Ver información del sistema                         ║
echo     ║    • H - Mostrar esta ayuda                                  ║
echo     ║                                                              ║
echo     ║  Las opciones numéricas y de letras te permiten acceder      ║
echo     ║  a las diferentes herramientas disponibles.                  ║
echo     ║                                                              ║
echo     ║  Desarrollado por swat_h - SWAT-CAS v1.1                     ║
echo     ╚══════════════════════════════════════════════════════════════╝
echo.
echo  Presiona cualquier tecla para volver al menú...
pause >nul
goto menu

:refresh
echo.
echo  🔄 Refrescando SWAT-CAS...
timeout /t 1 /nobreak >nul
goto menu

:exit
echo.
echo  👋 ¡Gracias por usar SWAT-CAS! Cerrando el menú...
echo     █▀▀ █░█░█ ▄▀█ ▀█▀   █▀▀ ▄▀█ █▀
echo     ▄▄█ ▀▄▀▄▀ █▀█ ░█░   █▄▄ █▀█ ▄█
timeout /t 2 /nobreak >nul
cls
exit

:end
echo.
echo  ⏳ Volviendo a SWAT-CAS en 3 segundos...
timeout /t 3 /nobreak >nul
goto menu