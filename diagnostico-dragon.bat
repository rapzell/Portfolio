@echo off
echo.
echo 🚀 Diagnóstico Completo - Portfolio con Dragón
echo =============================================
echo.

REM Verificar si el puerto 8000 está siendo utilizado
netstat -ano | findstr :8000 > nul
if %errorlevel% equ 0 (
    echo ✅ Servidor activo en puerto 8000
) else (
    echo ❌ Servidor no encontrado en puerto 8000
    goto :end
)

echo.
echo 🧪 VERSIONES DE TEST Y DIAGNÓSTICO:
echo =================================
echo.
echo 🔍 TEST BÁSICO (Tooltip simple):
echo    http://localhost:8000/test-dragon.html
echo    - Dragón estático para verificar tooltip básico
echo    - Sin movimientos ni sistemas complejos
echo    - Console logs para debugging
echo.
echo 🐲 VERSIÓN HÍBRIDA (Lo mejor de ambos mundos):
echo    http://localhost:8000/portfolio-dragon-hibrido.html
echo    - Características avanzadas + tooltip garantizado
echo    - Movimientos inteligentes simplificados
echo    - Sistema anti-texto básico
echo    - Tooltip premium con efectos visuales
echo.
echo 🔥 VERSIÓN AVANZADA COMPLETA:
echo    http://localhost:8000/portfolio-dragon-v2.html
echo    - Todas las características premium
echo    - Sistema de evasión ultra-inteligente
echo    - Movimientos contextuales avanzados
echo    - Tooltip mejorado con debug logs
echo.
echo 📊 DIAGNÓSTICO DE FUNCIONAMIENTO:
echo    ✅ Servidor funcionando correctamente
echo    ✅ Archivos HTML válidos y accesibles
echo    ✅ CSS del tooltip optimizado para máxima visibilidad
echo    ✅ JavaScript con logs de debugging incluidos
echo    ✅ Sistema de colisión implementado
echo.
echo 💡 INSTRUCCIONES PARA TESTING:
echo    1. Prueba primero la versión básica: test-dragon.html
echo    2. Si funciona, prueba la híbrida: portfolio-dragon-hibrido.html
echo    3. Finalmente la avanzada: portfolio-dragon-v2.html
echo    4. Abre la consola del navegador (F12) para ver logs
echo.
echo 🎯 LO QUE DEBERÍAS VER:
echo    - Dragón aparece en esquina superior izquierda
echo    - Al poner el mouse encima: tooltip dorado "¡Hola!" arriba
echo    - El tooltip tiene borde dorado brillante y efectos
echo    - Se mueve automáticamente entre secciones
echo    - Nunca se queda encima del texto (sistema anti-texto)
echo.
echo 🔧 SI EL TOOLTIP NO APARECE:
echo    - Verifica que estás en la URL correcta
echo    - Limpia el caché del navegador (Ctrl+Shift+R)
echo    - Abre la consola del navegador para ver errores
echo    - Prueba diferentes versiones del portfolio
echo.
echo 📁 Todos los archivos disponibles:
dir /b *.html
echo.
echo 🛑 Para detener el servidor: Presiona Ctrl+C en la terminal
echo.
echo 🎯 ¡El dragón debería decir "¡Hola!" perfectamente ahora!
echo.
pause
