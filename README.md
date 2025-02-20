# wp

10.1.11.201 folder "0000-UKK2025"

1.	Gunakan UPS sebagai sumber daya cadangan, pasang stabilizer untuk menjaga kestabilan tegangan, dan lakukan backup data secara berkala guna mencegah kerusakan komputer akibat listrik yang tidak stabil.
2.	Hardware utama server meliputi CPU (pemrosesan), RAM (penyimpanan sementara), HDD/SSD (penyimpanan permanen), motherboard (penghubung komponen), PSU (sumber daya), NIC (Network Interface Card), cooling system (pendingin), chassis (casing pelindung), serta RAID controller dan GPU (opsional).
3.	Gunakan perintah cat /etc/os-release untuk melihat versi OS atau uname -r untuk melihat versi kernel.
4.	Jika kipas heatsink tidak berputar saat komputer menyala, segera perbaiki untuk mencegah overheat, penurunan performa, dan kerusakan hardware.
5.	IPMI adalah standar manajemen server jarak jauh yang dijalankan oleh BMC (chip di motherboard). Contoh implementasinya: iDRAC (Dell), iLO (HPE), dan IPMItool (command-line universal).
6.	Sistem operasi open-source adalah sistem operasi yang kode sumbernya dapat diakses, dimodifikasi, dan didistribusikan secara bebas.
7.	Instal WordPress dengan Apache2, PHP, MySQL, dan BIND9 dengan memperbarui sistem, menginstal paket yang diperlukan, membuat database MySQL, mengonfigurasi virtual host di Apache, mengatur zona DNS di BIND9, mengaktifkan SSL/TLS, lalu menyelesaikan instalasi melalui browser.
8.	Perawatan server meliputi update OS, backup data, pemantauan log dan performa, menjaga keamanan, serta pengecekan hardware secara berkala.
9.	Restore VM di Proxmox: Masuk ke web interface, pilih node, buka tab Backup, klik file backup, pilih Restore, atur konfigurasi jika diperlukan, lalu jalankan proses dan cek apakah VM berjalan normal.
10.	Backup VM di Proxmox: Masuk ke web interface, pilih VM, buka tab Backup, klik Backup Now, pilih storage tujuan dan mode backup (Snapshot/Stop), lalu jalankan proses hingga selesai.

sofware7 : apcahe2(web server), bind9(dns server), mysql(db server), wordpress(mengelola website), php(bahasa pemrograman yang digunakan), px(Virtualisasi Server), ubn(Sistem Operasi Server)
hardware : server,cpu,ram,hdd,psu,cooling

