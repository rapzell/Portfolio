$port = 8000
$directory = "C:\Users\David\CascadeProjects\Portfolio React"

Write-Host "Servidor iniciado en http://localhost:$port"
Write-Host "Sirviendo archivos desde: $directory"
Write-Host "Abre http://localhost:$port/portfolio-demo-v2.html en tu navegador"

Add-Type -AssemblyName System.Net
$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("http://localhost:$port/")

$listener.Start()

while ($listener.IsListening) {
    $context = $listener.GetContext()
    $request = $context.Request
    $response = $context.Response

    $localPath = $request.Url.LocalPath.TrimStart('/')

    if ($localPath -eq '' -or $localPath -eq '/') {
        $localPath = 'portfolio-demo-v2.html'
    }

    $filePath = Join-Path $directory $localPath

    if (Test-Path $filePath -PathType Leaf) {
        $content = Get-Content $filePath -Raw -Encoding UTF8
        $buffer = [System.Text.Encoding]::UTF8.GetBytes($content)
        $response.ContentType = 'text/html'
        $response.ContentLength64 = $buffer.Length
        $response.OutputStream.Write($buffer, 0, $buffer.Length)
    } else {
        $response.StatusCode = 404
        $notFound = '<h1>Archivo no encontrado</h1>'
        $buffer = [System.Text.Encoding]::UTF8.GetBytes($notFound)
        $response.ContentType = 'text/html'
        $response.OutputStream.Write($buffer, 0, $buffer.Length)
    }

    $response.OutputStream.Close()
}
