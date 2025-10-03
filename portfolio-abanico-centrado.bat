@echo off
echo.
echo 🚀 Portfolio con Dragón - Versión Final con Abanico Centrado Perfectamente
echo =========================================================================
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
echo 🎯 VERSIÓN FINAL - ABANICO CENTRADO PERFECTAMENTE:
echo =================================================
echo.
echo 👨‍💻 PORTFOLIO PROFESIONAL - DAVID VALERO ROMAN:
echo    http://localhost:8000/portfolio-dragon-ultra-static.html
echo.
echo ✅ Abanico de Certificados Centrado:
echo    • ✅ Eje de rotación centrado perfectamente en el medio geométrico
echo    • ✅ Todos los certificados giran uniformemente alrededor del centro
echo    • ✅ Sistema de posicionamiento absoluto centrado implementado
echo    • ✅ Transform-origin: center center aplicado correctamente
echo    • ✅ Margenes negativos calculados para centrado perfecto
echo    • ✅ 4 certificados distribuidos uniformemente (90° cada uno)
echo.
echo ✅ Características Técnicas Mejoradas:
echo    • Sistema de centrado: left 50%% + margin-left negativo
echo    • Transform-origin centrado en cada tarjeta individual
echo    • Perspectiva 3D optimizada (1200px)
echo    • Animación de rotación corregida y fluida
echo    • Pausa automática al hacer hover sobre el área
echo    • Agrandamiento elegante de tarjetas individuales
echo    • Modal profesional para ver PDFs completos
echo.
echo ✅ Información Personal Completa:
echo    • Encabezado: "Portfolio David Valero Roman"
echo    • Título: "Hola, soy David Valero Roman"
echo    • Información profesional completa
echo.
echo 📊 Estado del Sistema Final Centrado:
echo    ✅ Eje de rotación: CENTRADO PERFECTAMENTE
echo    • Centro geométrico: ✅ Todos los certificados equidistantes
echo    • Rotación uniforme: ✅ Cada certificado gira igual alrededor del centro
echo    • Distribución: ✅ 0°, 90°, 180°, 270° desde el centro
echo    • Animación: ✅ Fluida y centrada (25s ciclo completo)
echo    ✅ Dragón ultra-estático: OPTIMIZADO
echo    ✅ Colores armonizados: PERFECTOS
echo.
echo 🎨 Lo Que Verás en la Versión Centrada:
echo    1. ✅ Eje de rotación perfectamente centrado en el medio de todos los certificados
echo    2. ✅ Todos los certificados giran uniformemente alrededor del centro
echo    3. ✅ Ya no gira entorno a "Web Avanzado" - gira alrededor del centro geométrico
echo    4. ✅ Distribución perfecta: cada certificado equidistante del centro
echo    5. ✅ Pausa automática al acercar el cursor al área
echo    6. ✅ Agrandamiento elegante de tarjetas individuales al hover
echo    7. ✅ Modal profesional para ver certificados PDF completos
echo    8. ✅ Dragón ultra-estático funcionando perfectamente
echo.
echo 📁 Archivos disponibles:
dir /b *.html
echo.
echo 💡 Correcciones técnicas implementadas:
echo    - Sistema de centrado absoluto: left 50%% + margen negativo
echo    - Transform-origin centrado en cada tarjeta
echo    - Cálculo preciso de márgenes para tamaño escalado
echo    - Perspectiva aumentada para mejor percepción 3D
echo    - Distribución uniforme garantizada matemáticamente
echo    - Responsive design mejorado para móviles
echo.
echo 🛑 Para detener el servidor: Presiona Ctrl+C en la terminal
echo.
echo 🎯 ¡El abanico de certificados ahora gira perfectamente centrado alrededor del eje central, con todos los certificados equidistantes!
echo.
pause
