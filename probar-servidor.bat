@echo off
echo.
echo 🚀 SERVIDOR DE PRUEBA PARA IMÁGENES
echo ===================================
echo.

echo 🎯 OBJETIVO:
echo ============
echo Probar si el archivo de imagen se puede servir correctamente
echo desde un servidor HTTP independiente.
echo.

echo 📋 INFORMACIÓN DEL ARCHIVO:
echo ===========================
echo Archivo a probar: Imagen maching lerning aplicado.png
echo Ubicación esperada: Certificados/Imagen maching lerning aplicado.png
echo.

echo 🔍 VERIFICACIÓN PREVIA:
echo ======================
if exist "Certificados\Imagen maching lerning aplicado.png" (
    echo ✅ Archivo encontrado correctamente
    for %%A in ("Certificados\Imagen maching lerning aplicado.png") do (
        echo    Tamaño: %%~zA bytes
        echo    Fecha: %%~tA
    )
) else (
    echo ❌ Archivo NO encontrado
    echo.
    echo 📋 Archivos disponibles en Certificados:
    dir /b "Certificados" 2>nul
)

echo.
echo 🚀 INICIANDO SERVIDOR DE PRUEBA:
echo ================================
echo.
echo 🌐 El servidor se iniciará en: http://localhost:8001
echo 🎯 Prueba la imagen en: http://localhost:8001/Certificados/Imagen%%20maching%%20lerning%%20aplicado.png
echo.
echo 📝 INSTRUCCIONES:
echo ================
echo 1. Espera a que el servidor termine de iniciarse
echo 2. Abre un navegador y ve a la URL indicada arriba
echo 3. Si la imagen se muestra correctamente, el problema está en el servidor original
echo 4. Si la imagen NO se muestra, puede haber un problema con el archivo mismo
echo.

echo ✅ Características del servidor de prueba:
echo =========================================
echo • Puerto diferente (8001) para evitar conflictos
echo • Headers CORS habilitados para navegadores modernos
echo • Tipo MIME correcto forzado para archivos PNG
echo • Logging detallado de solicitudes
echo.

echo 🛑 Para detener el servidor: Presiona Ctrl+C
echo.
echo 🚀 Iniciando servidor de prueba...
echo.

python servidor_prueba.py
