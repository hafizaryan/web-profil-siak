# Web Profil Siak

Website profil Kabupaten Siak yang dibuat sebagai tugas kelompok mata kuliah Pemrograman Web (Kelompok 5), dilengkapi berkas makalah pendamping dalam format PDF di dalam repositori. Situs berisi informasi daerah, seperti pengenalan Siak, visi, wilayah, lambang daerah, dan prestasi, serta informasi layanan publik setempat.

## Fitur dan Halaman

- Halaman profil daerah: mengenal Siak, visi, wilayah, lambang, prestasi, dan profil kota
- Halaman informasi: hotel, restoran, pendidikan, dan kesehatan
- Halaman kontak dan profil anggota kelompok
- Registrasi dan login pengguna sederhana yang terhubung ke database
- Dashboard setelah login
- Data pendidikan SMA atau SMK di Siak (`sma.php`) yang dapat diekspor ke Excel dan PDF, serta dicetak (memakai library FPDF)

## Teknologi

- HTML dan CSS
- PHP native dengan MySQLi
- MySQL atau MariaDB (database `projek`)
- FPDF 1.84 untuk pembuatan PDF (folder `fpdf184`)
- Bootstrap melalui CDN

## Struktur Proyek

```text
web-profil-siak/
├── Profilkota.html, mengenalsiak.html, visi.html, wilayah.html,
│   lambang.html, prastasi.html       # Halaman profil daerah
├── infohotel.html, inforestoran.html,
│   infopendidikan.html, kesehatan.html
├── kontak.html, profilAnggota.html, dashboard.html
├── index2.php, index3.html           # Halaman awal dan login
├── login.php, register.php, register.html, logout.php
├── koneksi.php, koneksi2.php         # Konfigurasi koneksi database
├── sma.php                           # Data pendidikan SMA atau SMK
├── cetak.php, cetak2.php             # Versi cetak laporan
├── export_excel.php, export_excel2.php, export_pdf.php, export_pdf2.php
├── database/projek.sql               # Dump database
├── assets/, images/, pages/
└── fpdf184/                          # Library FPDF
```

## Cara Menjalankan

Prasyarat: server lokal seperti XAMPP dengan Apache dan MySQL.

1. Salin folder proyek ke dalam `htdocs`.
2. Buat database bernama `projek`, lalu impor berkas `database/projek.sql`.
3. Sesuaikan kredensial koneksi pada `koneksi.php` dan `koneksi2.php` bila perlu.
4. Buka halaman utama melalui `http://localhost/web-profil-siak/` (berkas HTML profil dapat dibuka langsung, sedangkan fitur login, register, dan data pendidikan membutuhkan Apache dan MySQL aktif).
