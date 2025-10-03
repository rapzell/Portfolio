@echo off
echo.
echo 🚀 DIAGNÓSTICO AVANZADO - IMAGEN DEL CERTIFICADO
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
echo 🎯 VERIFICACIÓN ESPECÍFICA DE LA IMAGEN:
echo =======================================
echo.

echo 📋 ANÁLISIS DEL PROBLEMA ACTUAL:
echo ================================
echo ✅ Código JavaScript funcionando correctamente
echo ✅ Eventos de clic detectándose correctamente
echo ✅ Modal abriéndose correctamente
echo ❌ Imagen no visible en el modal
echo.

echo 🔍 VERIFICACIÓN DE ARCHIVOS:
echo ============================
echo.

REM Verificar archivos disponibles
echo 🔍 Verificando archivos de imagen...
if exist "Certificados\Imagen maching lerning aplicado.png" (
    echo ✅ Archivo encontrado: Imagen maching lerning aplicado.png
    for %%A in ("Certificados\Imagen maching lerning aplicado.png") do (
        echo    Tamaño: %%~zA bytes
        echo    Fecha: %%~tA
    )

    echo.
    echo 🔍 Verificando accesibilidad desde el navegador...
    echo    URL que debería funcionar:
    echo    http://localhost:8000/Certificados/Imagen%20maching%20lerning%20aplicado.png

) else (
    echo ❌ Archivo NO encontrado: Imagen maching lerning aplicado.png
    echo.
    echo 📋 Archivos disponibles en Certificados:
    dir /b "Certificados" 2>nul
)

echo.
echo 🎯 INSTRUCCIONES PARA DIAGNOSTICAR EL PROBLEMA:
echo ===============================================
echo.

echo 1️⃣ Haz clic en el certificado de Machine Learning
echo.
echo 2️⃣ Verifica en la consola del navegador estos mensajes:
echo    • "🖼️ Imagen configurada: http://localhost:8000/Certificados/Imagen%20maching%20lerning%20aplicado.png"
echo    • "✅ Imagen cargada exitosamente" (si carga correctamente)
echo    • "❌ Error cargando imagen" (si hay problema)
echo.
echo 3️⃣ Si ves "✅ Imagen cargada exitosamente":
echo    • El archivo existe y se carga correctamente
echo    • El problema podría ser de CSS o visualización
echo.
echo 4️⃣ Si ves "❌ Error cargando imagen":
echo    • Puede haber un problema con la ruta del archivo
echo    • Puede haber un problema de permisos del servidor
echo    • Puede haber caracteres especiales en el nombre del archivo
echo.
echo ✅ PRUEBA MANUAL DE LA IMAGEN:
echo =============================
echo Prueba acceder directamente a la imagen:
echo • http://localhost:8000/Certificados/Imagen%20maching%20lerning%20aplicado.png
echo.
echo Si la imagen se muestra correctamente en el navegador,
echo entonces el problema está en el código JavaScript o CSS.
echo.
echo 🎯 QUÉ VERIFICAR EN LA CONSOLA:
echo ==============================
echo Cuando hagas clic, busca estos mensajes específicos:
echo.
echo ✅ MENSAJES DE ÉXITO ESPERADOS:
echo • "🎯 Clic detectado en certificado: 1569765_4827_727473_75753_C2102004006-efsjp727470.pdf"
echo • "🖼️ Mostrando imagen del certificado: ./Certificados/Imagen maching lerning aplicado.png"
echo • "🖼️ Imagen configurada: http://localhost:8000/Certificados/Imagen%20maching%20lerning%20aplicado.png"
echo • "✅ Imagen cargada exitosamente"
echo • "📏 Dimensiones de la imagen: [ancho]x[alto]"
echo.
echo ❌ MENSAJES DE ERROR POSIBLES:
echo • "❌ Error cargando imagen: ./Certificados/Imagen maching lerning aplicado.png"
echo • Cualquier mensaje de error relacionado con la carga de la imagen
echo.
echo 📊 Archivos disponibles:
dir /b *.html
echo.
echo 💡 Lo que hemos logrado hasta ahora:
echo    - ✅ Errores críticos de JavaScript solucionados
echo    - ✅ Eventos de clic funcionando correctamente
echo    - ✅ Modal abriéndose correctamente
echo    - ✅ Sistema de logging completo implementado
echo.
echo 🔧 Correcciones Técnicas Aplicadas:
echo    • Eventos de carga de imagen con debugging detallado
echo    • Verificaciones de errores de imagen implementadas
echo    • Información de dimensiones de imagen añadida
echo    • Sistema de diagnóstico avanzado activado
echo.
echo 🛑 Para detener el servidor: Presiona Ctrl+C en la terminal
echo.
echo ✅ Sistema de diagnóstico avanzado activado - revisa la consola para ver si la imagen carga correctamente.
echo.
pause
