import http.server
import socketserver
import os
import sys
from pathlib import Path

# Configuración del servidor
PORT = 8000
DIRECTORY = os.getcwd()  # Usar directorio actual

class CustomHTTPRequestHandler(http.server.SimpleHTTPRequestHandler):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, directory=DIRECTORY, **kwargs)

    def end_headers(self):
        # Agregar headers CORS para desarrollo
        self.send_header('Access-Control-Allow-Origin', '*')
        self.send_header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS')
        self.send_header('Access-Control-Allow-Headers', 'Content-Type')
        super().end_headers()

    def guess_type(self, path):
        """Forzar tipos MIME correctos para archivos conocidos"""
        mimetype, encoding = super().guess_type(path)

        # Forzar tipo MIME correcto para archivos JPG
        if path.lower().endswith('.jpg') or path.lower().endswith('.jpeg'):
            return 'image/jpeg'
        elif path.lower().endswith('.png'):
            return 'image/png'
        elif path.lower().endswith('.gif'):
            return 'image/gif'

        return mimetype

    def log_message(self, format, *args):
        """Logging mejorado para debugging"""
        print(f"🌐 {self.address_string()} - {format % args}")

# Verificar archivos importantes
certificados_dir = 'Certificados'
image_file = 'Imagen_maching_lerning_aplicado.jpg'

print(f"🚀 Iniciando servidor HTTP personalizado")
print(f"📁 Directorio raíz: {DIRECTORY}")
print(f"🌐 Puerto: {PORT}")

if os.path.exists(certificados_dir):
    image_path = os.path.join(certificados_dir, image_file)
    if os.path.exists(image_path):
        size = os.path.getsize(image_path)
        print(f"✅ Archivo certificado encontrado: {size:,}","ytes")
        print(f"📁 Ruta completa: {image_path}")
    else:
        print(f"❌ Archivo certificado NO encontrado: {image_path}")
        print(f"📋 Archivos disponibles en {certificados_dir}:")
        for file in os.listdir(certificados_dir):
            print(f"   📄 {file}")
else:
    print(f"❌ Directorio Certificados no encontrado: {certificados_dir}")

print(f"\n🌐 Servidor iniciado correctamente")
print(f"🔧 Configuración:")
print(f"   • Tipos MIME forzados para imágenes")
print(f"   • Headers CORS habilitados")
print(f"   • Logging detallado activado")
print(f"\n📋 URLs disponibles:")
print(f"   • Página principal: http://localhost:{PORT}/certificado-verificado.html")
print(f"   • Imagen directa: http://localhost:{PORT}/Certificados/Imagen_maching_lerning_aplicado.jpg")
print(f"   • Diagnóstico: http://localhost:{PORT}/diagnostico-servidor.html")

try:
    with socketserver.TCPServer(("", PORT), CustomHTTPRequestHandler) as httpd:
        print(f"\n🎯 Servidor listo - presiona Ctrl+C para detener")
        httpd.serve_forever()
except KeyboardInterrupt:
    print("\n🛑 Servidor detenido por el usuario")
except OSError as e:
    print(f"\n❌ Error iniciando servidor: {e}")
    print("💡 Posibles soluciones:")
    print("   • Cierra otros servidores en el puerto 8000")
    print("   • Usa un puerto diferente: python servidor_certificados.py 8001")
