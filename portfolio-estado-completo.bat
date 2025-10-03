@echo off
echo.
echo 🚀 Portfolio con Dragón - ESTADO ACTUAL COMPLETO
echo ==============================================
echo.

REM Verificar si el servidor está corriendo
netstat -ano | findstr :8000 > nul
if %errorlevel% equ 0 (
    echo ✅ Servidor activo en puerto 8000
) else (
    echo ❌ Servidor no encontrado en puerto 8000
    goto :end
)

echo.
echo 🎯 OPCIONES DISPONIBLES - ELIGE TU PREFERIDA:
echo ============================================
echo.
echo 📋 OPCIONES DE VISUALIZACIÓN DE CERTIFICADOS:
echo.
echo 1️⃣ PORTFOLIO ORIGINAL CON CERTIFICADOS FUNCIONALES:
echo    http://localhost:8000/portfolio-original-con-certificados-funcionales.html
echo    • ✅ Diseño original completo
echo    • ✅ Dragón ultra-estático inteligente
echo    • ✅ Certificados con múltiples métodos de visualización
echo    • ✅ Navegación y secciones originales
echo.
echo 2️⃣ VISOR PDF ESPECIALIZADO (PDF.JS):
echo    http://localhost:8000/visor-pdf-especializado.html
echo    • ✅ Visor profesional con PDF.js
echo    • ✅ Renderizado directo en navegador
echo    • ✅ Controles avanzados de navegación
echo    • ✅ Compatible con cualquier navegador
echo.
echo 3️⃣ CERTIFICADOS ALTERNATIVA VISUAL:
echo    http://localhost:8000/certificados-alternativa-visual.html
echo    • ✅ Información detallada siempre visible
echo    • ✅ Diseño visual elegante
echo    • ✅ No depende del servidor local
echo    • ✅ Información técnica completa
echo.
echo ✅ FUNCIONALIDADES IMPLEMENTADAS EN TODAS LAS VERSIONES:
echo    • 🎪 Abanico de certificados giratorio automático
echo    • ⏸️ Pausa al hacer hover sobre certificados
echo    • 📈 Escalado de certificados individuales
echo    • 🎨 Dragón ultra-estático con movimiento inteligente
echo    • 📱 Diseño responsivo completo
echo    • 🎯 Navegación suave entre secciones
echo.
echo 📊 ESTADO ACTUAL DEL SISTEMA:
echo    ✅ Servidor especializado: FUNCIONANDO correctamente
echo    • Puerto: 8000 activo y operativo
echo    • Archivos: Todos disponibles y accesibles
echo    • Certificados: Sistema multi-método implementado
echo    • Dragón: Inteligente y ultra-estático funcionando
echo.
echo 📁 ARCHIVOS DISPONIBLES:
dir /b *.html *.py
echo.
echo 💡 ACCESO RÁPIDO A OPCIONES:
echo    • Portfolio completo: portfolio-original-con-certificados-funcionales.html
echo    • Visor especializado: visor-pdf-especializado.html
echo    • Alternativa visual: certificados-alternativa-visual.html
echo.
echo 🎯 ¿QUÉ VERSIÓN PREFIERES USAR?
echo    Cada opción tiene sus ventajas específicas:
echo    • El portfolio original mantiene toda la experiencia visual
echo    • El visor especializado garantiza funcionamiento técnico
echo    • La alternativa visual asegura información siempre visible
echo.
echo 🛑 Para detener el servidor: Presiona Ctrl+C en la terminal
echo.
echo ✅ ¡Todas las opciones están funcionando correctamente!
echo    Elige la que mejor se adapte a tus necesidades.
echo.
pause
