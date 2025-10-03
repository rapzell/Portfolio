import http.server
import socketserver
import os
import sys

PORT = 8001

class MyHTTPRequestHandler(http.server.SimpleHTTPRequestHandler):
    def end_headers(self):
        self.send_header('Access-Control-Allow-Origin', '*')
        self.send_header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS')
        self.send_header('Access-Control-Allow-Headers', 'Content-Type')
        super().end_headers()

    def guess_type(self, path):
        # Forzar el tipo MIME correcto para archivos PNG
        if path.endswith('.png'):
            return 'image/png'
        return super().guess_type(path)

# Verificar si el directorio existe
if not os.path.exists('Certificados'):
    print("❌ Directorio 'Certificados' no encontrado")
    sys.exit(1)

# Cambiar al directorio raíz del proyecto
os.chdir('.')

print(f"🚀 Iniciando servidor de prueba en puerto {PORT}")
print(f"📁 Directorio raíz: {os.getcwd()}")
print(f"🖼️ Archivo a probar: Certificados/Imagen maching lerning aplicado.png")

# Verificar archivo específico
image_path = "Certificados/Imagen maching lerning aplicado.png"
if os.path.exists(image_path):
    size = os.path.getsize(image_path)
    print(f"✅ Archivo encontrado: {size:,} bytes")
else:
    print(f"❌ Archivo NO encontrado: {image_path}")
    print("📋 Archivos disponibles en Certificados:")
    if os.path.exists('Certificados'):
        for file in os.listdir('Certificados'):
            print(f"   📄 {file}")

print(f"\n🌐 Servidor iniciado: http://localhost:{PORT}")
print("🎯 Prueba acceder a: http://localhost:8001/Certificados/Imagen%20maching%20lerning%20aplicado.png"

with socketserver.TCPServer(("", PORT), MyHTTPRequestHandler) as httpd:
    try:
        httpd.serve_forever()
    except KeyboardInterrupt:
        print("\n🛑 Servidor detenido")
        httpd.shutdown()
