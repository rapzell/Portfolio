@echo off
echo.
echo 🚀 Verificando estado del servidor...
echo.

REM Verificar si el puerto 8000 está siendo utilizado
netstat -ano | findstr :8000 > nul
if %errorlevel% equ 0 (
    echo ✅ Servidor activo en puerto 8000
) else (
    echo ❌ Servidor no encontrado en puerto 8000
    echo.
    echo Intentando iniciar servidor...
    powershell -ExecutionPolicy Bypass -File basic-server.ps1
    goto :end
)

echo.
echo 🌐 URLs disponibles:
echo.
echo Portfolio Mejorado: http://localhost:8000/portfolio-demo-v2.html
echo Portfolio Básico:    http://localhost:8000/portfolio-demo.html
echo Archivo Directo:     http://localhost:8000/
echo.
echo 📁 Archivos disponibles:
dir /b *.html
echo.
echo 💡 Para detener el servidor: Presiona Ctrl+C en la terminal
echo.
echo 🎨 El portfolio profesional mejorado incluye:
echo    - Dark mode tech-vibe
echo    - Animaciones profesionales
echo    - Diseño responsive
echo    - Navegación suave
echo.
pause
