@echo off
echo.
echo 🚀 DIAGNÓSTICO TÉCNICO - PROBLEMA DEL SERVIDOR
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
echo ✅ PÁGINA DE DIAGNÓSTICO TÉCNICO CREADA:
echo =======================================
echo.
echo 🌐 URL de diagnóstico: http://localhost:8000/diagnostico-servidor.html
echo.
echo 🔧 Esta página proporciona:
echo • ✅ Pruebas automáticas de carga de imagen
echo • ✅ Verificación técnica con fetch()
echo • ✅ Pruebas de rutas alternativas automáticas
echo • ✅ Información detallada del sistema
echo • ✅ Diagnóstico completo del problema del servidor
echo • ✅ URLs para probar manualmente en el navegador
echo.

echo 📋 CÓMO USAR LA PÁGINA DE DIAGNÓSTICO:
echo ====================================
echo 1️⃣ Ve a: http://localhost:8000/diagnostico-servidor.html
echo.
echo 2️⃣ La página se cargará y ejecutará pruebas automáticamente
echo.
echo 3️⃣ Observa los resultados en tiempo real:
echo    • ✅ Verás qué rutas funcionan
echo    • ✅ Verás información técnica detallada
echo    • ✅ Verás posibles soluciones sugeridas
echo.
echo 4️⃣ Prueba manualmente las URLs sugeridas:
echo    • Copia las URLs de la sección "Acceso Directo desde Navegador"
echo    • Pégalas en una nueva pestaña del navegador
echo    • Verifica si muestran la imagen o "Archivo no encontrado"
echo.

echo 🎯 QUÉ ESPERAMOS ENCONTRAR:
echo ==========================
echo.
echo ✅ Resultado ideal:
echo • Una de las rutas debería mostrar la imagen correctamente
echo • El tipo MIME debería ser "image/jpeg"
echo • El tamaño debería ser razonable para una imagen JPG
echo.
echo ❌ Si todas las rutas fallan:
echo • Necesitaremos verificar la ubicación física del archivo
echo • Puede haber problemas de permisos del servidor
echo • Puede haber configuración incorrecta del servidor HTTP
echo.

echo 📁 Archivos disponibles:
dir /b *.html
echo.

echo 💡 Lo que hemos logrado:
echo    - ✅ Página de diagnóstico técnico profesional creada
echo    - ✅ Pruebas automáticas implementadas
echo    - ✅ Información detallada del sistema incluida
echo    - ✅ Diagnóstico completo del problema del servidor
echo    - ✅ Múltiples estrategias de verificación implementadas
echo.

echo 🔧 Características Técnicas del Diagnóstico:
echo    • Pruebas automáticas de carga de imagen
echo    - Verificación técnica con fetch() avanzada
echo    - Pruebas sistemáticas de rutas alternativas
echo    - Información del sistema completa
echo    - Diagnóstico de problemas del servidor
echo    - URLs para pruebas manuales en navegador
echo.

echo 🛑 Para detener el servidor: Presiona Ctrl+C en la terminal
echo.
echo ✅ Página de diagnóstico técnico lista - accede a http://localhost:8000/diagnostico-servidor.html para identificar exactamente dónde está el problema del servidor.
echo.
pause
