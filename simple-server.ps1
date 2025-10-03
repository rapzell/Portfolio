$port = 8000
$directory = "C:\Users\David\CascadeProjects\Portfolio React"

Write-Host "🚀 Iniciando servidor en http://localhost:$port" -ForegroundColor Green
Write-Host "📁 Sirviendo archivos desde: $directory" -ForegroundColor Cyan
Write-Host "💡 Abre http://localhost:$port/portfolio-demo-v2.html en tu navegador" -ForegroundColor Yellow
Write-Host "🛑 Presiona Ctrl+C para detener" -ForegroundColor Red
Write-Host ""

# Crear un listener HTTP simple usando .NET
Add-Type -AssemblyName System.Net
$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("http://localhost:$port/")

$listener.Start()
Write-Host "✅ Servidor iniciado correctamente" -ForegroundColor Green

while ($listener.IsListening) {
    $context = $listener.GetContext()
    $request = $context.Request
    $response = $context.Response

    $localPath = $request.Url.LocalPath.TrimStart('/')

    if ($localPath -eq "" -or $localPath -eq "/") {
        $localPath = "portfolio-demo-v2.html"
    }

    $filePath = Join-Path $directory $localPath

    if (Test-Path $filePath -PathType Leaf) {
        $content = Get-Content $filePath -Raw -Encoding UTF8
        $buffer = [System.Text.Encoding]::UTF8.GetBytes($content)
        $response.ContentType = "text/html; charset=utf-8"
        $response.ContentLength64 = $buffer.Length
        $response.OutputStream.Write($buffer, 0, $buffer.Length)
    } else {
        $response.StatusCode = 404
        $notFound = "<h1>Archivo no encontrado</h1><p>$localPath</p>"
        $buffer = [System.Text.Encoding]::UTF8.GetBytes($notFound)
        $response.ContentType = "text/html; charset=utf-8"
        $response.OutputStream.Write($buffer, 0, $buffer.Length)
    }

    $response.OutputStream.Close()
}
