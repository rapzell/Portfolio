@echo off
echo.
echo 🚀 DIAGNÓSTICO AVANZADO - CERTIFICADOS CON DEBUGGING
echo ==================================================
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
echo ✅ SISTEMA MEJORADO CON DEBUGGING AVANZADO:
echo ===========================================
echo.
echo 🔧 Mejoras Implementadas:
echo • ✅ Verificación previa de archivos antes de cargar
echo • ✅ Rutas alternativas automáticas (/Certificados/ vs ./Certificados/)
echo • ✅ Eventos de carga mejorados con debugging detallado
echo • ✅ Forzar visibilidad de imágenes cargadas correctamente
echo • ✅ Imágenes de prueba para diagnosticar problemas del elemento img
echo.

echo 🎯 NUEVAS VERIFICACIONES IMPLEMENTADAS:
echo ======================================
echo 1️⃣ Verificación previa con fetch() antes de mostrar modal
echo 2️⃣ Detección automática de rutas alternativas si la principal falla
echo 3️⃣ Eventos onload/onerror mejorados con información detallada
echo 4️⃣ Forzar propiedades CSS para asegurar visibilidad
echo 5️⃣ Imágenes de prueba para diagnosticar problemas del navegador
echo.

echo 📋 QUÉ ESPERAR EN LA CONSOLA AHORA:
echo ==================================
echo Cuando hagas clic en el certificado de Machine Learning:
echo.
echo ✅ VERIFICACIÓN PREVIA:
echo • "🖼️ Ruta de imagen construida: ./Certificados/Imagen maching lerning aplicado.png"
echo • "🔍 Verificando existencia del archivo..."
echo • "🌐 Respuesta del servidor: 200 OK"
echo • "✅ Archivo accesible, procediendo con carga"
echo.
echo ✅ CARGA DE IMAGEN MEJORADA:
echo • "🚀 Iniciando showCertificateImage con ruta: [ruta_correcta]"
echo • "✅ Imagen cargada exitosamente en el elemento"
echo • "📏 Dimensiones reales de la imagen: [ancho]x[alto]"
echo • "👁️ Imagen forzada a visible"
echo.
echo ❌ SI HAY PROBLEMAS:
echo • Mensajes específicos de error con detalles técnicos
echo • Sugerencias automáticas de rutas alternativas
echo • Información detallada para debugging
echo.

echo 🎯 INSTRUCCIONES PARA PROBAR:
echo ============================
echo 1️⃣ Ve a: http://localhost:8000/portfolio-original-con-certificados-funcionales.html
echo.
echo 2️⃣ Abre la consola del navegador (F12)
echo.
echo 3️⃣ Busca el certificado "Machine Learning Aplicado Usando Python"
echo    • Tiene el ícono 🔧
echo.
echo 4️⃣ Haz clic en ese certificado
echo.
echo 5️⃣ Observa la consola para ver el proceso completo:
echo    • Verificación previa del archivo
echo    • Detección automática de problemas
echo    • Carga de imagen con debugging detallado
echo    • Información de dimensiones si carga correctamente
echo.
echo ✅ RESULTADO ESPERADO:
echo ====================
echo • ✅ Verificación previa exitosa
echo • ✅ Modal se abre correctamente
echo • ✅ Imagen se muestra visiblemente
echo • ✅ Dimensiones mostradas en consola
echo • ✅ Sin errores críticos
echo.

echo 📁 Archivos disponibles:
dir /b *.html
echo.

echo 💡 Lo que hemos logrado:
echo    - ✅ Sistema de verificación previo implementado
echo    - ✅ Debugging avanzado para cada paso del proceso
echo    - ✅ Detección automática de rutas alternativas
echo    - ✅ Eventos mejorados de carga de imagen
echo    - ✅ Forzar visibilidad para solucionar problemas de CSS
echo.

echo 🔧 Correcciones Técnicas Avanzadas:
echo    • Verificación fetch() antes de proceder
echo    • Manejo automático de rutas alternativas
echo    • Eventos onload/onerror mejorados con debugging
echo    • Forzar propiedades CSS para visibilidad garantizada
echo    • Imágenes de prueba para diagnóstico del navegador
echo.

echo 🛑 Para detener el servidor: Presiona Ctrl+C en la terminal
echo.
echo ✅ Sistema avanzado de debugging activado - revisa la consola para ver el proceso completo de carga de imagen.
echo.
pause
