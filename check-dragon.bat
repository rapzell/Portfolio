@echo off
echo.
echo 🚀 Estado del Servidor y Portfolio Avanzado
echo ==========================================
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
echo 🐲 DRAGÓN AVANZADO - Portfolio Premium
echo ======================================
echo.
echo 🔥 VERSIÓN CON DRAGÓN MEJORADA:
echo    http://localhost:8000/portfolio-dragon-v2.html
echo    - Tooltip "¡Hola!" más visible y atractivo
echo    - Efectos visuales mejorados
echo    - Colores dorados premium
echo    - Animación de pulso en el tooltip
echo.
echo ✅ Características Premium Implementadas:
echo    • Dragón que evita automáticamente el texto
echo    • Sistema de evasión inteligente anti-texto
echo    • Tooltip "¡Hola!" al poner el mouse encima
echo    • Movimientos naturales y fluidos
echo    • Detección automática de posiciones seguras
echo    • Interacción contextual con elementos
echo    • Efectos de fuego al hacer click
echo    • Patrullaje inteligente entre secciones
echo.
echo 🐰 CON ANIMALITO AVANZADO:
echo    http://localhost:8000/portfolio-animalito.html
echo    - Conejo con saltos programados
echo    - Sistema de partículas
echo    - Movimientos entre secciones
echo.
echo 📄 BÁSICO:
echo    http://localhost:8000/portfolio-demo.html
echo    - Versión simple original
echo.
echo 📁 Archivos disponibles:
dir /b *.html
echo.
echo 💡 Características Técnicas del Dragón:
echo    • Sistema de detección de colisiones con texto
echo    • Algoritmo de búsqueda de posiciones seguras
echo    • Animaciones basadas en física realista
echo    • Interacción inteligente con elementos DOM
echo    • Gestión automática de posiciones seguras
echo    • Tooltip contextual con efectos visuales
echo.
echo 🛑 Para detener el servidor: Presiona Ctrl+C en la terminal
echo.
echo 🎯 El dragón ahora es completamente "texto-friendly"!
echo.
pause
