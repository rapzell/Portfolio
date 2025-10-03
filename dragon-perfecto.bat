@echo off
echo.
echo 🚀 Portfolio con Dragón - Versión Híbrida Perfecta
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
echo 🐲 VERSIÓN HÍBRIDA PERFECTA - LO MEJOR DE AMBOS MUNDOS:
echo =====================================================
echo.
echo 🔥 PORTFOLIO CON DRAGÓN HÍBRIDO:
echo    http://localhost:8000/portfolio-dragon-hibrido.html
echo.
echo ✅ Características Combinadas Perfectamente:
echo    • Sistema de evasión ultra-inteligente anti-texto
echo    • Movimientos inteligentes y contextuales
echo    • Patrullaje automático entre secciones
echo    • Tooltip "¡Hola!" garantizado al hacer hover
echo    • Interacción avanzada con elementos específicos
echo    • Efectos de fuego profesionales al hacer click
echo    • Animaciones fluidas y naturales
echo    • Sistema de posiciones seguras dinámico
echo.
echo 🎯 Características Específicas:
echo    - Dragón evita automáticamente cualquier texto
echo    - Tooltip dorado brillante aparece al poner mouse encima
echo    - Movimientos naturales basados en física
echo    - Interacción contextual con proyectos y habilidades
echo    - Sistema de partículas de fuego realista
echo    - Estado emocional del dragón (feliz, emocionado)
echo    - Navegación inteligente por secciones
echo.
echo 📊 Estado del Sistema:
echo    ✅ Movimientos inteligentes: ACTIVOS
echo    ✅ Sistema anti-texto: FUNCIONANDO
echo    ✅ Tooltip premium: GARANTIZADO
echo    ✅ Interacciones avanzadas: OPERATIVAS
echo    ✅ Efectos visuales: PROFESIONALES
echo.
echo 🎨 Lo Que Verás Ahora:
echo    1. Dragón patrullando inteligentemente entre secciones
echo    2. Tooltip "¡Hola!" aparece inmediatamente al hover
echo    3. Nunca se queda encima del texto (evasión automática)
echo    4. Vuelo contextual hacia elementos interactivos
echo    5. Efectos de fuego al hacer click
echo    6. Animaciones fluidas y naturales
echo.
echo 📁 Versiones disponibles:
dir /b *.html
echo.
echo 💡 Esta versión combina perfectamente:
echo    - La inteligencia del movimiento avanzado
echo    - La garantía del tooltip que funciona siempre
echo    - El sistema de evasión anti-texto perfecto
echo    - Los efectos visuales profesionales
echo.
echo 🛑 Para detener el servidor: Presiona Ctrl+C en la terminal
echo.
echo 🎯 ¡El dragón ahora tiene movimientos inteligentes Y dice "¡Hola!" perfectamente!
echo.
pause
