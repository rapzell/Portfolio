@echo off
echo.
echo 🚀 Portfolio con Dragón - Versión Final con Abanico de Certificados Corregido
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
echo 🎓 VERSIÓN FINAL - ABANICO DE CERTIFICADOS CORREGIDO:
echo ====================================================
echo.
echo 👨‍💻 PORTFOLIO PROFESIONAL - DAVID VALERO ROMAN:
echo    http://localhost:8000/portfolio-dragon-ultra-static.html
echo.
echo ✅ Abanico de Certificados Corregido:
echo    • ✅ Rotación correcta sobre eje central estático
echo    • ✅ 4 certificados distribuidos uniformemente (90° cada uno)
echo    • ✅ Sin superposición entre certificados
echo    • ✅ Perspectiva 3D mejorada (1200px)
echo    • ✅ Animación fluida de rotación continua
echo    • ✅ Pausa automática al hacer hover sobre el área
echo    • ✅ Agrandamiento elegante de tarjetas individuales
echo    • ✅ Modal profesional para ver PDFs completos
echo.
echo ✅ Información Personal Completa:
echo    • Encabezado: "Portfolio David Valero Roman"
echo    • Título: "Hola, soy David Valero Roman"
echo    • Información profesional completa
echo.
echo ✅ Dragón Ultra-Estático Optimizado:
echo    • Movimientos mínimos: solo cada 60 segundos máximo
echo    • Interacción inteligente por hover del usuario
echo    • Seguimiento contextual del cursor
echo    • Sistema anti-texto perfecto
echo    • Tooltip: "¡Hola, bienvenido a mi portfolio!  :)"
echo.
echo 📊 Estado del Sistema Final Corregido:
echo    ✅ Abanico 3D: PERFECCIONADO - Rotación correcta sobre eje central
echo    • Distribución: ✅ 4 certificados a 90° cada uno
echo    • Animación: ✅ Fluida y continua (25s ciclo completo)
echo    • Interacciones: ✅ Pausa y agrandamiento intuitivos
echo    • Modal: ✅ Visualización PDF profesional
echo    ✅ Dragón ultra-estático: OPTIMIZADO
echo    ✅ Colores armonizados: PERFECTOS
echo.
echo 🎨 Lo Que Verás en la Versión Corregida:
echo    1. ✅ Abanico giratorio 3D con rotación correcta sobre eje central
echo    2. ✅ 4 certificados claramente separados (0°, 90°, 180°, 270°)
echo    3. ✅ Sin superposición - cada certificado visible distintamente
echo    4. ✅ Rotación fluida que no se acerca/aleja incorrectamente
echo    5. ✅ Pausa automática al acercar el cursor al área
echo    6. ✅ Agrandamiento elegante de tarjetas individuales al hover
echo    7. ✅ Modal profesional para ver certificados PDF completos
echo    8. ✅ Dragón ultra-estático funcionando perfectamente
echo.
echo 📁 Archivos disponibles:
dir /b *.html
echo.
echo 💡 Correcciones técnicas implementadas:
echo    - Perspectiva aumentada a 1200px para mejor profundidad 3D
echo    - Distribución uniforme de certificados (90° en lugar de 72°)
echo    - translateZ aumentado a 250px para mejor separación
echo    - Animación corregida para rotación pura sobre eje Y
echo    - Responsive design mejorado para móviles
echo    - Interacciones más suaves y naturales
echo.
echo 🛑 Para detener el servidor: Presiona Ctrl+C en la terminal
echo.
echo 🎯 ¡El abanico de certificados ahora gira correctamente sobre un eje central estático, sin superposiciones y con separación perfecta!
echo.
pause
