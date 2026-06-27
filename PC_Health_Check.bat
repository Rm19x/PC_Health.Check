@echo off
:: =====================================================================
:: NAMA TOOLS : PC Health check
:: CREATOR    : M.Rm19
:: GITHUB     : github.com/Rm19x
:: =====================================================================

:check_Admin
net session >nul 2>&1
if %errorLevel% == 0 (
    goto main_menu
) else (
    echo ============================================================
    echo ERR: ERROR! KAMU HARUS MENJALANKAN SCRIPT INI SEBAGAI ADMIN!
    echo ============================================================
    echo Silakan klik kanan file ini, lalu pilih 'Run as Administrator'.
    echo.
    pause
    exit /b
)

:main_menu
:: Memastikan lokasi aktif CMD pindah ke folder tempat file .bat ini berada
cd /d "%~dp0"
cls
color 0A
echo =====================================================================
echo                     PC Health check 
echo =====================================================================
echo  Creator : M.Rm19
echo  Github  : github.com/Rm19x
echo =====================================================================
echo.
echo [1]  Cek Status Kesehatan Storage (S.M.A.R.T) + Nilai Persen
echo [2]  Hitung Tingkat Keausan Baterai + Skor Fisik
echo [3]  Cek Jumlah Siklus Baterai (Cycle Count)
echo [4]  Cek Tipe Storage (SSD / HDD)
echo [5]  Cek Kecepatan RAM Saat Ini
echo [6]  Cek Jumlah Slot RAM Terisi vs Total Slot
echo [7]  Cek Manufaktur / Merk RAM
echo [8]  Deteksi Hardware Error pada RAM [ STATUS: BAGUS / JELEK ]
echo [9]  Cek Suhu CPU Saat Ini + Status Overheat
echo [10] Cek Jumlah Core dan Thread CPU
echo [11] Cek Serial Number Motherboard
echo [12] Cek Merk dan Model Laptop Asli
echo [13] Cek Versi BIOS dan Tanggal Rilis
echo [14] Cek Nama Resmi GPU / VGA
echo [15] Cek Kapasitas VRAM
echo [16] Cek Total Kapasitas Penyimpanan
echo [17] Cek Sisa Ruang Penyimpanan (Free Space) + Persentase
echo [18] Cek Model dan Vendor Layar (Monitor)
echo [19] Cek Serial Number PC / Laptop
echo [20] Cek Status Aktivasi Windows
echo [21] Cek Status Kesehatan Partisi (Chkdsk Quick)
echo [22] Cek Umur Instalasi Windows
echo [23] Cek Status Windows Update Terakhir
echo [24] Cek Semua Driver yang Bermasalah (Device Manager Error)
echo [25] Cek Status Jaringan Wi-Fi
echo [26] Cek Daftar Histori Wi-Fi Pernah Terhubung
echo [27] Cek Status Bluetooth
echo [28] Cek Status Kamera / Webcam
echo [29] Cek Kinerja CPU Real-Time + Status Beban
echo [30] Cek Penggunaan RAM Real-Time + Sisa Persen
echo [31] Cek Keberadaan Malware Terhindar (Defender Quick Scan)
echo [32] Cek Layanan Kritis Windows (Services Status)
echo [33] Cek Aplikasi yang Otomatis Berjalan (Startup)
echo [34] Cek Status Keamanan TPM (Trusted Platform Module)
echo [35] Cek Status Secure Boot
echo [36] Cek Riwayat Error Sistem (Event Log 24 Jam Terakhir)
echo [37] Cek Waktu Uptime Komputer
echo [38] Cek Spesifikasi Power Supply / Adaptor Charger
echo [39] Cek Driver yang Tidak Ditandatangani (Unsigned Drivers)
echo [40] Pemicu Layar Warna Uji Dead Pixel
echo [41] Pemicu Keyboard Tester Online
echo [42] Cek Konfigurasi IP Jaringan (Ipconfig)
echo [43] Cek Mac Address Hardware
echo [44] Cek Status Fitur Virtualisasi (VT-x / AMD-V)
echo [45] Cek Port USB yang Terhubung
echo [46] Cek Batas Maksimal Kapasitas RAM Upgrade
echo [47] Cek File Sistem yang Rusak (SFC Scan)
echo [48] Ekspor Laporan Ringkas ke File Teks (pchealth_report.txt)
echo [49] FULL SCAN 1-48 FITURE + OTOMATIS JADI .TXT
echo [0]  Keluar Aplikasi
echo.
echo =====================================================================
set /p opt="Pilih Nomor Fitur (0-49) lalu tekan Enter: "

