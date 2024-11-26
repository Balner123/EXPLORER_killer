# Požádat uživatele o zadání poètu rekurzí
$count = Read-Host "Zadejte poèet rekurzí"

# Ovìøit, že vstup je platné èíslo
if (-not ($count -as [int])) {
    Write-Host "Prosím zadejte platné cislo." -ForegroundColor Red
    exit
}

# Uložit aktuální cestu pro návrat na konci
$originalPath = Get-Location

# Inicializace názvu první složky
$folder = "A"

# Smyèka pro vytvoøení požadované struktury
for ($i = 1; $i -le $count; $i++) {
    New-Item -ItemType Directory -Name $folder -Force | Out-Null
    Set-Location $folder
    Write-Host "CREATED AND CD: $(Get-Location)" -ForegroundColor Green
}

# Návrat do výchozí cesty
Set-Location $originalPath
Write-Host "Returned to original path: $originalPath" -ForegroundColor Cyan
