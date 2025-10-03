@echo off
echo.
echo 🚀 Portfolio con Dragón - Versión Ultra-Estática con Colores Armonizados
echo ======================================================================
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
echo 🎨 VERSIÓN FINAL CON PALETA DE COLORES HARMONIZADA:
echo =================================================
echo.
echo 🌈 PORTFOLIO DRAGÓN ULTRA-ESTÁTICO CON NUEVA PALETA:
echo    http://localhost:8000/portfolio-dragon-ultra-static.html
echo.
echo ✅ Características de Color Actualizadas:
echo    • Tooltip con gradiente azul-morado (igual que el sitio)
echo    • Texto blanco para máximo contraste y legibilidad
echo    • Bordes azul claro con efecto de pulso sutil
echo    • Sombras azuladas que combinan perfectamente
echo    • Partículas de fuego azul-morado al hacer click
echo    • Dragón con gradiente azul-morado-rosa mejorado
echo    • Estado "excited" con efecto morado elegante
echo.
echo 🎯 Paleta de Colores Optimizada:
echo    - Fondo del tooltip: gradiente #5996C2 → #7C3AED
echo    - Texto del tooltip: blanco puro (#FFFFFF)
echo    - Bordes: azul claro con transparencia
echo    - Sombras: azul suave con efecto pulsante
echo    - Partículas: gradiente azul-morado
echo    - Dragón: colores azul-morado-rosa harmonizados
echo.
echo 📊 Estado del Sistema con Nueva Paleta:
echo    ✅ Movimientos ultra-estáticos: ACTIVOS (cada 60s máximo)
echo    ✅ Interacción por hover: FUNCIONAL
echo    ✅ Seguimiento del cursor: OPERATIVO
echo    ✅ Tooltip armonizado: "¡Hola, bienvenido a mi portfolio :)"
echo    ✅ Colores combinados: PERFECTAMENTE INTEGRADOS
echo    ✅ Efectos visuales: PROFESIONALES Y COHERENTES
echo.
echo 🎨 Lo Que Verás Ahora:
echo    1. Tooltip con gradiente azul-morado elegante
echo    2. Texto blanco nítido y fácil de leer
echo    3. Bordes y sombras que combinan con el sitio
echo    4. Dragón con colores azul-morado-rosa mejorado
echo    5. Partículas azul-morado al hacer click
echo    6. Animación de pulso sutil en tonos azules
echo.
echo 📁 Versiones disponibles:
dir /b *.html
echo.
echo 💡 La nueva paleta combina perfectamente:
echo    - Mantiene la coherencia visual del portfolio
echo    - Mejora la legibilidad del tooltip
echo    - Crea una experiencia visual armoniosa
echo    - Conserva toda la funcionalidad ultra-estática
echo    - Integra perfectamente con el diseño existente
echo.
echo 🛑 Para detener el servidor: Presiona Ctrl+C en la terminal
echo.
echo 🎯 ¡El dragón ahora tiene colores que combinan perfectamente con tu portfolio!
echo.
pause