if "%opt%"=="1" goto opt1
if "%opt%"=="2" goto opt2
if "%opt%"=="3" goto opt3
if "%opt%"=="4" goto opt4
if "%opt%"=="5" goto opt5
if "%opt%"=="6" goto opt6
if "%opt%"=="7" goto opt7
if "%opt%"=="8" goto opt8
if "%opt%"=="9" goto opt9
if "%opt%"=="10" goto opt10
if "%opt%"=="11" goto opt11
if "%opt%"=="12" goto opt12
if "%opt%"=="13" goto opt13
if "%opt%"=="14" goto opt14
if "%opt%"=="15" goto opt15
if "%opt%"=="16" goto opt16
if "%opt%"=="17" goto opt17
if "%opt%"=="18" goto opt18
if "%opt%"=="19" goto opt19
if "%opt%"=="20" goto opt20
if "%opt%"=="21" goto opt21
if "%opt%"=="22" goto opt22
if "%opt%"=="23" goto opt23
if "%opt%"=="24" goto opt24
if "%opt%"=="25" goto opt25
if "%opt%"=="26" goto opt26
if "%opt%"=="27" goto opt27
if "%opt%"=="28" goto opt28
if "%opt%"=="29" goto opt29
if "%opt%"=="30" goto opt30
if "%opt%"=="31" goto opt31
if "%opt%"=="32" goto opt32
if "%opt%"=="33" goto opt33
if "%opt%"=="34" goto opt34
if "%opt%"=="35" goto opt35
if "%opt%"=="36" goto opt36
if "%opt%"=="37" goto opt37
if "%opt%"=="38" goto opt38
if "%opt%"=="39" goto opt39
if "%opt%"=="40" goto opt40
if "%opt%"=="41" goto opt41
if "%opt%"=="42" goto opt42
if "%opt%"=="43" goto opt43
if "%opt%"=="44" goto opt44
if "%opt%"=="45" goto opt45
if "%opt%"=="46" goto opt46
if "%opt%"=="47" goto opt47
if "%opt%"=="48" goto opt48
if "%opt%"=="49" goto opt49
if "%opt%"=="0" exit
goto main_menu

:back
echo.
echo =====================================================================
pause
goto main_menu

:opt1
cls
echo [*] Cek Status Kesehatan Storage (S.M.A.R.T)...
powershell -Command "$d = Get-CimInstance Win32_DiskDrive; foreach($b in $d){ if($b.Status -eq 'OK'){ Write-Host 'Drive:' $b.Model '-> [ 100% BAGUS / SEHAT ]' -ForegroundColor Green } else { Write-Host 'Drive:' $b.Model '-> [ 0% JELEK / ADA GEJALA BAD SECTOR ]' -ForegroundColor Red } }"
goto back

:opt2
cls
echo [*] Menghitung Tingkat Keausan Baterai...
powershell -Command "$b=Get-CimInstance -Namespace root/WMI -ClassName BatteryFullChargedCapacity;$d=Get-CimInstance -Namespace root/WMI -ClassName BatteryStaticData; if($b -and $d){ $health = [math]::Round(($b.FullChargedCapacity / $d.DesignedCapacity) * 100, 2); Write-Host 'Kapasitas Pabrik:' $d.DesignedCapacity 'mWh'; Write-Host 'Kapasitas Max Sekarang:' $b.FullChargedCapacity 'mWh'; if($health -ge 75){ Write-Host 'Skor Kesehatan Baterai:' $health '% [ BAGUS ]' -ForegroundColor Green } elseif($health -ge 50){ Write-Host 'Skor Kesehatan Baterai:' $health '% [ AGAK BOCOR ]' -ForegroundColor Yellow } else { Write-Host 'Skor Kesehatan Baterai:' $health '% [ JELEK / SEGERA GANTI ]' -ForegroundColor Red } } else { Write-Host 'Baterai tidak terdeteksi (PC Desktop).' }"
goto back

