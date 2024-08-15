$url = "http://1.1.1.3/ac_portal/login.php"

#Ganti payload dengan yang sudah di salin pada Browser
$Payload="opr=pwdLogin&userName=dzfgafsdhfgh&pwd=gdrr8ujbvcde54567654&auth_tag=3546576878trtt7ygf&rememberPwd=0"

$headers = @{
    "Content-Type" = "application/x-www-form-urlencoded"
    "Accept" = "*/*"
}

$response = Invoke-RestMethod -Uri $url -Method Post -Body $Payload -Headers $headers

# Output the response
$response