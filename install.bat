@echo off
chcp 65001 >nul
title Instalador Directo SWAT-CAS

echo.
echo ╔════════════════════════════════════════════════════════════════╗
echo ║              🚀 INSTALADOR DIRECTO SWAT-CAS 🚀               ║
echo ║            (Acceso directo directo a menu_ps.bat)             ║
echo ║                                                                ║
echo ║         █▀▀ █░█░█ ▄▀█ ▀█▀   █▀▀ ▄▀█ █▀                        ║
echo ║         ▄▄█ ▀▄▀▄▀ █▀█ ░█░   █▄▄ █▀█ ▄█                        ║
echo ╚════════════════════════════════════════════════════════════════╝
echo.

set "USUARIO_ACTUAL=%USERNAME%"
echo 👤 Usuario: %USUARIO_ACTUAL%
echo.

:: Paso 1: Buscar menu_ps.bat en múltiples ubicaciones
echo 🔍 [1/2] Buscando menu_ps.bat en ubicaciones comunes...
set "MENU_ENCONTRADO=NO"
set "RUTA_MENU_ENCONTRADA="
set "UBICACION_ENCONTRADA="

:: Buscar en todas las ubicaciones posibles
if exist "C:\Users\%USUARIO_ACTUAL%\Desktop\menu_ps.bat" (
    set "MENU_ENCONTRADO=SI"
    set "RUTA_MENU_ENCONTRADA=C:\Users\%USUARIO_ACTUAL%\Desktop\menu_ps.bat"
    set "UBICACION_ENCONTRADA=Desktop"
    goto menu_encontrado
)

if exist "C:\Users\%USUARIO_ACTUAL%\OneDrive\Desktop\menu_ps.bat" (
    set "MENU_ENCONTRADO=SI"
    set "RUTA_MENU_ENCONTRADA=C:\Users\%USUARIO_ACTUAL%\OneDrive\Desktop\menu_ps.bat"
    set "UBICACION_ENCONTRADA=OneDrive\Desktop"
    goto menu_encontrado
)

if exist "C:\Users\%USUARIO_ACTUAL%\Escritorio\menu_ps.bat" (
    set "MENU_ENCONTRADO=SI"
    set "RUTA_MENU_ENCONTRADA=C:\Users\%USUARIO_ACTUAL%\Escritorio\menu_ps.bat"
    set "UBICACION_ENCONTRADA=Escritorio"
    goto menu_encontrado
)

if exist "C:\Users\%USUARIO_ACTUAL%\OneDrive\Escritorio\menu_ps.bat" (
    set "MENU_ENCONTRADO=SI"
    set "RUTA_MENU_ENCONTRADA=C:\Users\%USUARIO_ACTUAL%\OneDrive\Escritorio\menu_ps.bat"
    set "UBICACION_ENCONTRADA=OneDrive\Escritorio"
    goto menu_encontrado
)

if exist "C:\Users\%USUARIO_ACTUAL%\Downloads\menu_ps.bat" (
    set "MENU_ENCONTRADO=SI"
    set "RUTA_MENU_ENCONTRADA=C:\Users\%USUARIO_ACTUAL%\Downloads\menu_ps.bat"
    set "UBICACION_ENCONTRADA=Downloads"
    goto menu_encontrado
)

if exist "C:\Users\%USUARIO_ACTUAL%\OneDrive\Downloads\menu_ps.bat" (
    set "MENU_ENCONTRADO=SI"
    set "RUTA_MENU_ENCONTRADA=C:\Users\%USUARIO_ACTUAL%\OneDrive\Downloads\menu_ps.bat"
    set "UBICACION_ENCONTRADA=OneDrive\Downloads"
    goto menu_encontrado
)

if exist "C:\Users\%USUARIO_ACTUAL%\Descargas\menu_ps.bat" (
    set "MENU_ENCONTRADO=SI"
    set "RUTA_MENU_ENCONTRADA=C:\Users\%USUARIO_ACTUAL%\Descargas\menu_ps.bat"
    set "UBICACION_ENCONTRADA=Descargas"
    goto menu_encontrado
)

