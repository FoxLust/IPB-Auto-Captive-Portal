# IPB-Auto-Captive-Portal

Tidak ada GUI pada OS tapi perlu melewati Captive Portal untuk terhubung Internet? Tidak masalah lagi~

## Penggunaan
Gunakan enkripsi.html untuk mendapatkan Payload, berikan username dan password menggunakan akun IPB yang valid (username tanpa menambahkan @apps.ipb.ac.id), Klik Generated, salin Payload yang berisikan "opr=pwdLogin&userName=xxxxxxx&auth_tag=xxxxxxx&rememberPwd=0" lalu ganti Payload pada script yang ingin digunakan

## MikroTik
Script untuk Auto Login menggunakan MikroTik Scheduler

```
/tool fetch url="http://1.1.1.3/ac_portal/login.php" http-method=post http-data="opr=pwdLogin&userName=dzfgafsdhfgh&pwd=gdrr8ujbvcde54567654&auth_tag=3546576878trtt7ygf&rememberPwd=0" http-header-field="Content-Type: application/x-www-form-urlencoded"
```
