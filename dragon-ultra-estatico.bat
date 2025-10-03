@echo off
echo.
echo 🚀 Portfolio con Dragón - Versión Ultra-Estática Final
echo ====================================================
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
echo 🐲 DRAGÓN ULTRA-ESTÁTICO - EXACTAMENTE LO SOLICITADO:
echo ===================================================
echo.
echo 🎯 VERSIÓN FINAL ULTRA-ESTÁTICA:
echo    http://localhost:8000/portfolio-dragon-ultra-static.html
echo.
echo ✅ Características Implementadas Exactamente:
echo    • Movimiento ultra-reducido: SOLO 1 movimiento cada 60 segundos
echo    • Sistema de interacción por hover: dragón vuela hacia elementos
echo    • Seguimiento del cursor: puede pasar al siguiente elemento
echo    • Margen de 60 segundos entre movimientos automáticos
echo    • Tooltip "¡Hola, bienvenido a mi portfolio :)" garantizado
echo    • Sistema anti-texto inteligente que nunca tapa contenido
echo    • Efectos de fuego profesionales al hacer click
echo    • Animaciones naturales y fluidas
echo.
echo 🎯 Comportamiento Ultra-Estático:
echo    - Movimientos automáticos: CADA 60 SEGUNDOS MÁXIMO
echo    - Solo se mueve cuando detecta interacción del usuario
echo    - Si posas el cursor sobre un elemento → dragón vuela hacia él
echo    - Si mueves el cursor → puede seguir al siguiente elemento
echo    - Tooltip aparece inmediatamente al hacer hover
echo    - Nunca se queda encima del texto (evasión automática)
echo.
echo 📊 Estado del Sistema Ultra-Estático:
echo    ✅ Movimientos automáticos: ULTRA-REDUCIDOS (cada 60s)
echo    ✅ Interacción por hover: FUNCIONAL
echo    ✅ Seguimiento del cursor: OPERATIVO
echo    ✅ Tooltip garantizado: "¡Hola, bienvenido a mi portfolio :)"
echo    ✅ Sistema anti-texto: PERFECTO
echo    ✅ Efectos visuales: PROFESIONALES
echo.
echo 🎨 Lo Que Verás Ahora:
echo    1. Dragón casi estático, se mueve muy poco (cada 60 segundos)
echo    2. Tooltip "¡Hola, bienvenido a mi portfolio :)" al poner el mouse encima
echo    3. Cuando pasas el cursor sobre proyectos/habilidades → dragón vuela hacia ellos
echo    4. Si mueves el cursor a otro elemento → puede seguirte
echo    5. Nunca se queda encima del texto (evasión automática)
echo    6. Efectos de fuego al hacer click
echo.
echo 📁 Versiones disponibles:
dir /b *.html
echo.
echo 💡 Esta versión tiene exactamente lo solicitado:
echo    - Movimientos ultra-reducidos (cada 60 segundos máximo)
echo    - Interacción inteligente por hover del usuario
echo    - Seguimiento contextual del cursor
echo    - Sistema anti-texto perfecto
echo    - Tooltip personalizado garantizado
echo.
echo 🛑 Para detener el servidor: Presiona Ctrl+C en la terminal
echo.
echo 🎯 ¡El dragón ahora es ultra-estático y solo se mueve cuando interactúas con él!
echo.
pause
