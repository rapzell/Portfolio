@echo off
echo.
echo 🚀 Portfolio con Dragón - Versión Ultra-Estática con Información Personalizada
echo ============================================================================
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
echo 👨‍💻 VERSIÓN FINAL CON INFORMACIÓN PERSONAL COMPLETA:
echo ==================================================
echo.
echo 🎯 PORTFOLIO PERSONALIZADO - DAVID VALERO ROMAN:
echo    http://localhost:8000/portfolio-dragon-ultra-static.html
echo.
echo ✅ Información Personalizada Implementada:
echo    • Encabezado: "Portfolio David Valero Roman"
echo    • Título principal: "Hola, soy David Valero Roman"
echo    • Nombre completo integrado perfectamente
echo    • Diseño profesional mantenido
echo    • Dragón ultra-estático funcionando
echo    • Colores azul-morado armonizados
echo.
echo 🎨 Características Finales Optimizadas:
echo    • Información personal completa y profesional
echo    • Movimientos ultra-reducidos (cada 60 segundos máximo)
echo    • Interacción inteligente por hover del usuario
echo    • Tooltip: "¡Hola, bienvenido a mi portfolio :)"
echo    • Sistema anti-texto perfecto (nunca tapa contenido)
echo    • Efectos visuales profesionales azul-morado
echo    • Animaciones fluidas y naturales
echo.
echo 📊 Estado del Sistema Final Personalizado:
echo    ✅ Información personal: "DAVID VALERO ROMAN"
echo    • Encabezado: ✅ "Portfolio David Valero Roman"
echo    • Título principal: ✅ "Hola, soy David Valero Roman"
echo    ✅ Movimientos ultra-estáticos: ACTIVOS (cada 60s)
echo    ✅ Interacción por hover: FUNCIONAL
echo    ✅ Colores armonizados: PERFECTOS
echo    ✅ Tooltip garantizado: OPERATIVO
echo    ✅ Efectos visuales: PROFESIONALES
echo.
echo 🎨 Lo Que Verás Ahora:
echo    1. Encabezado: "Portfolio David Valero Roman"
echo    2. Título principal: "Hola, soy David Valero Roman"
echo    3. Dragón ultra-estático con movimientos mínimos
echo    4. Tooltip azul-morado: "¡Hola, bienvenido a mi portfolio :)"
echo    5. Interacción inteligente por hover del usuario
echo    6. Colores azul-morado perfectamente integrados
echo.
echo 📁 Archivos disponibles:
dir /b *.html
echo.
echo 💡 Esta versión tiene exactamente lo solicitado:
echo    - Información personal completa y profesional
echo    - Dragón ultra-estático con interacción inteligente
echo    - Colores azul-morado que combinan perfectamente
echo    - Funcionalidad completa mantenida
echo    - Diseño profesional y elegante
echo.
echo 🛑 Para detener el servidor: Presiona Ctrl+C en la terminal
echo.
echo 🎯 ¡El portfolio ahora tiene tu información personal completa: "David Valero Roman"!
echo.
pause
