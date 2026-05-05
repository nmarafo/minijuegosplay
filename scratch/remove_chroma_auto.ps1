param (
    [string]$folderPath
)

Add-Type -AssemblyName System.Drawing

$files = Get-ChildItem -Path $folderPath -Filter "*.png"

foreach ($file in $files) {
    Write-Host "Processing $($file.Name) (Multi-Color Auto-Chroma)..."
    $fullPath = $file.FullName
    
    # Load image
    $original = [System.Drawing.Bitmap]::FromFile($fullPath)
    $width = $original.Width
    $height = $original.Height
    
    # Sample background colors from corners
    $corners = @(
        $original.GetPixel(0, 0),
        $original.GetPixel($width - 1, 0),
        $original.GetPixel(0, $height - 1),
        $original.GetPixel($width - 1, $height - 1),
        $original.GetPixel([int]($width/2), 0)
    )

    $bgColors = $corners | Select-Object -Unique

    # Create a new bitmap with Alpha channel
    $bmp = New-Object System.Drawing.Bitmap($width, $height)
    $graphics = [System.Drawing.Graphics]::FromImage($bmp)
    $graphics.DrawImage($original, 0, 0, $width, $height)
    $graphics.Dispose()
    $original.Dispose()

    # Tolerance for color matching
    $tolerance = 50

    # Iterate over pixels ONCE
    for ($y = 0; $y -lt $height; $y++) {
        for ($x = 0; $x -lt $width; $x++) {
            $color = $bmp.GetPixel($x, $y)
            
            # Check against all detected background colors
            foreach ($bgColor in $bgColors) {
                $diffR = [Math]::Abs($color.R - $bgColor.R)
                $diffG = [Math]::Abs($color.G - $bgColor.G)
                $diffB = [Math]::Abs($color.B - $bgColor.B)

                if ($diffR -lt $tolerance -and $diffG -lt $tolerance -and $diffB -lt $tolerance) {
                    $bmp.SetPixel($x, $y, [System.Drawing.Color]::FromArgb(0, 0, 0, 0))
                    break # Already transparent, move to next pixel
                }
            }
        }
    }
    
    # Save back
    $tempPath = $fullPath + ".tmp"
    $bmp.Save($tempPath, [System.Drawing.Imaging.ImageFormat]::Png)
    $bmp.Dispose()
    
    Remove-Item $fullPath
    Rename-Item $tempPath $file.Name
}

Write-Host "Done!"