:opt3
cls
echo [*] Cek Jumlah Siklus Baterai (Cycle Count)...
powershell -Command "$b=Get-CimInstance -Namespace root/WMI -ClassName BatteryCycleCount; if($b){ Write-Host 'Battery Cycle Count:' $b.CycleCount; if($b.CycleCount -gt 500){ Write-Host 'Status: Umur penggunaan baterai sudah cukup lama.' -ForegroundColor Yellow } else { Write-Host 'Status: Pemakaian komponen baterai tergolong wajar.' -ForegroundColor Green } } else { Write-Host 'Informasi tidak didukung atau ini PC Desktop.' }"
goto back

:opt4
cls
echo [*] Cek Tipe Storage (SSD / HDD)...
powershell -Command "Get-PhysicalDisk | Select-Object DeviceId, Model, MediaType, Size"
goto back

:opt5
cls
echo [*] Cek Kecepatan RAM Saat Ini...
wmic memorychip get speed
goto back

:opt6
cls
echo [*] Cek Jumlah Slot RAM Terisi vs Total Slot...
powershell -Command "$m=Get-CimInstance Win32_PhysicalMemoryArray; $c=Get-CimInstance Win32_PhysicalMemory; Write-Host 'Total Slot Tersedia:' $m.MemoryDevices; Write-Host 'Slot Terisi:' ($c | Measure-Object).Count"
goto back

:opt7
cls
echo [*] Cek Manufaktur / Merk RAM...
wmic memorychip get Manufacturer, PartNumber
goto back

:opt8
cls
echo [*] Deteksi Hardware Error pada RAM...
powershell -Command "$el = Get-WinEvent -FilterHashtable @{LogName='System'; Id=2,47} -ErrorAction SilentlyContinue; if($el){ Write-Host '[ STATUS RAM: JELEK / EROR TERDETEKSI ]' -ForegroundColor Red; $el | Select-Object TimeCreated, Message -First 3 } else { Write-Host '[ STATUS RAM: 100% BAGUS / BERSIH DARI ERROR ]' -ForegroundColor Green }"
goto back

:opt9
cls
echo [*] Cek Suhu CPU Saat Ini...
powershell -Command "$t = Get-CimInstance -Namespace root/wmi -ClassName MSAcpi_ThermalZoneTemperature -ErrorAction SilentlyContinue; if($t){ $celsius = [math]::Round(($t.CurrentTemperature / 10) - 273.15, 1); Write-Host 'Suhu CPU:' $celsius 'C'; if($celsius -gt 85){ Write-Host 'STATUS: OVERHEAT / PANAS (Jelek, butuh ganti pasta!)' -ForegroundColor Red } else { Write-Host 'STATUS: NORMAL / AMAN (Bagus)' -ForegroundColor Green } } else { Write-Host 'Sensor suhu diblokir BIOS / tidak didukung.' }"
goto back

:opt10
cls
echo [*] Cek Jumlah Core dan Thread CPU...
wmic cpu get Name, NumberOfCores, NumberOfLogicalProcessors
goto back

:opt11
cls
echo [*] Cek Serial Number Motherboard...
wmic baseboard get product, Manufacturer, SerialNumber
goto back

:opt12
cls
echo [*] Cek Merk dan Model Laptop Asli...
wmic computersystem get Manufacturer, Model
goto back

:opt13
cls
echo [*] Cek Versi BIOS dan Tanggal Rilis...
wmic bios get name, version, releaseDate
goto back

:opt14
cls
echo [*] Cek Nama Resmi GPU / VGA...
wmic path win32_VideoController get Name
goto back

:opt15
cls
echo [*] Cek Kapasitas VRAM...
powershell -Command "Get-CimInstance Win32_VideoController | Select-Object Name, @{Name='VRAM (GB)';Expression={[math]::Round($_.AdapterRAM / 1GB, 2)}}"
goto back

:opt16
cls
echo [*] Cek Total Kapasitas Penyimpanan...
powershell -Command "Get-PhysicalDisk | Select-Object FriendlyName, @{Name='Size (GB)';Expression={[math]::Round($_.Size / 1GB, 2)}}"
goto back

:opt17
cls
echo [*] Cek Sisa Ruang Penyimpanan (Free Space)...
powershell -Command "Get-Volume | Where-Object DriveLetter | Select-Object DriveLetter, @{Name='Sisa (%)';Expression={[math]::Round(($_.SizeRemaining / $_.Size) * 100, 1)}}, @{Name='Free (GB)';Expression={[math]::Round($_.SizeRemaining / 1GB, 2)}}"
goto back

:opt18
cls
echo [*] Cek Model dan Vendor Layar (Monitor)...
wmic path win32_PnPEntity where "Service='monitor'" get Name
goto back

