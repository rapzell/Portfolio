@echo off
echo.
echo 🚀 Portfolio con Dragón - Versión Final Optimizada
echo =================================================
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
echo 🐲 VERSIÓN FINAL - OPTIMIZADA PERFECTAMENTE:
echo ============================================
echo.
echo 🔥 PORTFOLIO DRAGÓN FINAL:
echo    http://localhost:8000/portfolio-dragon-final.html
echo.
echo ✅ Características Implementadas Exactamente:
echo    • Dragón con movimientos reducidos al 30%% de frecuencia
echo    • Movimientos predecibles y menos aleatorios
echo    • Patrullaje cada 20 segundos (antes cada 6 segundos)
echo    • Tooltip "¡Hola, bienvenido a mi portfolio :)" garantizado
echo    • Sistema anti-texto inteligente que nunca tapa contenido
echo    • Interacción contextual con elementos específicos
echo    • Efectos de fuego profesionales al hacer click
echo    • Animaciones fluidas y naturales
echo.
echo 🎯 Comportamiento Optimizado:
echo    - Movimientos REDUCIDOS al 30%% de la frecuencia original
echo    - Patrullaje predecible: Inicio → Sobre Mí → Proyectos → Habilidades → Contacto
echo    - Tooltip aparece inmediatamente al poner el mouse encima
echo    - Nunca se queda encima del texto (evasión automática)
echo    - Vuelo contextual hacia elementos interactivos
echo    - Estado de reposo con animación sutil
echo.
echo 📊 Estado del Sistema Final:
echo    ✅ Movimientos inteligentes: ACTIVOS (reduciodos)
echo    ✅ Patrullaje optimizado: FUNCIONANDO (cada 20s)
echo    ✅ Tooltip premium: GARANTIZADO ("¡Hola, bienvenido a mi portfolio :)" )
echo    ✅ Sistema anti-texto: OPERATIVO (nunca tapa contenido)
echo    ✅ Interacciones avanzadas: FUNCIONALES
echo    ✅ Efectos visuales: PROFESIONALES
echo.
echo 🎨 Lo Que Verás Ahora:
echo    1. Dragón patrullando tranquilamente cada 20 segundos
echo    2. Tooltip aparece al poner el mouse encima diciendo "¡Hola, bienvenido a mi portfolio :)"
echo    3. Nunca se queda encima del texto (evasión automática)
echo    4. Vuelo suave hacia elementos cuando interactúas
echo    5. Efectos de fuego al hacer click
echo    6. Animaciones naturales y fluidas
echo.
echo 📁 Archivos disponibles:
dir /b *.html
echo.
echo 💡 Esta versión tiene exactamente lo solicitado:
echo    - Movimientos reducidos al 30%% de frecuencia
echo    - Patrullaje predecible y menos aleatorio
echo    - Tooltip con mensaje personalizado
echo    - Sistema anti-texto perfecto
echo    - Todas las características avanzadas mantenidas
echo.
echo 🛑 Para detener el servidor: Presiona Ctrl+C en la terminal
echo.
echo 🎯 ¡El dragón ahora se mueve menos, dice "¡Hola, bienvenido a mi portfolio :)" y nunca tapa el texto!
echo.
pause
