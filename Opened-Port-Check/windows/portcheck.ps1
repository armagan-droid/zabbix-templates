$addresses= (Get-NetIPAddress -AddressFamily IPv6).IPAddress
$ports = Get-NetTCPConnection -LocalAddress ::,$addresses -State Listen | select Localport |select @{Label="#OPORT" ; E={($_.LocalPort)}}
$data = '{'+ '"data"' + ':' + '['
$count = 0
foreach($p in $ports){
    if ($count -eq $ports.Length-1){
        $data += '{"{#OPORT}":' + '"' + $p.'#OPORT'.ToString() + '"' + "}"
    }else{
    $data += '{"{#OPORT}":' + '"' + $p.'#OPORT'.ToString() + '"' + "},"
    }
    $count += 1
}
$data += ']' + '}'
return $data