if exist "C:\Users\%USUARIO_ACTUAL%\OneDrive\Descargas\menu_ps.bat" (
    set "MENU_ENCONTRADO=SI"
    set "RUTA_MENU_ENCONTRADA=C:\Users\%USUARIO_ACTUAL%\OneDrive\Descargas\menu_ps.bat"
    set "UBICACION_ENCONTRADA=OneDrive\Descargas"
    goto menu_encontrado
)

if exist "C:\Users\%USUARIO_ACTUAL%\Documents\menu_ps.bat" (
    set "MENU_ENCONTRADO=SI"
    set "RUTA_MENU_ENCONTRADA=C:\Users\%USUARIO_ACTUAL%\Documents\menu_ps.bat"
    set "UBICACION_ENCONTRADA=Documents"
    goto menu_encontrado
)

if exist "C:\Users\%USUARIO_ACTUAL%\OneDrive\Documents\menu_ps.bat" (
    set "MENU_ENCONTRADO=SI"
    set "RUTA_MENU_ENCONTRADA=C:\Users\%USUARIO_ACTUAL%\OneDrive\Documents\menu_ps.bat"
    set "UBICACION_ENCONTRADA=OneDrive\Documents"
    goto menu_encontrado
)

if exist "C:\Users\%USUARIO_ACTUAL%\Documentos\menu_ps.bat" (
    set "MENU_ENCONTRADO=SI"
    set "RUTA_MENU_ENCONTRADA=C:\Users\%USUARIO_ACTUAL%\Documentos\menu_ps.bat"
    set "UBICACION_ENCONTRADA=Documentos"
    goto menu_encontrado
)

if exist "C:\Users\%USUARIO_ACTUAL%\OneDrive\Documentos\menu_ps.bat" (
    set "MENU_ENCONTRADO=SI"
    set "RUTA_MENU_ENCONTRADA=C:\Users\%USUARIO_ACTUAL%\OneDrive\Documentos\menu_ps.bat"
    set "UBICACION_ENCONTRADA=OneDrive\Documentos"
    goto menu_encontrado
)

if exist "C:\Users\%USUARIO_ACTUAL%\menu_ps.bat" (
    set "MENU_ENCONTRADO=SI"
    set "RUTA_MENU_ENCONTRADA=C:\Users\%USUARIO_ACTUAL%\menu_ps.bat"
    set "UBICACION_ENCONTRADA=Carpeta Usuario"
    goto menu_encontrado
)

:: Si no se encontró el archivo
echo ❌ No se encontró menu_ps.bat en ninguna ubicación común
echo.
echo ℹ️  UBICACIONES VERIFICADAS:
echo   📁 Escritorios: Desktop, Escritorio (OneDrive y local)
echo   📥 Descargas: Downloads, Descargas (OneDrive y local)  
echo   📄 Documentos: Documents, Documentos (OneDrive y local)
echo   🏠 Carpeta Usuario: C:\Users\%USUARIO_ACTUAL%\
echo.
echo ❓ Copia tu archivo menu_ps.bat a alguna de estas ubicaciones
echo    y ejecuta este instalador nuevamente.
echo.
pause
exit /b

:menu_encontrado
echo ✅ ¡Encontrado en: %UBICACION_ENCONTRADA%!
echo 📍 Ruta completa: %RUTA_MENU_ENCONTRADA%
echo.

:: Paso 2: Crear acceso directo que ejecute con permisos de administrador
echo 🎯 [2/2] Creando acceso directo con Ctrl+Alt+P...

