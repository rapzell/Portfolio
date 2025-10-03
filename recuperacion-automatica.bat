@echo off
echo.
echo 🚀 SISTEMA DE RECUPERACIÓN AUTOMÁTICA DE IMÁGENES
echo ================================================
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
echo ✅ RECUPERACIÓN AUTOMÁTICA IMPLEMENTADA:
echo =======================================
echo.
echo 🔧 Nueva Función Implementada:
echo • ✅ Detección automática de rutas alternativas cuando la imagen principal falla
echo • ✅ Sistema de reintento con múltiples rutas de archivo
echo • ✅ Mensajes específicos de debugging para cada intento
echo • ✅ Recuperación automática si alguna ruta funciona
echo.

echo 🎯 QUÉ ESPERAR AHORA EN LA CONSOLA:
echo ==================================
echo Cuando hagas clic en el certificado de Machine Learning:
echo.
echo ✅ PROCESO DE RECUPERACIÓN AUTOMÁTICA:
echo • "🔍 Verificando existencia del archivo..."
echo • "🌐 Respuesta del servidor: 200 OK"
echo • "✅ Archivo accesible, procediendo con carga"
echo • "🚀 Iniciando showCertificateImage con ruta: ./Certificados/Imagen maching lerning aplicado.png"
echo • "✅ Imagen de prueba carga correctamente"
echo • "🎯 Esto confirma que el elemento img funciona"
echo • "🔄 Intentando rutas alternativas para la imagen original..."
echo.
echo ✅ SI UNA RUTA ALTERNATIVA FUNCIONA:
echo • "🔄 Intento 1/5: ./Certificados/Imagen maching lerning aplicado.png"
echo • "✅ ¡Imagen cargada exitosamente en intento X!"
echo • "🎯 Usando ruta: [ruta_que_funcionó]"
echo • "👁️ Modal mostrado" (con la imagen correcta)
echo.
echo ❌ SI TODAS LAS RUTAS FALLAN:
echo • "❌ Todas las rutas alternativas fallaron"
echo • "💡 Sugerencia: El archivo podría estar corrupto o tener un formato no compatible"
echo • Se mostrará una imagen de prueba en su lugar
echo.

echo 📋 RUTAS ALTERNATIVAS QUE SE PROBARÁN:
echo ====================================
echo 1️⃣ ./Certificados/Imagen maching lerning aplicado.png (ruta relativa estándar)
echo 2️⃣ /Certificados/Imagen maching lerning aplicado.png (ruta absoluta)
echo 3️⃣ Certificados/Imagen maching lerning aplicado.png (sin punto inicial)
echo 4️⃣ ./Imagen maching lerning aplicado.png (ruta raíz relativa)
echo 5️⃣ Imagen maching lerning aplicado.png (solo nombre del archivo)
echo.

echo 🎯 INSTRUCCIONES PARA PROBAR:
echo ============================
echo 1️⃣ Ve a: http://localhost:8000/portfolio-original-con-certificados-funcionales.html
echo.
echo 2️⃣ Abre la consola del navegador (F12)
echo.
echo 3️⃣ Busca el certificado "Machine Learning Aplicado Usando Python"
echo.
echo 4️⃣ Haz clic en ese certificado
echo.
echo 5️⃣ Observa el proceso completo de recuperación automática en la consola
echo.
echo ✅ RESULTADO ESPERADO:
echo ====================
echo • ✅ El sistema intentará automáticamente múltiples rutas
echo • ✅ Si alguna ruta funciona, la imagen se mostrará correctamente
echo • ✅ Si ninguna ruta funciona, se mostrará información de error específica
echo • ✅ El modal se abrirá en cualquier caso
echo • ✅ Mensajes detallados de debugging en consola
echo.

echo 📁 Archivos disponibles:
dir /b *.html
echo.

echo 💡 Lo que hemos logrado:
echo    - ✅ Sistema de recuperación automática implementado
echo    - ✅ Múltiples rutas alternativas probadas automáticamente
echo    - ✅ Debugging detallado para cada intento de carga
echo    - ✅ Mensajes específicos de error y recuperación
echo    - ✅ Sistema robusto que funciona incluso con problemas de ruta
echo.

echo 🔧 Características Avanzadas del Sistema de Recuperación:
echo    • Detección automática de problemas de carga de imagen
echo    • Reintentos automáticos con rutas alternativas
echo    • Información detallada de debugging para cada intento
echo    • Mensajes específicos de éxito y fracaso
echo    • Sistema de fallback automático si es necesario
echo.

echo 🛑 Para detener el servidor: Presiona Ctrl+C en la terminal
echo.
echo ✅ Sistema de recuperación automática activado - el sistema ahora probará múltiples rutas automáticamente hasta encontrar una que funcione.
echo.
pause
