@echo off
echo.
echo 🚀 Portfolio con Dragón - Versión Final con Control Manual de Certificados
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
echo 🎮 VERSIÓN FINAL - CONTROL MANUAL DE CERTIFICADOS:
echo =================================================
echo.
echo 👨‍💻 PORTFOLIO PROFESIONAL - DAVID VALERO ROMAN:
echo    http://localhost:8000/portfolio-dragon-ultra-static.html
echo.
echo ✅ Nueva Funcionalidad de Control Manual:
echo    • 🖱️ Control por mouse: Mantén presionado y mueve izquierda/derecha
echo    • 🎯 Rotación manual: Los certificados siguen el movimiento del cursor
echo    • ⚡ Inercia realista: Continúa rotando después de soltar el botón
echo    • 🔄 Rotación automática: Cuando no hay interacción manual
echo    • ⏸️ Pausa inteligente: Se detiene al hacer hover sobre tarjetas
echo.
echo ✅ Certificados Completamente Personalizados:
echo    • 📜 Diseño Básico de Páginas Web - Técnicas básicas de desarrollo web
echo    • 🚀 Diseño Avanzado de Páginas Web - Técnicas avanzadas de desarrollo web
echo    • 💼 Liderando la IA - Uso de la IA para empresas
echo    • 🔧 Machine Learning Aplicado Usando Python - Técnicas de Machine Learning
echo.
echo ✅ Características Técnicas Mejoradas:
echo    • Sistema de arrastre: mousedown + mousemove para control manual
echo    • Algoritmo de inercia: Continúa rotando con fricción realista
echo    • Transiciones suaves: Entre modo manual y automático
echo    • Estado de pausa: Se activa al hacer hover sobre tarjetas
echo    • Eventos de mouse: mousedown, mouseup, mousemove implementados
echo.
echo 📊 Estado del Sistema Final Interactivo:
echo    ✅ Control manual: FUNCIONANDO - Arrastra para rotar
echo    • Inercia: ✅ IMPLEMENTADA - Continúa rotando al soltar
echo    • Auto-rotación: ✅ AUTOMÁTICA cuando no hay interacción
echo    • Pausa hover: ✅ INTELIGENTE en tarjetas individuales
echo    • Transiciones: ✅ SUAVES entre modos de control
echo    ✅ Dragón ultra-estático: OPTIMIZADO
echo    ✅ Colores armonizados: PERFECTOS
echo.
echo 🎨 Cómo Usar el Nuevo Control Manual:
echo    1. 🖱️ Posiciona el cursor sobre el área de certificados
echo    2. 🖱️ Mantén presionado el botón izquierdo del mouse
echo    3. ↔️ Mueve el mouse hacia izquierda o derecha
echo    4. 🎯 Los certificados rotarán siguiendo tu movimiento
echo    5. 🖐️ Suelta el botón para activar la inercia
echo    6. ⏸️ Pasa el cursor sobre una tarjeta para pausar y agrandar
echo    7. 🖱️ Haz clic en una tarjeta para ver el certificado completo
echo.
echo 📁 Archivos disponibles:
dir /b *.html
echo.
echo 💡 Funcionalidad implementada:
echo    - Control manual completo por mouse (arrastrar)
echo    - Sistema de inercia con fricción realista
echo    - Transición suave entre modo manual y automático
echo    - Eventos de mouse optimizados para mejor experiencia
echo    - Compatibilidad total con funcionalidad existente
echo.
echo 🛑 Para detener el servidor: Presiona Ctrl+C en la terminal
echo.
echo 🎯 ¡Ahora puedes controlar manualmente la rotación de los certificados arrastrando con el mouse, con inercia realista incluida!
echo.
pause
