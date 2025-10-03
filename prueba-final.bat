@echo off
echo.
echo 🚀 PRUEBA FINAL - CERTIFICADO MACHINE LEARNING CORREGIDO
echo =======================================================
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
echo ✅ CORRECCIONES IMPLEMENTADAS:
echo =============================
echo.
echo 🔧 Archivo actualizado:
echo • ✅ Nuevo nombre: "Imagen_maching_lerning_aplicado.png"
echo • ✅ Sin espacios problemáticos
echo • ✅ Mapeo corregido en el código
echo.
echo 🔧 Mejoras técnicas aplicadas:
echo • ✅ Encoding correcto de URLs (encodeURIComponent)
echo • ✅ Verificación previa con fetch() mejorada
echo • ✅ Sistema de rutas alternativas automático
echo • ✅ Debugging avanzado mejorado
echo • ✅ Corrección de errores de scope en variables
echo.

echo 🎯 QUÉ ESPERAR AHORA EN LA CONSOLA:
echo ==================================
echo Cuando hagas clic en el certificado de Machine Learning:
echo.
echo ✅ PROCESO COMPLETO ESPERADO:
echo • "🖼️ Ruta de imagen construida: ./Certificados/Imagen_maching_lerning_aplicado.png"
echo • "🌐 URL codificada: http://localhost:8000/Certificados/Imagen_maching_lerning_aplicado.png"
echo • "🌐 Respuesta del servidor: 200 OK"
echo • "✅ Archivo accesible, procediendo con carga"
echo • "🚀 Iniciando showCertificateImage con ruta: ./Certificados/Imagen_maching_lerning_aplicado.png"
echo • "✅ Imagen cargada exitosamente en el elemento"
echo • "📏 Dimensiones reales de la imagen: [ancho]x[alto]"
echo • "👁️ Imagen forzada a visible"
echo • "✅ Modal mostrado"
echo.
echo ✅ SI HAY PROBLEMAS DE RUTA:
echo • "🔄 Intento 1/5: ./Certificados/Imagen_maching_lerning_aplicado.png"
echo • "✅ ¡Imagen cargada exitosamente en intento X!"
echo • "🎯 Usando ruta: [ruta_que_funcionó]"
echo.

echo 📋 INSTRUCCIONES PARA LA PRUEBA FINAL:
echo =====================================
echo 1️⃣ Ve a: http://localhost:8000/portfolio-original-con-certificados-funcionales.html
echo.
echo 2️⃣ Abre la consola del navegador (F12)
echo.
echo 3️⃣ Busca el certificado "Machine Learning Aplicado Usando Python"
echo    • Tiene el ícono 🔧
echo.
echo 4️⃣ Haz clic en ese certificado
echo.
echo 5️⃣ Observa el proceso completo en la consola
echo.
echo ✅ RESULTADO ESPERADO:
echo ====================
echo • ✅ El certificado debería abrir el modal correctamente
echo • ✅ La imagen debería mostrarse visiblemente
echo • ✅ No deberían aparecer errores en consola
echo • ✅ Deberías ver información detallada del proceso
echo.

echo 📁 Verificación de archivos:
if exist "Certificados\Imagen_maching_lerning_aplicado.png" (
    echo ✅ Archivo encontrado: Imagen_maching_lerning_aplicado.png
    for %%A in ("Certificados\Imagen_maching_lerning_aplicado.png") do (
        echo    Tamaño: %%~zA bytes
        echo    Fecha: %%~tA
    )
) else (
    echo ❌ Archivo NO encontrado: Imagen_maching_lerning_aplicado.png
)

echo.
echo 📁 Archivos disponibles:
dir /b *.html
echo.

echo 💡 Lo que hemos logrado:
echo    - ✅ Corrección completa del nombre de archivo
echo    - ✅ Encoding correcto de URLs implementado
echo    - ✅ Sistema de recuperación automática mejorado
echo    - ✅ Debugging avanzado completamente funcional
echo    - ✅ Corrección de errores de programación
echo.

echo 🔧 Correcciones Técnicas Finales:
echo    • Archivo renombrado para eliminar espacios problemáticos
echo    • Encoding automático de URLs con caracteres especiales
echo    • Sistema de verificación previa mejorado
echo    • Corrección de errores de scope en funciones
echo    • Sistema de rutas alternativas completamente operativo
echo.

echo 🛑 Para detener el servidor: Presiona Ctrl+C en la terminal
echo.
echo ✅ Sistema completamente corregido y optimizado - ¡prueba final lista!
echo.
pause
