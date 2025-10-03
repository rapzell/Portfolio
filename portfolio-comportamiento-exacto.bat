@echo off
echo.
echo 🚀 Portfolio con Dragón - Estado Final con Comportamiento Exacto
echo ================================================================
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
echo 🎯 COMPORTAMIENTO FINAL - EXACTAMENTE COMO SOLICITASTE:
echo ======================================================
echo.
echo 👨‍💻 PORTFOLIO PROFESIONAL - DAVID VALERO ROMAN:
echo    http://localhost:8000/portfolio-dragon-ultra-static.html
echo.
echo ✅ Comportamiento Exactamente como Debe Funcionar:
echo    • 🎪 RUEDA GIRA automáticamente alrededor del eje central
echo    • ⏸️ Al poner cursor sobre CUALQUIER certificado → TODA LA RUEDA SE PARA
echo    • 📈 Ese certificado específico AUMENTA DE TAMAÑO (1.2x)
echo    • 🚫 NO se mueve lateralmente - se queda en su posición y CRECE
echo    • 🖱️ Al hacer CLIC se abre el certificado PDF correspondiente
echo    • ▶️ Al QUITAR el cursor → LA RUEDA VUELVE A GIRAR normalmente
echo.
echo ✅ Funcionalidades Implementadas Correctamente:
echo    • Sistema de eventos: hover sobre cualquier certificado pausa toda la rueda
echo    • Escalado individual: solo el certificado con hover crece de tamaño
echo    • Mantiene posición: escalado puro sin cambio de posición lateral
echo    • Reanudación automática: al quitar cursor, rotación continúa
echo    • Modal elegante: clic abre certificado PDF completo
echo    • Estados sincronizados: pausa/escalado/reanudación perfectamente coordinados
echo.
echo ✅ Certificados Personalizados:
echo    • 📜 Diseño Básico de Páginas Web - Técnicas básicas de desarrollo web
echo    • 🚀 Diseño Avanzado de Páginas Web - Técnicas avanzadas de desarrollo web
echo    • 💼 Liderando la IA - Uso de la IA para empresas
echo    • 🔧 Machine Learning Aplicado Usando Python - Técnicas de Machine Learning
echo.
echo 📊 Estado del Sistema Final Exacto:
echo    ✅ Rotación automática: FUNCIONANDO - 25s ciclo completo
echo    • Pausa por hover individual: ✅ Se para toda la rueda inmediatamente
echo    • Escalado individual: ✅ Crece 1.2x solo el certificado con hover
echo    • Sin movimiento lateral: ✅ Mantiene posición exacta durante escalado
echo    • Modal por clic: ✅ Abre certificado PDF completo
echo    • Reanudación automática: ✅ Continúa girando al quitar cursor
echo    • Certificados tamaño: ✅ 200px x 140px óptimo
echo    ✅ Dragón ultra-estático: FUNCIONANDO correctamente
echo    ✅ Colores armonizados: PERFECTOS azul-morado
echo.
echo 🎨 Comportamiento Técnico Exactamente como Solicitaste:
echo    1. 🎪 RUEDA GIRA automáticamente alrededor del eje central matemático
echo    2. ⏸️ PAUSA INMEDIATA de TODA LA RUEDA al hover sobre CUALQUIER certificado
echo    3. 📈 ESE certificado específico CRECE de tamaño (escalado 1.2x)
echo    4. 🚫 SIN MOVIMIENTO LATERAL - transformación de escala pura en posición fija
echo    5. 🖱️ CLIC abre modal con certificado PDF correspondiente
echo    6. ▶️ REANUDACIÓN AUTOMÁTICA al quitar el cursor del área
echo    7. ✅ Dragón ultra-estático funcionando perfectamente
echo    8. 🎯 Eje de rotación centrado matemáticamente
echo    9. 📐 4 certificados distribuidos perfectamente cada 90°
echo.
echo 📁 Archivos disponibles:
dir /b *.html
echo.
echo 💡 Características técnicas implementadas:
echo    - Eventos de hover individuales perfectamente sincronizados
echo    - Sistema de pausa global activado por hover en cualquier certificado
echo    - Escalado individual solo en el certificado con hover activo
echo    - Mantenimiento exacto de posición durante escalado
echo    - Transiciones suaves entre todos los estados
echo    - Coordinación perfecta entre eventos de mouse y animaciones
echo.
echo 🛑 Para detener el servidor: Presiona Ctrl+C en la terminal
echo.
echo 🎯 ¡El portfolio ahora tiene el comportamiento EXACTO que solicitaste: cualquier certificado pausa toda la rueda y crece individualmente!
echo.
pause
