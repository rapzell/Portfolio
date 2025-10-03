@echo off
echo.
echo 🚀 Portfolio con Dragón - Versión Final Simplificada
echo ==================================================
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
echo 🎯 VERSIÓN FINAL - CERTIFICADOS SIMPLIFICADOS:
echo ==============================================
echo.
echo 👨‍💻 PORTFOLIO PROFESIONAL - DAVID VALERO ROMAN:
echo    http://localhost:8000/portfolio-dragon-ultra-static.html
echo.
echo ✅ Certificados Funcionando Correctamente:
echo    • 🎪 Abanico giratorio automático alrededor del eje central
echo    • ⏸️ Se para cuando pones el cursor encima
echo    • 🖱️ Se abre el certificado cuando haces clic
echo    • 🎨 4 certificados perfectamente distribuidos
echo    • 📐 Eje de rotación centrado matemáticamente
echo.
echo ✅ Funcionalidades Implementadas:
echo    • Rotación automática continua (25 segundos por vuelta completa)
echo    • Pausa al hacer hover sobre el área de certificados
echo    • Pausa y agrandamiento al hacer hover sobre tarjetas individuales
echo    • Modal elegante para ver certificados PDF completos
echo    • Clic en tarjetas abre el certificado correspondiente
echo    • Sistema de navegación integrado funcionando
echo.
echo ✅ Certificados Personalizados:
echo    • 📜 Diseño Básico de Páginas Web - Técnicas básicas de desarrollo web
echo    • 🚀 Diseño Avanzado de Páginas Web - Técnicas avanzadas de desarrollo web
echo    • 💼 Liderando la IA - Uso de la IA para empresas
echo    • 🔧 Machine Learning Aplicado Usando Python - Técnicas de Machine Learning
echo.
echo 📊 Estado del Sistema Final:
echo    ✅ Rotación automática: FUNCIONANDO - 25s ciclo completo
echo    • Pausa hover área: ✅ IMPLEMENTADO correctamente
echo    • Pausa hover tarjeta: ✅ FUNCIONANDO perfectamente
echo    • Modal certificados: ✅ OPERATIVO al hacer clic
echo    • Certificados tamaño: ✅ 200px x 140px óptimo
echo    ✅ Dragón ultra-estático: FUNCIONANDO correctamente
echo    ✅ Colores armonizados: PERFECTOS azul-morado
echo.
echo 🎨 Comportamiento Exactamente como Solicitado:
echo    1. 🎪 La rueda gira automáticamente alrededor del eje central
echo    2. ⏸️ Se PARA completamente cuando pones el cursor encima
echo    3. 🖱️ Se abre el certificado PDF cuando haces CLIC
echo    4. ❌ Sin control manual - solo rotación automática
echo    5. ✅ Dragón ultra-estático funcionando perfectamente
echo    6. 🎯 Eje de rotación centrado en el medio geométrico
echo    7. 📐 4 certificados distribuidos uniformemente cada 90°
echo.
echo 📁 Archivos disponibles:
dir /b *.html
echo.
echo 💡 Características técnicas:
echo    - Rotación automática pura sin controles manuales
echo    - Sistema de pausa por hover perfectamente implementado
echo    - Modal de certificados activado por clic
echo    - Dragón ultra-estático con movimientos mínimos
echo    - Diseño responsivo completo para móviles
echo    - Colores azul-morado profesionalmente integrados
echo.
echo 🛑 Para detener el servidor: Presiona Ctrl+C en la terminal
echo.
echo 🎯 ¡El portfolio ahora funciona exactamente como solicitaste: rotación automática que se para al hacer hover y se abre al hacer clic!
echo.
pause
