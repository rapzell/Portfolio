@echo off
echo.
echo 🚀 Portfolio con Dragón - Estado Actual con Problema Técnico Identificado
echo =========================================================================
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
echo ⚠️ PROBLEMA TÉCNICO IDENTIFICADO - CERTIFICADOS NO UNIFORMES:
echo ============================================================
echo.
echo 👨‍💻 PORTFOLIO PROFESIONAL - DAVID VALERO ROMAN:
echo    http://localhost:8000/portfolio-dragon-ultra-static.html
echo.
echo 🚨 Problema Técnico Detectado:
echo    • ✅ "Diseño Básico de Páginas Web" → FUNCIONA PERFECTAMENTE
echo    • ❌ "Diseño Avanzado de Páginas Web" → NO FUNCIONA correctamente
echo    • ❌ "Liderando la IA" → NO FUNCIONA correctamente
echo    • ❌ "Machine Learning Aplicado Usando Python" → NO FUNCIONA correctamente
echo.
echo 🔍 Posibles Causas del Problema:
echo    • Conflicto en estilos CSS aplicado solo al primer elemento
echo    • Eventos de JavaScript no aplicándose correctamente a todos los elementos
echo    • Problema en la estructura del DOM afectando elementos específicos
echo    • Clases CSS o selectores no funcionando uniformemente
echo    • Problema de especificidad CSS afectando elementos posteriores
echo.
echo ✅ Lo Que Sí Funciona Correctamente:
echo    • Rotación automática de la rueda (25s ciclo completo)
echo    • Pausa al hacer hover sobre el área general de certificados
echo    • Modal de certificados al hacer clic
echo    • Dragón ultra-estático funcionando perfectamente
echo    • Navegación y diseño visual completo
echo.
echo 🚨 Lo Que NO Funciona Uniformemente:
echo    • Eventos de hover individuales en certificados específicos
echo    • Escalado individual de tarjetas al hacer hover específico
echo    • Comportamiento consistente entre el primero y los demás certificados
echo.
echo 📊 Estado del Sistema Actual:
echo    ✅ Rotación automática: FUNCIONANDO correctamente
echo    • Pausa hover área: ✅ FUNCIONANDO correctamente
echo    • Escalado hover individual: ❌ SOLO FUNCIONA EN EL PRIMERO
echo    • Modal por clic: ✅ FUNCIONANDO correctamente
echo    • Certificados tamaño: ✅ 200px x 140px correcto
echo    ✅ Dragón ultra-estático: FUNCIONANDO correctamente
echo    ✅ Colores armonizados: PERFECTOS azul-morado
echo.
echo 🎯 Objetivo Técnico a Resolver:
echo    • Identificar por qué solo el primer certificado responde correctamente
echo    • Aplicar el mismo comportamiento exitoso a todos los certificados
echo    • Eliminar cualquier conflicto CSS o JavaScript que afecte elementos específicos
echo    • Asegurar funcionamiento uniforme en todos los certificados
echo.
echo 📁 Archivos disponibles:
dir /b *.html
echo.
echo 💡 Próximos Pasos Técnicos:
echo    - Análisis detallado del código fuente para identificar conflictos
echo    - Verificación de eventos JavaScript y selectores CSS
echo    - Pruebas específicas en cada certificado individual
echo    - Corrección de cualquier problema de especificidad o estructura
echo.
echo 🛑 Para detener el servidor: Presiona Ctrl+C en la terminal
echo.
echo 🔧 ¡Necesitamos investigar el problema técnico específico que hace que solo el primer certificado funcione correctamente!
echo.
pause
