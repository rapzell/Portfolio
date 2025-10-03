import http.server
import socketserver
import os
import webbrowser
from threading import Timer

PORT = 8000
DIRECTORY = r"C:\Users\David\CascadeProjects\Portfolio React"

class MyHTTPRequestHandler(http.server.SimpleHTTPRequestHandler):
    def end_headers(self):
        self.send_header('Cache-Control', 'no-cache, no-store, must-revalidate')
        self.send_header('Pragma', 'no-cache')
        self.send_header('Expires', '0')
        super().end_headers()

    def log_message(self, format, *args):
        # Silenciar los mensajes de log para una experiencia más limpia
        pass

def open_browser():
    webbrowser.open('http://localhost:8000/portfolio-demo-v2.html')

if __name__ == "__main__":
    os.chdir(DIRECTORY)

    with socketserver.TCPServer(("", PORT), MyHTTPRequestHandler) as httpd:
        print(f"🚀 Servidor iniciado en http://localhost:{PORT}")
        print(f"📁 Abriendo portfolio-demo-v2.html")
        print("💡 Presiona Ctrl+C para detener el servidor")

        # Abrir el navegador después de 1 segundo
        Timer(1.0, open_browser).start()

        try:
            httpd.serve_forever()
        except KeyboardInterrupt:
            print("\n🛑 Servidor detenido")
            httpd.shutdown()