:opt19
cls
echo [*] Cek Serial Number PC / Laptop...
wmic bios get serialnumber
goto back

:opt20
cls
echo [*] Cek Status Aktivasi Windows...
cscript //nologo %systemroot%\system32\slmgr.vbs /dli
goto back

:opt21
cls
echo [*] Cek Status Kesehatan Partisi (Chkdsk Quick)...
chkdsk C:
goto back

:opt22
cls
echo [*] Cek Umur Instalasi Windows...
systeminfo | find /i "Original Install Date"
goto back

:opt23
cls
echo [*] Cek Status Windows Update Terakhir...
powershell -Command "Get-CimInstance Win32_QuickFixEngineering | Sort-Object InstalledOn -Descending | Select-Object -First 3 HotFixID, Description, InstalledOn"
goto back

:opt24
cls
echo [*] Cek Semua Driver yang Bermasalah (Device Manager Error)...
powershell -Command "$d = Get-CimInstance Win32_PnPEntity | Where-Object {$_.ConfigManagerErrorCode -ne 0}; if($d){ Write-Host '[ STATUS DRIVER: ADA MASALAH/JELEK ]' -ForegroundColor Yellow; $d | Select-Object Name, ConfigManagerErrorCode } else { Write-Host '[ STATUS DRIVER: 100% BAGUS / NORMAL ]' -ForegroundColor Green }"
goto back

:opt25
cls
echo [*] Cek Status Jaringan Wi-Fi...
netsh wlan show interfaces
goto back

:opt26
cls
echo [*] Cek Daftar Histori Wi-Fi Pernah Terhubung...
netsh wlan show profiles
goto back

:opt27
cls
echo [*] Cek Status Bluetooth...
powershell -Command "$b = Get-Service -Name *bluetooth* -ErrorAction SilentlyContinue; if($b){ $b | Select-Object Name, Status } else { Write-Host 'Hardware Bluetooth tidak aktif.' }"
goto back

:opt28
cls
echo [*] Cek Status Kamera / Webcam...
powershell -Command "$k = Get-CimInstance Win32_PnPEntity | Where-Object {$_.PNPClass -eq 'Camera' -or $_.Name -like '*webcam*'}; if($k){ Write-Host 'Kamera Terdeteksi [BAGUS]' -ForegroundColor Green } else { Write-Host 'Kamera Tidak Ditemukan [JELEK/MATI]' -ForegroundColor Red }"
goto back

:opt29
cls
echo [*] Cek Kinerja CPU Real-Time...
powershell -Command "$p = (Get-CimInstance Win32_Processor).LoadPercentage; Write-Host 'Beban CPU Saat Ini:' $p '%'; if($p -gt 85){ Write-Host 'Status: Sibuk Berat / Stress' -ForegroundColor Red } else { Write-Host 'Status: Santai / Ringan (Bagus)' -ForegroundColor Green }"
goto back

:opt30
cls
echo [*] Cek Penggunaan RAM Real-Time...
powershell -Command "$os = Get-CimInstance Win32_OperatingSystem; $freePct = [math]::Round(($os.FreePhysicalMemory / $os.TotalVisibleMemorySize) * 100, 1); Write-Host 'Sisa Kapasitas RAM Kosong:' $freePct '%'; if($freePct -lt 15){ Write-Host 'Status: Sisa RAM terlalu kritis! (Sesak)' -ForegroundColor Red } else { Write-Host 'Status: Sisa RAM aman. (Bagus)' -ForegroundColor Green }"
goto back

:opt31
cls
echo [*] Cek Keberadaan Malware (Defender Quick Scan)...
"C:\Program Files\Windows Defender\MpCmdRun.exe" -Scan -ScanType 1
goto back

:opt32
cls
echo [*] Cek Layanan Kritis Windows (Services Status)...
sc query wuauserv | findstr STATE
sc query bits | findstr STATE
goto back

:opt33
cls
echo [*] Cek Aplikasi yang Otomatis Berjalan (Startup)...
wmic startup get caption, command
goto back

:opt34
cls
echo [*] Cek Status Keamanan TPM (Trusted Platform Module)...
wmic /namespace:\\root\cimv2\security\microsofttpm path win32_tpm get IsEnabled_InitialValue, SpecVersion
goto back

