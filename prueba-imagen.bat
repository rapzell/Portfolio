@echo off
echo.
echo 🚀 PRUEBA DIRECTA DE LA IMAGEN DEL CERTIFICADO
echo =============================================
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
echo 🎯 PRUEBA DIRECTA DE LA IMAGEN:
echo ===============================
echo.
echo 📋 Página de prueba creada: test-image.html
echo 🌐 URL de prueba: http://localhost:8000/test-image.html
echo.

echo ✅ QUÉ HACER:
echo ============
echo 1️⃣ Abre la página de prueba en tu navegador
echo 2️⃣ Verifica si la imagen se muestra correctamente
echo 3️⃣ Abre la consola del navegador (F12) para ver mensajes de diagnóstico
echo.

echo 🔍 QUÉ ESPERAR:
echo ===============
echo ✅ Si funciona correctamente:
echo    • La imagen se mostrará en la página
echo    • Verás "✅ Imagen cargada correctamente" debajo de la imagen
echo    • En consola: "✅ Imagen cargada exitosamente"
echo.
echo ❌ Si hay problemas:
echo    • Verás "❌ Error cargando imagen" debajo de la imagen
echo    • En consola: mensajes de error específicos
echo    • Podrás identificar exactamente cuál es el problema
echo.

echo 📋 Archivos disponibles:
dir /b *.html
echo.

echo 💡 Lo que hemos logrado:
echo    - ✅ Página de prueba creada específicamente para diagnosticar
echo    - ✅ Logging detallado implementado
echo    - ✅ Verificaciones automáticas de carga de imagen
echo    - ✅ Información de diagnóstico en tiempo real
echo.

echo 🔧 Características de la página de prueba:
echo    • Carga directa de la imagen sin intermediarios
echo    • Eventos onload/onerror para detectar problemas
echo    • Fetch adicional para verificar accesibilidad del servidor
echo    • Información visual clara del estado de carga
echo.

echo 🛑 Para detener el servidor: Presiona Ctrl+C en la terminal
echo.
echo ✅ Página de prueba lista - accede a http://localhost:8000/test-image.html para diagnosticar el problema con la imagen.
echo.
pause