:: Crear VBScript para el acceso directo
set "VBS_SCRIPT=%TEMP%\crear_acceso_swat_directo.vbs"
(
echo Set WshShell = WScript.CreateObject^("WScript.Shell"^)
echo strDesktop = WshShell.SpecialFolders^("Desktop"^)
echo Set oShellLink = WshShell.CreateShortcut^(strDesktop ^& "\SWAT-CAS PowerShell Menu.lnk"^)
echo.
echo ' Configurar para ejecutar con permisos de administrador
echo oShellLink.TargetPath = "powershell.exe"
echo oShellLink.Arguments = "-Command ""Start-Process '%RUTA_MENU_ENCONTRADA%' -Verb RunAs"""
echo oShellLink.WorkingDirectory = "%~dp0"
echo oShellLink.Description = "SWAT-CAS PowerShell Menu - Ejecuta con permisos de administrador ^(Ctrl+Alt+P^)"
echo oShellLink.IconLocation = "powershell.exe,0"
echo oShellLink.WindowStyle = 1
echo oShellLink.Hotkey = "Ctrl+Alt+P"
echo oShellLink.Save
) > "%VBS_SCRIPT%"

:: Ejecutar VBScript
cscript //nologo "%VBS_SCRIPT%" >nul 2>&1

:: Verificar resultado
if exist "%USERPROFILE%\Desktop\SWAT-CAS PowerShell Menu.lnk" (
    echo ✅ Acceso directo creado exitosamente
    set "ACCESO_CREADO=SI"
) else (
    echo ❌ Error al crear el acceso directo
    echo ℹ️  Verifica permisos de escritura en el Escritorio
    set "ACCESO_CREADO=NO"
)

:: Limpiar archivo temporal
del "%VBS_SCRIPT%" >nul 2>&1

:: Resultado final
echo.
echo ═══════════════════════════════════════════════════════════════════
echo                     🎉 CONFIGURACIÓN COMPLETADA 🎉
echo ═══════════════════════════════════════════════════════════════════
echo.
echo ╔════════════════════════════════════════════════════════════════╗
echo ║                    SWAT-CAS CONFIGURADO                       ║
echo ╠════════════════════════════════════════════════════════════════╣
echo ║  🎯 Archivo objetivo: menu_ps.bat                             ║
echo ║  📍 Ubicación: %UBICACION_ENCONTRADA%                                      ║
if "%ACCESO_CREADO%"=="SI" echo ║  ✅ Acceso directo: Creado con Ctrl+Alt+P                    ║
if "%ACCESO_CREADO%"=="NO" echo ║  ❌ Acceso directo: Error al crear                           ║
echo ║  🔐 Permisos: Se ejecutará como administrador                 ║
echo ║                                                                ║
echo ║  🚀 FORMAS DE USAR:                                           ║
if "%ACCESO_CREADO%"=="SI" echo ║  • Presiona Ctrl + Alt + P (desde cualquier lugar)           ║
if "%ACCESO_CREADO%"=="SI" echo ║  • Doble clic en "SWAT-CAS PowerShell Menu" del Escritorio   ║
echo ║  • Ejecuta directamente tu archivo menu_ps.bat                ║
echo ║                                                                ║
echo ║  ℹ️  NOTA: Windows pedirá confirmación UAC al ejecutar       ║
echo ║     (es normal para obtener permisos de administrador)        ║
echo ╚════════════════════════════════════════════════════════════════╝
echo.

if "%ACCESO_CREADO%"=="SI" (
    choice /c SN /n /m "¿Quieres probar el acceso directo ahora? (S/N): "
    if errorlevel 2 goto fin
    if errorlevel 1 (
        echo.
        echo 🚀 Ejecutando SWAT-CAS con permisos de administrador...
        echo ℹ️  Windows solicitará confirmación UAC...
        timeout /t 2 /nobreak >nul
        powershell -Command "Start-Process '%RUTA_MENU_ENCONTRADA%' -Verb RunAs"
    )
) else (
    echo ℹ️  Para ejecutar manualmente:
    echo    powershell -Command "Start-Process '%RUTA_MENU_ENCONTRADA%' -Verb RunAs"
)

:fin
echo.
echo ¡Gracias por configurar SWAT-CAS!
pause