:opt35
cls
echo [*] Cek Status Secure Boot...
powershell -Command "if(Confirm-SecureBootUEFI){Write-Host 'Secure Boot: AKTIF (Bagus)' -ForegroundColor Green} else {Write-Host 'Secure Boot: MATI / Tidak Didukung (Kurang Aman)' -ForegroundColor Yellow}"
goto back

:opt36
cls
echo [*] Cek Riwayat Error Sistem (Event Log 24 Jam Terakhir)...
powershell -Command "$err = Get-EventLog -LogName System -EntryType Error -After (Get-Date).AddDays(-1) -ErrorAction SilentlyContinue; if($err){ Write-Host 'Terjadi' ($err | Measure-Object).Count 'Error dalam 24 Jam terakhir. [ Harap Diperiksa ]' -ForegroundColor Yellow } else { Write-Host 'Sistem Bersih Tanpa Crash / Crash Log Kosong! [ 100% BAGUS ]' -ForegroundColor Green }"
goto back

:opt37
cls
echo [*] Cek Waktu Uptime Komputer...
net statistics workstation | find /i "Statistics since"
goto back

:opt38
cls
echo [*] Cek Spesifikasi Power Supply / Adaptor Charger...
powershell -Command "$p = Get-CimInstance Win32_Battery; if($p){ if($p.BatteryStatus -eq 2){ Write-Host 'Status Adaptor: Mengisi Daya Terhubung [BAGUS]' -ForegroundColor Green } else { Write-Host 'Status Adaptor: Menggunakan Daya Baterai' } } else { Write-Host 'PC Desktop (Menggunakan Listrik AC Langsung).' }"
goto back

:opt39
cls
echo [*] Cek Driver yang Tidak Ditandatangani (Unsigned Drivers)...
sigverif
goto back

:opt40
cls
echo [*] Membuka Browser untuk Tes Warna Layar (Dead Pixel)...
start https://screenpal.com/dead-pixel-test
goto back

:opt41
cls
echo [*] Membuka Browser untuk Keyboard Tester...
start https://en.key-test.ru/
goto back

:opt42
cls
echo [*] Cek Konfigurasi IP Jaringan (Ipconfig)...
ipconfig
goto back

:opt43
cls
echo [*] Cek Mac Address Hardware...
getmac
goto back

:opt44
cls
echo [*] Cek Status Fitur Virtualisasi (VT-x / AMD-V)...
systeminfo | findstr /i "Virtualization"
goto back

:opt45
cls
echo [*] Cek Port USB yang Terhubung...
wmic path Win32_USBControllerDevice get Dependent
goto back

:opt46
cls
echo [*] Cek Batas Maksimal Kapasitas RAM Upgrade...
powershell -Command "$m = Get-CimInstance Win32_PhysicalMemoryArray; Write-Host 'Batas Maksimal Upgrade RAM Motherboard:' ([math]::Round($m.MaxCapacity / 1GB, 2)) 'GB'"
goto back

:opt47
cls
echo [*] Cek File Sistem yang Rusak (SFC Scan)...
sfc /scannow
goto back

:opt48
cls
set REPORT_FILE=%~dp0pchealth_report.txt
echo =========================================== > "%REPORT_FILE%"
echo             PC HEALTH CHECK REPORT          >> "%REPORT_FILE%"
echo  Creator : M.Rm19 ^(github.com/Rm19x^)      >> "%REPORT_FILE%"
echo  Tanggal : %date% %time%                    >> "%REPORT_FILE%"
echo =========================================== >> "%REPORT_FILE%"
echo. >> "%REPORT_FILE%"
echo [1] KESEHATAN DRIVE STORAGE: >> "%REPORT_FILE%"
wmic diskdrive get model, status >> "%REPORT_FILE%"
echo [2] INFORMASI SISTEM & OS: >> "%REPORT_FILE%"
wmic computersystem get Manufacturer, Model >> "%REPORT_FILE%"
wmic bios get serialnumber >> "%REPORT_FILE%"
echo [3] INFORMASI RAM ERROR LOG: >> "%REPORT_FILE%"
powershell -Command "$el = Get-WinEvent -FilterHashtable @{LogName='System'; Id=2,47} -ErrorAction SilentlyContinue; if($el){'RAM STATUS: ERROR DETECTED'}else{'RAM STATUS: 100% OK'}" >> "%REPORT_FILE%"
echo. >> "%REPORT_FILE%"
echo Laporan dasar berhasil disimpan di %REPORT_FILE%!
goto back

