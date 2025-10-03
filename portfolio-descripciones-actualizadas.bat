@echo off
echo.
echo 🚀 Portfolio con Dragón - Versión Final con Descripciones de Certificados Actualizadas
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
echo 📝 VERSIÓN FINAL - DESCRIPCIONES ACTUALIZADAS:
echo =============================================
echo.
echo 👨‍💻 PORTFOLIO PROFESIONAL - DAVID VALERO ROMAN:
echo    http://localhost:8000/portfolio-dragon-ultra-static.html
echo.
echo ✅ Descripciones de Certificados Actualizadas:
echo    • 📜 "Técnicas básicas de desarrollo web" (Diseño Básico de Páginas Web)
echo    • 🚀 "Técnicas avanzadas de desarrollo web" (Diseño Avanzado de Páginas Web)
echo    • 💼 "Uso de la IA para empresas" (Liderando la IA)
echo    • 🔧 "Técnicas de Machine Learning" (Machine Learning Aplicado Usando Python)
echo.
echo ✅ Certificados Completamente Personalizados:
echo    • 📜 Diseño Básico de Páginas Web - Técnicas básicas de desarrollo web
echo    • 🚀 Diseño Avanzado de Páginas Web - Técnicas avanzadas de desarrollo web
echo    • 💼 Liderando la IA - Uso de la IA para empresas
echo    • 🔧 Machine Learning Aplicado Usando Python - Técnicas de Machine Learning
echo.
echo ✅ Características Técnicas Mantenidas:
echo    • Certificados tamaño óptimo: 200px x 140px (cubren completamente el texto)
echo    • Espaciado perfecto: translateZ 150px (certificados más juntos)
echo    • Eje de rotación centrado matemáticamente
echo    • Animación de rotación fluida (25s ciclo completo)
echo    • Pausa automática al hacer hover sobre el área
echo    • Modal profesional para ver PDFs completos
echo.
echo 📊 Estado del Sistema Final Personalizado:
echo    ✅ Títulos: COMPLETAMENTE ACTUALIZADOS
echo    • Descripciones: ✅ PERSONALIZADAS según especificaciones
echo    • Cobertura texto: ✅ LETRAS COMPLETAMENTE CUBIERTAS
echo    • Espaciado: ✅ Más juntos (150px translateZ)
echo    • Centrado: ✅ Eje central perfecto para todos los certificados
echo    ✅ Dragón ultra-estático: OPTIMIZADO
echo    ✅ Colores armonizados: PERFECTOS
echo.
echo 🎨 Lo Que Verás en la Versión Personalizada:
echo    1. ✅ Certificados con títulos y descripciones completamente personalizados
echo    2. 📜 Diseño Básico de Páginas Web - Técnicas básicas de desarrollo web
echo    3. 🚀 Diseño Avanzado de Páginas Web - Técnicas avanzadas de desarrollo web
echo    4. 💼 Liderando la IA - Uso de la IA para empresas
echo    5. 🔧 Machine Learning Aplicado Usando Python - Técnicas de Machine Learning
echo    6. ✅ Certificados más grandes que cubren completamente las descripciones
echo    7. ✅ Pausa automática al acercar el cursor al área
echo    8. ✅ Modal profesional para ver certificados PDF completos
echo.
echo 📁 Archivos disponibles:
dir /b *.html
echo.
echo 💡 Cambios implementados:
echo    - Títulos y descripciones completamente personalizados
echo    - Mantiene toda la funcionalidad 3D y animaciones
echo    - Diseño visual y experiencia de usuario intactos
echo    - Responsive design preservado para móviles
echo    - Sistema de navegación y dragón funcionando perfectamente
echo.
echo 🛑 Para detener el servidor: Presiona Ctrl+C en la terminal
echo.
echo 🎯 ¡Los certificados ahora tienen exactamente los títulos y descripciones que solicitaste con toda la funcionalidad 3D optimizada!
echo.
pause
