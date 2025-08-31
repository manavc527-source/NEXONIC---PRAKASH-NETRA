# Simple PowerShell HTTP Server for SCADA Dashboard
$port = 8080
$url = "http://localhost:$port"

Write-Host "Starting SCADA Dashboard server on $url" -ForegroundColor Green
Write-Host "Press Ctrl+C to stop the server" -ForegroundColor Yellow

# Create HTTP listener
$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("$url/")
$listener.Start()

Write-Host "Server started! Opening dashboard in browser..." -ForegroundColor Green
Start-Process $url

try {
    while ($listener.IsListening) {
        $context = $listener.GetContext()
        $request = $context.Request
        $response = $context.Response
        
        # Get the requested file path
        $localPath = $request.Url.LocalPath
        if ($localPath -eq "/") { $localPath = "/index_clean.html" }
        
        $filePath = Join-Path $PWD $localPath.TrimStart('/')
        
        Write-Host "Request: $($request.HttpMethod) $localPath" -ForegroundColor Cyan
        
        if (Test-Path $filePath -PathType Leaf) {
            # Determine content type
            $extension = [System.IO.Path]::GetExtension($filePath).ToLower()
            $contentType = switch ($extension) {
                ".html" { "text/html" }
                ".css" { "text/css" }
                ".js" { "application/javascript" }
                ".json" { "application/json" }
                ".png" { "image/png" }
                ".jpg" { "image/jpeg" }
                ".gif" { "image/gif" }
                default { "text/plain" }
            }
            
            # Set headers
            $response.ContentType = $contentType
            $response.StatusCode = 200
            
            # Add CORS headers
            $response.Headers.Add("Access-Control-Allow-Origin", "*")
            $response.Headers.Add("Access-Control-Allow-Methods", "GET, POST, OPTIONS")
            $response.Headers.Add("Access-Control-Allow-Headers", "Content-Type")
            
            # Read and send file
            $content = [System.IO.File]::ReadAllBytes($filePath)
            $response.OutputStream.Write($content, 0, $content.Length)
            
            Write-Host "Served: $filePath ($($content.Length) bytes)" -ForegroundColor Green
        } else {
            # File not found
            $response.StatusCode = 404
            $errorMessage = "File not found: $localPath"
            $buffer = [System.Text.Encoding]::UTF8.GetBytes($errorMessage)
            $response.OutputStream.Write($buffer, 0, $buffer.Length)
            
            Write-Host "404: $filePath" -ForegroundColor Red
        }
        
        $response.Close()
    }
} finally {
    $listener.Stop()
    Write-Host "Server stopped." -ForegroundColor Yellow
}
