$acertos = 0
$jogar = $true

while ($jogar) {

    $num1 = Get-Random -Minimum 2 -Maximum 101
    $num2 = Get-Random -Minimum 2 -Maximum 101

    $operadores = @("+", "-", "*")
    $operador = $operadores[(Get-Random -Minimum 0 -Maximum 3)]

    
    switch ($operador) {
        "+" { $correto = $num1 + $num2 }
        "-" { $correto = $num1 - $num2 }
        "*" { $correto = $num1 * $num2 }
    }

    Write-Host ""
    Write-Host "Quanto e: $num1 $operador $num2 ?"
    $resposta = Read-Host "Sua resposta"
    $resposta = [int]$resposta

    if ($resposta -eq $correto) {
        $acertos++
        Write-Host "Correto! Voce tem $acertos acerto(s)."
    } else {
        Write-Host ""
        Write-Host "Errou! A resposta correta era $correto"
        Write-Host "Total de acertos: $acertos"
        Write-Host ""
        $reiniciar = Read-Host "Deseja recomecar? (s/n)"

        if ($reiniciar -eq "s") {
            $acertos = 0  
        } else {
            Write-Host "Ate mais!"
            $jogar = $false
        }
    }
}