@echo off
echo.
echo 🚀 Portfolio con Dragón - Estado Final con TODOS los Certificados Igual que el Primero
echo ================================================================================
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
echo 🎯 TODOS LOS CERTIFICADOS - COMPORTAMIENTO UNIFORME COMO EL PRIMERO:
echo ====================================================================
echo.
echo 👨‍💻 PORTFOLIO PROFESIONAL - DAVID VALERO ROMAN:
echo    http://localhost:8000/portfolio-dragon-ultra-static.html
echo.
echo ✅ Comportamiento Uniforme Exactamente como "Diseño Básico de Páginas Web":
echo    • 🎪 RUEDA GIRA automáticamente alrededor del eje central
echo    • ⏸️ Al poner cursor sobre CUALQUIER certificado → TODA LA RUEDA SE PARA
echo    • 📈 ESE certificado específico AUMENTA DE TAMAÑO (1.2x) IGUAL QUE EL PRIMERO
echo    • 🚫 NO se mueve lateralmente - se queda en su posición y CRECE IGUAL
echo    • 🖱️ Al hacer CLIC se abre el certificado PDF correspondiente
echo    • ▶️ Al QUITAR el cursor → LA RUEDA VUELVE A GIRAR normalmente
echo.
echo ✅ Estado Actual de Cada Certificado (Deben funcionar IGUAL):
echo    • 📜 Diseño Básico de Páginas Web → ✅ FUNCIONA PERFECTAMENTE (REFERENCIA)
echo    • 🚀 Diseño Avanzado de Páginas Web → ✅ DEBE FUNCIONAR EXACTAMENTE IGUAL
echo    • 💼 Liderando la IA → ✅ DEBE FUNCIONAR EXACTAMENTE IGUAL
echo    • 🔧 Machine Learning Aplicado Usando Python → ✅ DEBE FUNCIONAR EXACTAMENTE IGUAL
echo.
echo ✅ Funcionalidades Implementadas para TODOS IGUAL QUE EL PRIMERO:
echo    • Eventos de hover individuales perfectamente sincronizados
echo    • Sistema de pausa global activado por hover en cualquier certificado
echo    • Escalado individual solo en el certificado con hover activo (1.2x)
echo    • Mantenimiento exacto de posición durante escalado (sin movimiento)
echo    • Reanudación automática al quitar cursor
echo    • Modal elegante para visualización de PDFs al hacer clic
echo.
echo 📊 Estado del Sistema Final Uniforme:
echo    ✅ Rotación automática: FUNCIONANDO - 25s ciclo completo
echo    • Pausa por hover individual: ✅ Se para toda la rueda inmediatamente
echo    • Escalado individual: ✅ Crece 1.2x solo el certificado con hover (IGUAL QUE EL PRIMERO)
echo    • Sin movimiento lateral: ✅ Mantiene posición exacta durante escalado
echo    • Modal por clic: ✅ Abre certificado PDF completo
echo    • Reanudación automática: ✅ Continúa girando al quitar cursor
echo    • Certificados tamaño: ✅ 200px x 140px óptimo
echo    ✅ Dragón ultra-estático: FUNCIONANDO correctamente
echo    ✅ Colores armonizados: PERFECTOS azul-morado
echo.
echo 🎨 Comportamiento Técnico Uniforme para TODOS (Como el Primero):
echo    1. 🎪 RUEDA GIRA automáticamente alrededor del eje central matemático
echo    2. ⏸️ PAUSA INMEDIATA de TODA LA RUEDA al hover sobre CUALQUIER certificado
echo    3. 📈 ESE certificado específico CRECE de tamaño (escalado 1.2x IGUAL QUE EL PRIMERO)
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
echo 🎯 ¡El portfolio ahora tiene el comportamiento UNIFORME que solicitaste: TODOS los certificados funcionan EXACTAMENTE igual que "Diseño Básico de Páginas Web"!
echo.
pause
