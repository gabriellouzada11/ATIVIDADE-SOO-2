$vitorias = 0
$derrotas = 0
$empates  = 0
$jogar    = $true

while ($jogar) {

    Write-Host ""
    Write-Host "==============================="
    Write-Host "   PEDRA, PAPEL OU TESOURA"
    Write-Host "==============================="
    Write-Host "1 - Pedra"
    Write-Host "2 - Papel"
    Write-Host "3 - Tesoura"
    Write-Host ""

    $escolha = Read-Host "Escolha uma opcao (1, 2 ou 3)"

    if ($escolha -ne "1" -and $escolha -ne "2" -and $escolha -ne "3") {
        Write-Host "Opcao invalida! Digite 1, 2 ou 3."
        continue
    }

    switch ($escolha) {
        "1" { $jogador = "Pedra"   }
        "2" { $jogador = "Papel"   }
        "3" { $jogador = "Tesoura" }
    }

    $opcoes  = @("Pedra", "Papel", "Tesoura")
    $maquina = $opcoes[(Get-Random -Minimum 0 -Maximum 3)]

    Write-Host ""
    Write-Host "Voce escolheu : $jogador"
    Write-Host "Maquina escolheu: $maquina"
    Write-Host ""

    if ($jogador -eq $maquina) {
        Write-Host "EMPATE!"
        $empates++
    } elseif (
        ($jogador -eq "Pedra"   -and $maquina -eq "Tesoura") -or
        ($jogador -eq "Tesoura" -and $maquina -eq "Papel")   -or
        ($jogador -eq "Papel"   -and $maquina -eq "Pedra")
    ) {
        Write-Host "VOCE VENCEU!"
        $vitorias++
    } else {
        Write-Host "VOCE PERDEU!"
        $derrotas++
    }

    Write-Host ""
    Write-Host "--- Placar ---"
    Write-Host "Vitorias : $vitorias"
    Write-Host "Derrotas : $derrotas"
    Write-Host "Empates  : $empates"
    Write-Host ""

    $continuar = Read-Host "Deseja continuar jogando? (s/n)"

    if ($continuar -ne "s") {
        Write-Host ""
        Write-Host "==============================="
        Write-Host "       FIM DE JOGO"
        Write-Host "==============================="
        Write-Host "Vitorias : $vitorias"
        Write-Host "Derrotas : $derrotas"
        Write-Host "Empates  : $empates"
        Write-Host "Obrigado por jogar!"
        $jogar = $false
    }
}