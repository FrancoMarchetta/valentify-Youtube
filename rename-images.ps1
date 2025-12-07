# PowerShell script to rename images to numbered format
$imagesPath = "images"
$pngFiles = Get-ChildItem -Path $imagesPath -Filter "*.png" | Where-Object { $_.Name -notmatch '^\d+\.png$' } | Sort-Object Name
$counter = 1

foreach ($file in $pngFiles) {
    $newName = "$counter.png"
    $newPath = Join-Path $imagesPath $newName
    
    # Only rename if the target doesn't exist
    if (-not (Test-Path $newPath)) {
        Rename-Item -Path $file.FullName -NewName $newName
        Write-Host "Renamed: $($file.Name) -> $newName"
        $counter++
    } else {
        Write-Host "Skipped: $newName already exists"
        $counter++
    }
}

Write-Host "`nTotal images renamed: $($counter - 1)"
Write-Host "Extension should now load images correctly!" -ForegroundColor Green
