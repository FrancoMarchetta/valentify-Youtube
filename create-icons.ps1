Add-Type -AssemblyName System.Drawing

function Resize-Image {
    param(
        [string]$InputPath,
        [string]$OutputPath,
        [int]$Width,
        [int]$Height
    )
    
    $image = [System.Drawing.Image]::FromFile($InputPath)
    $bitmap = New-Object System.Drawing.Bitmap $Width, $Height
    $graphics = [System.Drawing.Graphics]::FromImage($bitmap)
    
    $graphics.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
    $graphics.DrawImage($image, 0, 0, $Width, $Height)
    
    $bitmap.Save($OutputPath, [System.Drawing.Imaging.ImageFormat]::Png)
    
    $graphics.Dispose()
    $bitmap.Dispose()
    $image.Dispose()
}

# Resize icons
Resize-Image -InputPath "icon.png" -OutputPath "icons\icon-16.png" -Width 16 -Height 16
Resize-Image -InputPath "icon.png" -OutputPath "icons\icon-48.png" -Width 48 -Height 48
Resize-Image -InputPath "icon.png" -OutputPath "icons\icon-128.png" -Width 128 -Height 128

Write-Host "Icons created successfully!" -ForegroundColor Green
