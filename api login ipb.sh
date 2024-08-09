#!/bin/bash

url="http://1.1.1.3/ac_portal/login.php"

#Ganti payload dengan yang sudah di salin pada Browser
Payload="opr=pwdLogin&userName=dzfgafsdhfgh&pwd=gdrr8ujbvcde54567654&auth_tag=3546576878trtt7ygf&rememberPwd=0"

headers=(
  -H "Content-Type: application/x-www-form-urlencoded"
  -H "Accept: */*"
)

response=$(curl -s -X POST "${headers[@]}" -d "$data" "$url")

# echo "Status code: $?"
echo "$response"