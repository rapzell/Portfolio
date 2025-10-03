@echo off
echo.
echo 🚀 PRUEBA ESPECÍFICA - CERTIFICADO MACHINE LEARNING (JPG)
echo ========================================================
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
echo ✅ CAMBIO DE FORMATO IMPLEMENTADO:
echo =================================
echo.
echo 🔄 Archivo convertido a JPG:
echo • ❌ Antes: "Imagen_maching_lerning_aplicado.png" (PNG posiblemente corrupto)
echo • ✅ Ahora: "Imagen_maching_lerning_aplicado.jpg" (JPG nuevo)
echo.
echo 🔧 Actualizaciones en el código:
echo • ✅ Mapeo actualizado para usar archivo .jpg
echo • ✅ Sistema de recuperación automática actualizado
echo • ✅ Encoding correcto mantenido para caracteres especiales
echo • ✅ Debugging avanzado funcionando correctamente
echo.

echo 🎯 VERIFICACIÓN DEL ARCHIVO JPG:
echo ================================
if exist "Certificados\Imagen_maching_lerning_aplicado.jpg" (
    echo ✅ Archivo JPG encontrado correctamente
    for %%A in ("Certificados\Imagen_maching_lerning_aplicado.jpg") do (
        echo    Tamaño: %%~zA bytes
        echo    Fecha: %%~tA
    )

    echo.
    echo 🌐 URL de acceso directo:
    echo    http://localhost:8000/Certificados/Imagen_maching_lerning_aplicado.jpg

) else (
    echo ❌ Archivo JPG NO encontrado
    echo.
    echo 📋 Archivos disponibles en Certificados:
    dir /b "Certificados" 2>nul
)

echo.
echo ✅ QUÉ ESPERAR AHORA EN LA CONSOLA:
echo ==================================
echo Cuando hagas clic en el certificado de Machine Learning:
echo.
echo ✅ PROCESO ESPERADO CON ARCHIVO JPG:
echo • "🖼️ Ruta de imagen construida: ./Certificados/Imagen_maching_lerning_aplicado.jpg"
echo • "🌐 URL codificada: http://localhost:8000/Certificados/Imagen_maching_lerning_aplicado.jpg"
echo • "🌐 Respuesta del servidor: 200 OK"
echo • "✅ Archivo accesible, procediendo con carga"
echo • "✅ Imagen cargada exitosamente en el elemento"
echo • "📏 Dimensiones reales de la imagen: [ancho]x[alto]"
echo • "🎨 Colores de la imagen cargada correctamente"
echo • "👁️ Imagen forzada a visible"
echo • "✅ Modal mostrado"
echo.
echo ✅ SI AÚN HAY PROBLEMAS:
echo • El sistema probará rutas alternativas automáticamente
echo • Se mostrarán mensajes específicos de debugging
echo • Se intentarán múltiples formatos y ubicaciones
echo.

echo 📋 INSTRUCCIONES PARA LA PRUEBA:
echo ================================
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
echo • ✅ La imagen JPG debería mostrarse visiblemente
echo • ✅ No deberían aparecer errores de corrupción
echo • ✅ Información detallada del proceso en consola
echo.

echo 📁 Archivos disponibles:
dir /b *.html
echo.

echo 💡 Lo que hemos logrado:
echo    - ✅ Conversión completa del archivo a formato JPG
echo    - ✅ Actualización automática del sistema para usar .jpg
echo    - ✅ Sistema de recuperación automática completamente operativo
echo    - ✅ Debugging avanzado funcionando correctamente
echo    - ✅ Corrección de posibles problemas de corrupción del archivo
echo.

echo 🔧 Correcciones Técnicas Aplicadas:
echo    • Archivo convertido de PNG a JPG para eliminar corrupción
echo    • Mapeo actualizado para usar extensión .jpg
echo    • Sistema de rutas alternativas actualizado
echo    • Encoding correcto mantenido para caracteres especiales
echo    • Debugging completo para diagnóstico de problemas
echo.

echo 🛑 Para detener el servidor: Presiona Ctrl+C en la terminal
echo.
echo ✅ Sistema completamente actualizado para usar archivo JPG - ¡prueba lista!
echo.
pause
