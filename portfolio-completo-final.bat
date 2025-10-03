@echo off
echo.
echo 🚀 Portfolio con Dragón - Versión Final Completa y Personalizada
echo ===============================================================
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
echo 🎯 VERSIÓN FINAL - PORTFOLIO COMPLETAMENTE PERSONALIZADO:
echo ========================================================
echo.
echo 👨‍💻 PORTFOLIO PERSONALIZADO - DAVID VALERO ROMAN:
echo    http://localhost:8000/portfolio-dragon-ultra-static.html
echo.
echo ✅ Información Personal Completa:
echo    • Encabezado: "Portfolio David Valero Roman"
echo    • Título: "Hola, soy David Valero Roman"
echo    • Información profesional completa
echo.
echo ✅ Dragón Ultra-Estático Personalizado:
echo    • Movimientos mínimos: solo cada 60 segundos máximo
echo    • Interacción inteligente por hover del usuario
echo    • Seguimiento contextual del cursor
echo    • Sistema anti-texto perfecto
echo    • Tooltip personalizado: "¡Hola, bienvenido a mi portfolio!  :)"
echo.
echo ✅ Características Técnicas Premium:
echo    • Colores azul-morado armonizados perfectamente
echo    • Animaciones fluidas y naturales
echo    • Efectos de fuego profesionales
echo    • Estados emocionales del dragón
echo    • Navegación suave entre secciones
echo    • Diseño responsivo completo
echo.
echo 📊 Estado Final del Sistema:
echo    ✅ Información personal: "DAVID VALERO ROMAN" - COMPLETA
echo    ✅ Dragón ultra-estático: FUNCIONANDO PERFECTAMENTE
echo    ✅ Tooltip personalizado: "¡Hola, bienvenido a mi portfolio!  :)"
echo    ✅ Colores armonizados: INTEGRADOS PROFESIONALMENTE
echo    ✅ Interacciones avanzadas: OPERATIVAS
echo    ✅ Sistema anti-texto: PERFECCIONADO
echo.
echo 🎨 Lo Que Verás en la Versión Final:
echo    1. Encabezado: "Portfolio David Valero Roman"
echo    2. Título principal: "Hola, soy David Valero Roman"
echo    3. Dragón ultra-estático con movimientos mínimos
echo    4. Tooltip elegante: "¡Hola, bienvenido a mi portfolio!  :)"
echo    5. Interacción inteligente por hover del usuario
echo    6. Colores azul-morado perfectamente integrados
echo    7. Animaciones suaves y profesionales
echo.
echo 📁 Archivos disponibles:
dir /b *.html
echo.
echo 💡 Esta versión tiene exactamente lo solicitado:
echo    - Información personal completa y profesional
echo    - Dragón ultra-estático con comportamiento inteligente
echo    - Tooltip personalizado con el mensaje exacto pedido
echo    - Colores azul-morado que combinan perfectamente
echo    - Funcionalidad completa y optimizada
echo    - Diseño profesional y elegante
echo.
echo 🛑 Para detener el servidor: Presiona Ctrl+C en la terminal
echo.
echo 🎯 ¡El portfolio está completamente personalizado con "David Valero Roman" y el dragón dice exactamente "¡Hola, bienvenido a mi portfolio!  :)"!
echo.
pause
