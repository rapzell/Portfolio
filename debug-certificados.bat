@echo off
echo.
echo 🚀 Portfolio con Dragón - DEPURACIÓN CERTIFICADOS
echo ===============================================
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
echo 🎯 INSTRUCCIONES PARA DEPURAR EL PROBLEMA:
echo =========================================
echo.
echo 👨‍💻 PORTFOLIO PROFESIONAL - DAVID VALERO ROMAN:
echo    http://localhost:8000/portfolio-original-con-certificados-funcionales.html
echo.
echo ✅ Sistema de Certificados con Debugging Mejorado:
echo    • 🔍 Logging detallado agregado a cada función
echo    • 📋 Información completa en consola del navegador
echo    • 🎯 Detección de problemas paso a paso
echo.
echo ✅ Pasos para Diagnosticar el Problema:
echo ======================================
echo.
echo 1️⃣ Abre la página del portfolio
echo.
echo 2️⃣ ABRE LA CONSOLA DEL NAVEGADOR:
echo    • Presiona F12 (en la mayoría de navegadores)
echo    • O haz clic derecho → "Inspeccionar elemento"
echo    • Ve a la pestaña "Console" o "Consola"
echo.
echo 3️⃣ Busca la sección "Certificaciones" con el abanico giratorio
echo.
echo 4️⃣ Localiza el certificado "Machine Learning Aplicado Usando Python"
echo    • Tiene el ícono 🔧 (herramientas)
echo    • Está en el abanico giratorio
echo.
echo 5️⃣ HAZ CLIC en ese certificado y observa la consola:
echo    • Deberías ver mensajes como:
echo      "🎯 Clic detectado en certificado: 1569765_4827_727473_75753_C2102004006-efsjp727470.pdf"
echo      "🖼️ Mostrando imagen del certificado: ./Certificados/Imagen maching lerning aplicado.png"
echo      "🚀 Iniciando showCertificateImage"
echo      "✅ showCertificateImage completado exitosamente"
echo.
echo 6️⃣ Si NO ves estos mensajes cuando haces clic:
echo    • El evento de clic no está funcionando
echo    • Puede haber un problema con el elemento HTML
echo    • Verifica que estás haciendo clic en el certificado correcto
echo.
echo 7️⃣ Si VES los mensajes pero el modal no aparece:
echo    • Puede haber un problema con los elementos DOM
echo    • Puede haber un error de CSS que oculte el modal
echo    • Puede haber un problema con el archivo de imagen
echo.
echo ✅ Archivos y Mapeo Configurados:
echo ================================
echo • data-cert="1569765_4827_727473_75753_C2102004006-efsjp727470.pdf"
echo • Mapea a: "Imagen maching lerning aplicado.png"
echo • Ruta completa: "./Certificados/Imagen maching lerning aplicado.png"
echo.
echo ✅ Verificación de Archivo:
echo ===========================
if exist "Certificados\Imagen maching lerning aplicado.png" (
    echo ✅ Archivo de imagen encontrado correctamente
    for %%A in ("Certificados\Imagen maching lerning aplicado.png") do echo    Tamaño: %%~zA bytes
) else (
    echo ❌ Archivo de imagen NO encontrado
)
echo.
echo 🎯 QUÉ DEBERÍAS VER EN LA CONSOLA:
echo =================================
echo Cuando hagas clic correctamente, verás:
echo • "🎯 Clic detectado en certificado: [nombre del archivo]"
echo • "🖼️ Mostrando imagen del certificado: ./Certificados/[nombre imagen]"
echo • "🚀 Iniciando showCertificateImage"
echo • "✅ showCertificateImage completado exitosamente"
echo.
echo Si ves estos mensajes pero el modal no aparece, el problema está en el modal.
echo Si NO ves estos mensajes cuando haces clic, el problema está en el evento de clic.
echo.
echo 🛑 Para detener el servidor: Presiona Ctrl+C en la terminal
echo.
echo ✅ Sistema de debugging activado - revisa la consola del navegador.
echo.
pause