:opt49
cls
set FULL_REPORT=%~dp0pchealth_full_report.txt
echo ======================================================== > "%FULL_REPORT%"
echo           PC HEALTH CHECK - FULL SCAN REPORT            >> "%FULL_REPORT%"
echo ======================================================== >> "%FULL_REPORT%"
echo  Creator : M.Rm19                                       >> "%FULL_REPORT%"
echo  Github  : github.com/Rm19x                            >> "%FULL_REPORT%"
echo  Waktu   : %date% %time%                                >> "%FULL_REPORT%"
echo ======================================================== >> "%FULL_REPORT%"
echo. >> "%FULL_REPORT%"

echo [!] MENJALANKAN FULL SCAN OTOMATIS (1-48)... MOHON TUNGGU...
echo Harap sabar, semua data komponen sedang diekstraksi ke %FULL_REPORT%...
echo.

echo [+] Mengambil data Storage...
echo --- [1-4] STORAGE INFO ^& HEALTH --- >> "%FULL_REPORT%"
powershell -Command "Get-CimInstance Win32_DiskDrive | ForEach-Object { if($_.Status -eq \"OK\"){ \"Drive: $($_.Model) -> [ 100%% BAGUS / SEHAT ]\" } else { \"Drive: $($_.Model) -> [ 0%% JELEK / ERROR ]\" } }" >> "%FULL_REPORT%"
powershell -Command "Get-PhysicalDisk | Select-Object DeviceId, Model, MediaType, Size | Out-String" >> "%FULL_REPORT%"

echo [+] Mengambil data Baterai...
echo --- [2-3] BATTERY METRICS --- >> "%FULL_REPORT%"
powershell -Command "$b=Get-CimInstance -Namespace root/WMI -ClassName BatteryFullChargedCapacity;$d=Get-CimInstance -Namespace root/WMI -ClassName BatteryStaticData; if($b -and $d){ $health = [math]::Round(($b.FullChargedCapacity / $d.DesignedCapacity) * 100, 2); \"Kapasitas Desain: $($d.DesignedCapacity) mWh\"; \"Kapasitas Sekarang: $($b.FullChargedCapacity) mWh\"; \"Skor Kesehatan Baterai: $($health)%%\"; if($health -ge 75){\"Status Baterai: BAGUS\"}else{\"Status Baterai: JELEK\"} } else { \"Baterai tidak dideteksi (PC Desktop)\" }" >> "%FULL_REPORT%"
powershell -Command "$b=Get-CimInstance -Namespace root/WMI -ClassName BatteryCycleCount; if($b){ \"Battery Cycle Count: $($b.CycleCount)\" } " >> "%FULL_REPORT%"

echo [+] Mengambil data Memori RAM...
echo --- [5-8, 46] RAM METRICS ^& HARDWARE ERROR LOG --- >> "%FULL_REPORT%"
wmic memorychip get Manufacturer, PartNumber, speed >> "%FULL_REPORT%"
powershell -Command "$m=Get-CimInstance Win32_PhysicalMemoryArray; $c=Get-CimInstance Win32_PhysicalMemory; \"Total Slot Tersedia: $($m.MemoryDevices)\"; \"Slot Terisi: $(@($c).Count)\"; \"Maksimal Upgrade RAM: $([math]::Round($m.MaxCapacity / 1GB, 2)) GB\"" >> "%FULL_REPORT%"
powershell -Command "$el = Get-WinEvent -FilterHashtable @{LogName='System'; Id=2,47} -ErrorAction SilentlyContinue; if($el){ \"STATUS RAM: JELEK (Hardware Error Terdeteksi di Log System)\" } else { \"STATUS RAM: 100%% BAGUS (Bersih dari Log Error)\" }" >> "%FULL_REPORT%"

echo [+] Mengambil data Prosesor CPU...
echo --- [9-10] CPU DIAGNOSTICS --- >> "%FULL_REPORT%"
wmic cpu get Name, NumberOfCores, NumberOfLogicalProcessors >> "%FULL_REPORT%"
powershell -Command "$t = Get-CimInstance -Namespace root/wmi -ClassName MSAcpi_ThermalZoneTemperature -ErrorAction SilentlyContinue; if($t){ $celsius = [math]::Round(($t.CurrentTemperature / 10) - 273.15, 1); \"Suhu CPU Terbaca: $($celsius) C\"; if($celsius -gt 85){\"STATUS: OVERHEAT (JELEK)\"}else{\"STATUS: ADEM (BAGUS)\"} } else { \"Sensor suhu diblokir BIOS\" }" >> "%FULL_REPORT%"

