
$quantidade = Read-Host "Digite a quantidade de termos da série de Fibonacci"

if ($quantidade -le 0) {
    Write-Host "Por favor, digite um número maior que zero."
    exit
}

$a = 0
$b = 1

Write-Host "`nSérie de Fibonacci:`n"

for ($i = 0; $i -lt $quantidade; $i++) {


    Write-Host $a

    $proximo = $a + $b
    $a = $b
    $b = $proximo
}