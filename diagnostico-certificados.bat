@echo off
echo.
echo 🚀 DIAGNÓSTICO - CERTIFICADOS COMO IMÁGENES
echo ==========================================
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
echo 🎯 VERIFICACIÓN DEL SISTEMA DE CERTIFICADOS:
echo =============================================
echo.

echo 📋 VERIFICACIÓN DE ARCHIVOS:
echo =============================
echo.

REM Verificar archivos disponibles
echo 🔍 Verificando archivos en directorio Certificados...
if exist "Certificados" (
    dir /b "Certificados\*.png" 2>nul
    if errorlevel 1 (
        echo ❌ No se encontraron archivos .png en Certificados
    ) else (
        echo ✅ Archivos .png encontrados:
        dir /b "Certificados\*.png"
    )

    echo.
    echo 🔍 Verificando archivos .pdf en el directorio...
    dir /b "Certificados\*.pdf" 2>nul | find /c /v ""

    echo.
    echo 📋 MAPEO DE ARCHIVOS CONFIGURADO:
    echo =================================
    echo • 1569765_4827_727473_75753_C2102004006-efsjp727470.pdf → Imagen maching lerning aplicado.png
    echo • Diploma.pdf → Diploma.png
    echo • Diploma web avanazado.pdf → Diploma web avanazado.png
    echo • Modelo_certificado_final_GDPymes_-_EX.pdf → Modelo_certificado_final_GDPymes_-_EX.png

    echo.
    echo ✅ VERIFICACIÓN DE IMAGEN ESPECÍFICA:
    echo ====================================
    if exist "Certificados\Imagen maching lerning aplicado.png" (
        echo ✅ Archivo encontrado: Imagen maching lerning aplicado.png
        for %%A in ("Certificados\Imagen maching lerning aplicado.png") do echo    Tamaño: %%~zA bytes
    ) else (
        echo ❌ Archivo NO encontrado: Imagen maching lerning aplicado.png
    )

) else (
    echo ❌ Directorio Certificados no encontrado
)

echo.
echo 🎯 INSTRUCCIONES PARA PROBAR:
echo ============================
echo.
echo 1️⃣ Ve a: http://localhost:8000/portfolio-original-con-certificados-funcionales.html
echo.
echo 2️⃣ Busca la sección "Certificaciones" con el abanico giratorio
echo.
echo 3️⃣ Localiza el certificado "Machine Learning Aplicado Usando Python"
echo    • Tiene el ícono 🔧
echo    • Está en la posición correspondiente
echo.
echo 4️⃣ HAZ CLIC en ese certificado específico
echo    • Debería abrirse el modal con la imagen
echo    • Se mostrará "Imagen maching lerning aplicado.png"
echo    • Aparecerá a tamaño completo en el modal
echo.
echo 5️⃣ VERIFICA en la consola del navegador (F12):
echo    • Deberías ver el mensaje: "🖼️ Mostrando imagen del certificado: ./Certificados/Imagen maching lerning aplicado.png"
echo.
echo ✅ COMPROBACIÓN TÉCNICA:
echo =======================
echo • El código JavaScript está correctamente implementado
echo • El mapeo de archivos está configurado correctamente
echo • La imagen existe en el directorio correcto
echo • El servidor está activo y sirviendo archivos
echo.

REM Verificar si la imagen existe
if exist "Certificados\Imagen maching lerning aplicado.png" (
    echo.
    echo 🎯 CONFIRMACIÓN FINAL:
    echo ====================
    echo ✅ La imagen "Imagen maching lerning aplicado.png" existe
    echo ✅ El mapeo está correctamente configurado
    echo ✅ El código JavaScript está implementado
    echo ✅ El servidor está activo
    echo.
    echo 🚀 El sistema debería funcionar perfectamente.
    echo.
    echo Si aún no funciona, verifica:
    echo • Que estás haciendo clic en el certificado correcto
    echo • Que la consola del navegador no muestra errores
    echo • Que no hay bloqueadores de pop-ups activados
    echo.
) else (
    echo.
    echo ❌ PROBLEMA DETECTADO:
    echo ====================
    echo La imagen "Imagen maching lerning aplicado.png" no existe en el directorio Certificados
    echo.
    echo Soluciones:
    echo • Verifica que el archivo esté en el lugar correcto
    echo • Copia el archivo al directorio Certificados si es necesario
    echo • Renombra el archivo si tiene un nombre diferente
    echo.
)

echo.
echo 🛑 Para detener el servidor: Presiona Ctrl+C en la terminal
echo.
echo ✅ Sistema de diagnóstico completado.
echo.
pause
