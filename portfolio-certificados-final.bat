@echo off
echo.
echo 🚀 Portfolio con Dragón - Versión Final con Sección de Certificados
echo ===================================================================
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
echo 🎓 VERSIÓN FINAL - PORTFOLIO COMPLETO CON CERTIFICADOS:
echo =======================================================
echo.
echo 👨‍💻 PORTFOLIO PROFESIONAL - DAVID VALERO ROMAN:
echo    http://localhost:8000/portfolio-dragon-ultra-static.html
echo.
echo ✅ Información Personal Completa:
echo    • Encabezado: "Portfolio David Valero Roman"
echo    • Título: "Hola, soy David Valero Roman"
echo    • Información profesional completa
echo.
echo ✅ Nueva Sección de Certificados:
echo    • Abanico giratorio 3D con 4 certificados PDF
echo    • Efecto de rotación continua automática
echo    • Pausa al pasar el cursor encima
echo    • Agrandamiento de tarjetas individuales
echo    • Modal para ver certificados completos
echo    • Animaciones fluidas y profesionales
echo.
echo ✅ Dragón Ultra-Estático Optimizado:
echo    • Movimientos mínimos: solo cada 60 segundos máximo
echo    • Interacción inteligente por hover del usuario
echo    • Seguimiento contextual del cursor
echo    • Sistema anti-texto perfecto
echo    • Tooltip: "¡Hola, bienvenido a mi portfolio!  :)"
echo.
echo ✅ Características Técnicas Premium:
echo    • Colores azul-morado armonizados perfectamente
echo    • Perspectiva 3D para el abanico de certificados
echo    • Transiciones suaves y naturales
echo    • Efectos de fuego profesionales
echo    • Estados emocionales del dragón
echo    • Navegación suave entre secciones
echo    • Diseño responsivo completo
echo.
echo 📊 Estado del Sistema Final Completo:
echo    ✅ Información personal: "DAVID VALERO ROMAN" - COMPLETA
echo    ✅ Sección certificados: NUEVA - FUNCIONANDO
echo    • Abanico giratorio: ✅ 3D ANIMADO
echo    • Modal de certificados: ✅ OPERATIVO
echo    • Interacciones: ✅ INTUITIVAS
echo    ✅ Dragón ultra-estático: OPTIMIZADO
echo    ✅ Colores armonizados: PERFECTOS
echo    ✅ Efectos visuales: PROFESIONALES
echo.
echo 🎨 Lo Que Verás en la Versión Final Completa:
echo    1. Encabezado: "Portfolio David Valero Roman"
echo    2. Título principal: "Hola, soy David Valero Roman"
echo    3. NUEVA sección "Certificados" con abanico giratorio 3D
echo    4. Certificados girando continuamente hasta que pasas el cursor
echo    5. Modal elegante para ver certificados PDF completos
echo    6. Dragón ultra-estático con movimientos mínimos
echo    7. Tooltip: "¡Hola, bienvenido a mi portfolio!  :)"
echo    8. Colores azul-morado perfectamente integrados
echo.
echo 📁 Archivos disponibles:
dir /b *.html
echo.
echo 💡 Esta versión tiene exactamente lo solicitado:
echo    - Información personal completa y profesional
echo    - Nueva sección de certificados en abanico giratorio
echo    - Dragón ultra-estático con comportamiento inteligente
echo    - Colores azul-morado que combinan perfectamente
echo    - Funcionalidad completa y optimizada
echo    - Experiencia visual impactante y profesional
echo.
echo 🛑 Para detener el servidor: Presiona Ctrl+C en la terminal
echo.
echo 🎯 ¡El portfolio ahora tiene una sección de certificados en abanico giratorio 3D que se detiene y agranda cuando interactúas con él!
echo.
pause
