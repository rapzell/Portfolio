@echo off
echo.
echo 🚀 Estado del Servidor - Test del Dragón
echo ========================================
echo.

REM Verificar si el puerto 8000 está siendo utilizado
netstat -ano | findstr :8000 > nul
if %errorlevel% equ 0 (
    echo ✅ Servidor activo en puerto 8000
) else (
    echo ❌ Servidor no encontrado en puerto 8000
    goto :end
)

echo.
echo 🧪 TEST DEL TOOLTIP DEL DRAGÓN:
echo ===============================
echo.
echo 🔍 VERSIÓN DE TEST SIMPLIFICADA:
echo    http://localhost:8000/test-dragon.html
echo    - Solo el dragón y el tooltip para testing
echo    - Sin elementos adicionales que interfieran
echo    - Información de debug en esquina superior derecha
echo    - Console log para verificar interacciones
echo.
echo 💡 INSTRUCCIONES PARA TESTING:
echo    1. Abre http://localhost:8000/test-dragon.html
echo    2. Busca el dragón azul en la esquina superior izquierda
echo    3. Pon el cursor directamente encima del dragón
echo    4. Deberías ver un tooltip dorado brillante que dice "¡Hola!"
echo    5. Abre la consola del navegador (F12) para ver logs de debug
echo.
echo 🎯 ¿QUÉ DEBERÍAS VER?
echo    - Dragón azul estático en posición fija
echo    - Al poner el mouse encima: tooltip dorado aparece arriba
echo    - El tooltip dice claramente "¡Hola!"
echo    - Tiene borde dorado brillante y efectos visuales
echo    - Animación de pulso cada 2 segundos
echo.
echo 🐲 VERSIONES AVANZADAS:
echo    http://localhost:8000/portfolio-dragon-v2.html
echo    - Dragón completo con movimientos inteligentes
echo    - Sistema anti-texto avanzado
echo    - Todas las características premium
echo.
echo 📁 Archivos disponibles:
dir /b *.html
echo.
echo 💡 Si el test básico funciona, el problema podría estar en:
echo    - El navegador tiene caché antiguo
echo    - La versión avanzada tiene conflictos
echo    - Necesitas limpiar el caché del navegador
echo.
echo 🛑 Para detener el servidor: Presiona Ctrl+C en la terminal
echo.
pause