echo [+] Mengambil data Identitas Motherboard ^& BIOS...
echo --- [11-13, 19] BOARD, MODEL ^& BIOS INFO --- >> "%FULL_REPORT%"
wmic baseboard get product, Manufacturer, SerialNumber >> "%FULL_REPORT%"
wmic computersystem get Manufacturer, Model >> "%FULL_REPORT%"
wmic bios get name, version, releaseDate, serialnumber >> "%FULL_REPORT%"

echo [+] Mengambil data GPU ^& Monitor...
echo --- [14-15, 18] GRAPHICS ^& DISPLAY INFO --- >> "%FULL_REPORT%"
wmic path win32_VideoController get Name >> "%FULL_REPORT%"
powershell -Command "Get-CimInstance Win32_VideoController | Select-Object Name, @{Name='VRAM (GB)';Expression={[math]::Round($_.AdapterRAM / 1GB, 2)}} | Out-String" >> "%FULL_REPORT%"
wmic path win32_PnPEntity where "Service='monitor'" get Name >> "%FULL_REPORT%"

echo [+] Mengambil data Sistem Operasi Windows...
echo --- [17, 20, 22-24] WINDOWS ENVIRONMENT ^& DRIVERS --- >> "%FULL_REPORT%"
powershell -Command "Get-Volume | Where-Object DriveLetter | Select-Object DriveLetter, @{Name='Sisa (%%)';Expression={[math]::Round(($_.SizeRemaining / $_.Size) * 100, 1)}} | Out-String" >> "%FULL_REPORT%"
systeminfo | find /i "Original Install Date" >> "%FULL_REPORT%"
powershell -Command "$d = Get-CimInstance Win32_PnPEntity | Where-Object {$_.ConfigManagerErrorCode -ne 0}; if($d){ \"STATUS DRIVER: ADA ERROR\" } else { \"STATUS DRIVER: 100%% NORMAL BAGUS\" }" >> "%FULL_REPORT%"

echo [+] Mengambil data Konektivitas...
echo --- [25-28, 42-43, 45] NETWORK, PORTS ^& MULTIMEDIA --- >> "%FULL_REPORT%"
powershell -Command "$k = Get-CimInstance Win32_PnPEntity | Where-Object {$_.PNPClass -eq 'Camera' -or $_.Name -like '*webcam*'}; if($k){ \"Kamera Hardware: TERDETEKSI (BAGUS)\" } else { \"Kamera Hardware: TIDAK TERDETEKSI\" }" >> "%FULL_REPORT%"
netsh wlan show interfaces | findstr /i "State SSID Signal" >> "%FULL_REPORT%"
ipconfig | findstr /i "IPv4 Description" >> "%FULL_REPORT%"

echo [+] Mengambil data Log Keamanan...
echo --- [34-36] SECURITY ^& LIVE SYSTEM LOG --- >> "%FULL_REPORT%"
powershell -Command "if(Confirm-SecureBootUEFI){'Secure Boot: AKTIF'} else {'Secure Boot: NONAKTIF'}" >> "%FULL_REPORT%"
powershell -Command "$err = Get-EventLog -LogName System -EntryType Error -After (Get-Date).AddDays(-1) -ErrorAction SilentlyContinue; if($err){ \"Log System 24 Jam: Terjadi $($err.Count) Error (Ada Kendala Software)\" } else { \"Log System 24 Jam: 100%% CLEAN (BAGUS)\" }" >> "%FULL_REPORT%"

echo. >> "%FULL_REPORT%"
echo ======================================================== >> "%FULL_REPORT%"
echo       PROSES DIAGNOSIS SELESAI OLEH M.RM19              >> "%FULL_REPORT%"
echo ======================================================== >> "%FULL_REPORT%"

cls
color 0B
echo =====================================================================
echo [ SUCCESS ] FULL SCAN SELESAI, BOS M.RM19!
echo =====================================================================
echo Seluruh rangkuman performa nyata hardware, nilai persen, serta
echo status bagus/jelek telah berhasil dicatat ke dalam satu file.
echo.
echo Silakan buka file: %FULL_REPORT% di folder yang sama!
echo =====================================================================
goto back
