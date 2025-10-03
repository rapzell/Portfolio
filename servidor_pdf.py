import http.server
import socketserver
import os
import mimetypes
from urllib.parse import unquote

# Forzar el MIME type correcto para archivos PDF
mimetypes.add_type('application/pdf', '.pdf')

PORT = 8000

class PDFHandler(http.server.SimpleHTTPRequestHandler):
    def end_headers(self):
        # Forzar el MIME type correcto para PDFs
        if self.path.endswith('.pdf'):
            self.send_header('Content-Type', 'application/pdf')
            self.send_header('Content-Disposition', f'inline; filename="{os.path.basename(unquote(self.path))}"')
            print(f"📄 Sirviendo PDF: {self.path} como application/pdf")
        elif self.path.endswith('.html'):
            self.send_header('Content-Type', 'text/html; charset=utf-8')
        http.server.SimpleHTTPRequestHandler.end_headers(self)

    def log_message(self, format, *args):
        # Logging personalizado
        print(f"🌐 {self.address_string()} - {format % args}")

print(f"🚀 Servidor iniciado en http://localhost:{PORT}/")
print(f"📁 Directorio raíz: {os.getcwd()}")
print(f"📄 Configuración PDF: MIME type 'application/pdf' forzado")

# Cambiar al directorio correcto
os.chdir('c:\\Users\\David\\CascadeProjects\\Portfolio React')

print(f"📂 Cambiado a directorio: {os.getcwd()}")

# Listar archivos PDF disponibles
pdf_files = [f for f in os.listdir('.') if f.endswith('.pdf')]
if pdf_files:
    print("📋 Archivos PDF encontrados:")
    for pdf in pdf_files:
        print(f"   ✅ {pdf}")
else:
    print("❌ No se encontraron archivos PDF en el directorio")

print(f"🔧 Configuración: Los PDFs se servirán con MIME type 'application/pdf'")

try:
    with socketserver.TCPServer(("", PORT), PDFHandler) as httpd:
        print(f"✅ Servidor corriendo correctamente en puerto {PORT}")
        httpd.serve_forever()
except KeyboardInterrupt:
    print("\n🛑 Servidor detenido por el usuario")
except OSError as e:
    print(f"❌ Error iniciando servidor: {e}")
    print("💡 Posibles soluciones:")
    print("   - Cerrar otros servidores en el puerto 8000")
    print("   - Usar un puerto diferente")
    print("   - Verificar permisos de administrador")
