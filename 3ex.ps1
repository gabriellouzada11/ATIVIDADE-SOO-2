$numero = Get-Random -Minimum 1 -Maximum 21

Write-Host "=== Tabuada do $numero ===" 

for ($i = 1; $i -le 10; $i++) {
    $resultado = $numero * $i
    Write-Host "$numero x $i = $resultado"
}