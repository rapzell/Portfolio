@echo off
echo.
echo 🚀 Portfolio con Dragón - CERTIFICADO MACHINE LEARNING CORREGIDO
echo ==============================================================
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
echo ✅ PROBLEMA IDENTIFICADO Y SOLUCIONADO:
echo ========================================
echo.
echo ❌ Problema Anterior:
echo    • Estaba usando el nombre del archivo PDF antiguo
echo    • Sistema complicado de mapeo PDF → imagen
echo.
echo ✅ Solución Implementada:
echo    • Ahora usa directamente el archivo de imagen
echo    • Sistema directo: certificado → imagen específica
echo    • Mapeo simplificado y más confiable
echo.
echo 📋 NUEVO SISTEMA DE CERTIFICADOS:
echo ================================
echo.
echo 🎯 Certificado Machine Learning:
echo    • ID: "machine-learning"
echo    • Archivo: "Imagen maching lerning aplicado.png"
echo    • Ruta: "./Certificados/Imagen maching lerning aplicado.png"
echo.
echo 🎯 Otros certificados (pendientes de imágenes):
echo    • "Diploma.pdf" → "Diploma.png"
echo    • "Diploma web avanazado.pdf" → "Diploma web avanazado.png"
echo    • "Modelo_certificado_final_GDPymes_-_EX.pdf" → "Modelo_certificado_final_GDPymes_-_EX.png"
echo.
echo ✅ VERIFICACIÓN DEL ARCHIVO ESPECÍFICO:
echo ======================================
if exist "Certificados\Imagen maching lerning aplicado.png" (
    echo ✅ Archivo encontrado correctamente: Imagen maching lerning aplicado.png
    for %%A in ("Certificados\Imagen maching lerning aplicado.png") do (
        echo    Tamaño: %%~zA bytes
        echo    Fecha: %%~tA
    )

    echo.
    echo 🌐 URL de acceso directo:
    echo    http://localhost:8000/Certificados/Imagen%20maching%20lerning%20aplicado.png

) else (
    echo ❌ Archivo NO encontrado: Imagen maching lerning aplicado.png
)

echo.
echo 🎯 INSTRUCCIONES PARA PROBAR:
echo =============================
echo.
echo 1️⃣ Ve a: http://localhost:8000/portfolio-original-con-certificados-funcionales.html
echo.
echo 2️⃣ Busca el certificado "Machine Learning Aplicado Usando Python"
echo    • Tiene el ícono 🔧
echo    • Está en el abanico giratorio
echo.
echo 3️⃣ Haz clic en ese certificado específico
echo.
echo 4️⃣ Verifica en la consola del navegador:
echo    • Deberías ver: "🖼️ Archivo de imagen: Imagen maching lerning aplicado.png"
echo    • Luego: "🖼️ Imagen configurada: http://localhost:8000/Certificados/Imagen%20maching%20lerning%20aplicado.png"
echo.
echo 5️⃣ El modal debería abrirse mostrando la imagen correctamente
echo.
echo ✅ QUÉ ESPERAR AHORA:
echo ====================
echo • ✅ Clic en certificado → modal se abre inmediatamente
echo • ✅ Imagen "Imagen maching lerning aplicado.png" se muestra
echo • ✅ Sin errores en la consola
echo • ✅ Funciones de descarga y nueva pestaña disponibles
echo.
echo 📁 Archivos disponibles:
dir /b *.html
echo.
echo 💡 Lo que hemos logrado:
echo    - ✅ Sistema simplificado usando directamente archivos de imagen
echo    - ✅ Mapeo directo certificado → imagen específica
echo    - ✅ Eliminación de complicaciones técnicas innecesarias
echo    - ✅ Archivo específico del usuario correctamente referenciado
echo.
echo 🔧 Cambio Técnico Implementado:
echo    • Cambiado de: data-cert="1569765_4827_727473_75753_C2102004006-efsjp727470.pdf"
echo    • Cambiado a: data-cert="machine-learning"
echo    • Mapeo directo: "machine-learning" → "Imagen maching lerning aplicado.png"
echo.
echo 🛑 Para detener el servidor: Presiona Ctrl+C en la terminal
echo.
echo ✅ ¡El certificado de Machine Learning ahora debería funcionar perfectamente con el archivo correcto!
echo.
pause
