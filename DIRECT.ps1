# Po��dat u�ivatele o zad�n� po�tu rekurz�
$count = Read-Host "Zadejte po�et rekurz�"

# Ov��it, �e vstup je platn� ��slo
if (-not ($count -as [int])) {
    Write-Host "Pros�m zadejte platn� cislo." -ForegroundColor Red
    exit
}

# Ulo�it aktu�ln� cestu pro n�vrat na konci
$originalPath = Get-Location

# Inicializace n�zvu prvn� slo�ky
$folder = "A"

# Smy�ka pro vytvo�en� po�adovan� struktury
for ($i = 1; $i -le $count; $i++) {
    New-Item -ItemType Directory -Name $folder -Force | Out-Null
    Set-Location $folder
    Write-Host "CREATED AND CD: $(Get-Location)" -ForegroundColor Green
}

# N�vrat do v�choz� cesty
Set-Location $originalPath
Write-Host "Returned to original path: $originalPath" -ForegroundColor Cyan
