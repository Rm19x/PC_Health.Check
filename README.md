#  PC Health Check Tool by M.Rm19

[![GitHub Tech Stack](https://img.shields.io/badge/Language-Batch%20%2F%20CMD-brightgreen)](https://github.com/Rm19x)
[![Platform](https://img.shields.io/badge/Platform-Windows%2010%20%2F%2011-blue)](https://github.com/Rm19x)
[![License](https://img.shields.io/badge/License-MIT-orange)](LICENSE)

**PC Health Check** adalah sebuah script otomatis berbasis Batch (.bat) dan PowerShell yang dirancang khusus untuk melakukan diagnosis instan terhadap kesehatan hardware dan software komputer Anda. Sangat cocok digunakan oleh teknisi, pencari laptop bekas (second), atau pengguna awam yang ingin mengetahui status riil PC mereka dalam hitungan detik.

---

##  Fitur Utama

Aplikasi ini dibekali dengan **49 Fitur Utama** yang mencakup:
*   **Analisis S.M.A.R.T Storage:** Deteksi kesehatan SSD/HDD dengan status jujur (100% Bagus / Jelek).
*   **Kesehatan Baterai Nyata:** Menghitung tingkat keausan (*wear level*) dan jumlah siklus (*cycle count*) baterai laptop.
*   **Deteksi Hardware Error Terintegrasi:** Membaca *Event Log* sistem untuk mengetahui apakah modul RAM pernah mengalami kegagalan.
*   **Diagnosis Real-Time:** Memantau suhu CPU (deteksi *overheat*), beban kerja prosesor, dan sisa kapasitas RAM.
*   **Fitur 49 - FULL SCAN:** Menjalankan seluruh 48 pengecekan secara otomatis dan merangkum hasilnya ke dalam satu laporan teks komprehensif (`pchealth_full_report.txt`).

---

##  Daftar Lengkap 49 Fitur Pengecekan

| No | Modul Diagnosis Hardware / Software | No | Modul Diagnosis Hardware / Software |
|:---:|:---|:---:|:---|
| **1** | Cek Status Kesehatan Storage (S.M.A.R.T) + % | **26** | Cek Daftar Histori Wi-Fi Pernah Terhubung |
| **2** | Hitung Tingkat Keausan Baterai + Skor Fisik | **27** | Cek Status Bluetooth |
| **3** | Cek Jumlah Siklus Baterai (Cycle Count) | **28** | Cek Status Kamera / Webcam |
| **4** | Cek Tipe Storage (SSD / HDD) | **29** | Cek Kinerja CPU Real-Time + Status Beban |
| **5** | Cek Kecepatan RAM Saat Ini | **30** | Cek Penggunaan RAM Real-Time + Sisa Persen |
| **6** | Cek Jumlah Slot RAM Terisi vs Total Slot | **31** | Cek Malware (Defender Quick Scan) |
| **7** | Cek Manufaktur / Merk RAM | **32** | Cek Layanan Kritis Windows (Services Status) |
| **8** | Deteksi Hardware Error pada RAM | **33** | Cek Aplikasi Otomatis Berjalan (Startup) |
| **9** | Cek Suhu CPU Saat Ini + Status Overheat | **34** | Cek Status Keamanan TPM Module |
| **10** | Cek Jumlah Core dan Thread CPU | **35** | Cek Status Secure Boot |
| **11** | Cek Serial Number Motherboard | **36** | Cek Riwayat Error Sistem (24 Jam Terakhir) |
| **12** | Cek Merk dan Model Laptop Asli | **37** | Cek Waktu Uptime Komputer |
| **13** | Cek Versi BIOS dan Tanggal Rilis | **38** | Cek Spesifikasi Power Supply / Adaptor |
| **14** | Cek Nama Resmi GPU / VGA | **39** | Cek Driver Tidak Ditandatangani |
| **15** | Cek Kapasitas VRAM | **40** | Pemicu Layar Warna Uji Dead Pixel |
| **16** | Cek Total Kapasitas Penyimpanan | **41** | Pemicu Keyboard Tester Online |
| **17** | Cek Sisa Ruang Penyimpanan + Persentase | **42** | Cek Konfigurasi IP Jaringan (Ipconfig) |
| **18** | Cek Model dan Vendor Layar (Monitor) | **43** | Cek Mac Address Hardware |
| **19** | Cek Serial Number PC / Laptop | **44** | Cek Status Fitur Virtualisasi (VT-x / AMD-V) |
| **20** | Cek Status Aktivasi Windows | **45** | Cek Port USB yang Terhubung |
| **21** | Cek Status Kesehatan Partisi (Chkdsk) | **46** | Cek Batas Maksimal Kapasitas RAM Upgrade |
| **22** | Cek Umur Instalasi Windows | **47** | Cek File Sistem yang Rusak (SFC Scan) |
| **23** | Cek Status Windows Update Terakhir | **48** | Ekspor Laporan Ringkas (`pchealth_report.txt`) |
| **24** | Cek Semua Driver yang Bermasalah | **49** | **🔥 FULL SCAN 1-48 + OTOMATIS JADI .TXT** |
| **25** | Cek Status Jaringan Wi-Fi | **0** | Keluar Aplikasi |

---

<img src="https://raw.githubusercontent.com/Rm19x/PC_Health.Check/refs/heads/main/fiture.png">

##  Kontribusi
Kontribusi, perbaikan bug, atau penambahan fitur baru sangat diapresiasi! Silakan buka issue atau kirimkan pull request Anda.
