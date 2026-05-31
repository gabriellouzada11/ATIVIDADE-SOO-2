$inicio = Read-Host "Digite o numero inicial"
$fim = Read-Host "Digite o numero final"
$crescente = Read-Host "Digite o numero 1 ou -1"

$inicio = [int]$inicio
$fim = [int]$fim
$crescente = [int]$crescente

if ($crescente -eq 1) {

    for($i = $inicio; $i -le $fim; $i++) {

    Write-Host $i
    }
} else{
    for($i = $fim; $i -ge $inicio; $i--) {

    Write-Host $i
    }
}