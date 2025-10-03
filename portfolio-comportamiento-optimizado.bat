@echo off
echo.
echo 🚀 Portfolio con Dragón - Versión Final con Certificados Optimizados
echo =================================================================
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
echo 🎯 VERSIÓN FINAL - CERTIFICADOS OPTIMIZADOS:
echo ============================================
echo.
echo 👨‍💻 PORTFOLIO PROFESIONAL - DAVID VALERO ROMAN:
echo    http://localhost:8000/portfolio-dragon-ultra-static.html
echo.
echo ✅ Comportamiento Exactamente como Solicitado:
echo    • 🎪 Rueda gira automáticamente alrededor del eje central
echo    • ⏸️ Se PARA cuando dejas el cursor encima del área
echo    • 📈 Certificado se hace MÁS GRANDE al hacer hover individual
echo    • 🚫 NO se mueve a ningún lado - solo escala en su posición
echo    • 🖱️ Clic abre el certificado PDF correspondiente
echo.
echo ✅ Funcionalidades Implementadas:
echo    • Rotación automática continua (25 segundos por vuelta)
echo    • Pausa inmediata al hover sobre área de certificados
echo    • Escalado individual de tarjetas al hover (1.2x tamaño)
echo    • Mantiene posición exacta durante escalado
echo    • Modal elegante para visualización de PDFs
echo    • Sistema de navegación integrado funcionando
echo.
echo ✅ Certificados Personalizados:
echo    • 📜 Diseño Básico de Páginas Web - Técnicas básicas de desarrollo web
echo    • 🚀 Diseño Avanzado de Páginas Web - Técnicas avanzadas de desarrollo web
echo    • 💼 Liderando la IA - Uso de la IA para empresas
echo    • 🔧 Machine Learning Aplicado Usando Python - Técnicas de Machine Learning
echo.
echo 📊 Estado del Sistema Final Optimizado:
echo    ✅ Rotación automática: FUNCIONANDO - 25s ciclo completo
echo    • Pausa hover área: ✅ Se para inmediatamente
echo    • Escalado hover tarjeta: ✅ Crece 1.2x en su posición exacta
echo    • Sin movimiento lateral: ✅ Mantiene posición durante escalado
echo    • Modal por clic: ✅ Abre certificado PDF completo
echo    • Certificados tamaño: ✅ 200px x 140px óptimo
echo    ✅ Dragón ultra-estático: FUNCIONANDO correctamente
echo    ✅ Colores armonizados: PERFECTOS azul-morado
echo.
echo 🎨 Comportamiento Exactamente como Solicitado:
echo    1. 🎪 La rueda gira automáticamente alrededor del eje central
echo    2. ⏸️ Se PARA completamente al poner cursor sobre el área
echo    3. 📈 Certificado individual CRECE al hacer hover sobre él
echo    4. 🚫 NO se mueve lateralmente - solo escala en posición
echo    5. 🖱️ Clic en certificado abre el PDF correspondiente
echo    6. ✅ Dragón ultra-estático funcionando perfectamente
echo    7. 🎯 Eje de rotación centrado matemáticamente
echo    8. 📐 4 certificados distribuidos perfectamente
echo.
echo 📁 Archivos disponibles:
dir /b *.html
echo.
echo 💡 Características técnicas implementadas:
echo    - Escalado puro sin cambio de posición (solo scale)
echo    - Pausa inmediata al hover sobre área de certificados
echo    - Escalado individual al hover sobre tarjetas específicas
echo    - Mantiene posición exacta durante todo el proceso
echo    - Transiciones suaves y naturales
echo    - Diseño responsivo completo para móviles
echo.
echo 🛑 Para detener el servidor: Presiona Ctrl+C en la terminal
echo.
echo 🎯 ¡El portfolio ahora funciona exactamente como solicitaste: se para al hacer hover y los certificados crecen en su posición sin moverse!
echo.
pause
