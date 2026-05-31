$jogar = $true

while ($jogar) {

    $secreto  = Get-Random -Minimum 50 -Maximum 101
    $tentativas = 6
    $acertou  = $false

    Write-Host ""
    Write-Host "==============================="
    Write-Host "      ADIVINHE O NUMERO"
    Write-Host "  (entre 50 e 100 - $tentativas chances)"
    Write-Host "==============================="

    for ($t = 1; $t -le $tentativas; $t++) {

        Write-Host ""
        Write-Host "Tentativa $t de $tentativas"
        $palpite = Read-Host "Digite seu palpite"
        $palpite = [int]$palpite

        
        if ($palpite -lt 50 -or $palpite -gt 100) {
            Write-Host "Palpite fora do intervalo! Digite um numero entre 50 e 100."
            $t--  
            continue
        }

        if ($palpite -eq $secreto) {
            Write-Host ""
            Write-Host "PARABENS! Voce acertou o numero e: $secreto"
            $acertou = $true
            break

        } elseif ($palpite -lt $secreto) {
            Write-Host "Digite um numero maior"

        } else {
            Write-Host "Digite um numero menor"
        }

       
        $restam = $tentativas - $t
        if ($restam -gt 0) {
            Write-Host "Tentativas restantes: $restam"
        }
    }

   
    if (-not $acertou) {
        Write-Host ""
        Write-Host "==============================="
        Write-Host "VOCE PERDEU! O numero sorteado era: $secreto"
        Write-Host "==============================="
    }

    Write-Host ""
    $novamente = Read-Host "Deseja jogar novamente? (s/n)"

    if ($novamente -ne "s") {
        Write-Host ""
        Write-Host "Obrigado por jogar! Ate mais!"
        $jogar = $false
    }
}