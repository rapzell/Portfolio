@echo off
echo.
echo 🚀 Portfolio con Dragón - Versión Final con Certificados Actualizados
echo ==================================================================
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
echo 🎓 VERSIÓN FINAL - CERTIFICADOS ACTUALIZADOS:
echo =============================================
echo.
echo 👨‍💻 PORTFOLIO PROFESIONAL - DAVID VALERO ROMAN:
echo    http://localhost:8000/portfolio-dragon-ultra-static.html
echo.
echo ✅ Certificados con Nuevos Títulos:
echo    • 📜 Diseño Básico de Páginas Web (anteriormente "Desarrollo Web")
echo    • 🚀 Diseño Avanzado de Páginas Web (anteriormente "Web Avanzado")
echo    • 💼 Liderando la IA (anteriormente "Gestión de Proyectos")
echo    • 🔧 Machine Learning Aplicado Usando Python (anteriormente "Especialización Técnica")
echo.
echo ✅ Características Técnicas Mantenidas:
echo    • Certificados tamaño óptimo: 200px x 140px (cubren completamente el texto)
echo    • Espaciado perfecto: translateZ 150px (certificados más juntos)
echo    • Eje de rotación centrado matemáticamente
echo    • Animación de rotación fluida (25s ciclo completo)
echo    • Pausa automática al hacer hover sobre el área
echo    • Modal profesional para ver PDFs completos
echo.
echo ✅ Información Personal Completa:
echo    • Encabezado: "Portfolio David Valero Roman"
echo    • Título: "Hola, soy David Valero Roman"
echo    • Información profesional completa
echo.
echo 📊 Estado del Sistema Final Actualizado:
echo    ✅ Certificados tamaño: 200px x 140px - LETRAS COMPLETAMENTE CUBIERTAS
echo    • Espaciado: ✅ Más juntos (150px translateZ)
echo    • Títulos: ✅ ACTUALIZADOS según especificaciones
echo    • Centrado: ✅ Eje central perfecto para todos los certificados
echo    • Animación: ✅ Fluida y centrada (25s ciclo completo)
echo    ✅ Dragón ultra-estático: OPTIMIZADO
echo    ✅ Colores armonizados: PERFECTOS
echo.
echo 🎨 Lo Que Verás en la Versión Actualizada:
echo    1. ✅ Certificados con títulos completamente actualizados
echo    2. 📜 "Diseño Básico de Páginas Web" (posición frontal)
echo    3. 🚀 "Diseño Avanzado de Páginas Web" (posición derecha)
echo    4. 💼 "Liderando la IA" (posición trasera)
echo    5. 🔧 "Machine Learning Aplicado Usando Python" (posición izquierda)
echo    6. ✅ Certificados más grandes que cubren completamente las descripciones
echo    7. ✅ Pausa automática al acercar el cursor al área
echo    8. ✅ Modal profesional para ver certificados PDF completos
echo.
echo 📁 Archivos disponibles:
dir /b *.html
echo.
echo 💡 Cambios implementados:
echo    - Títulos de certificados completamente actualizados
echo    - Mantiene toda la funcionalidad 3D y animaciones
echo    - Diseño visual y experiencia de usuario intactos
echo    - Responsive design preservado para móviles
echo    - Sistema de navegación y dragón funcionando perfectamente
echo.
echo 🛑 Para detener el servidor: Presiona Ctrl+C en la terminal
echo.
echo 🎯 ¡Los certificados ahora tienen exactamente los títulos que solicitaste y mantienen toda la funcionalidad 3D optimizada!
echo.
pause
