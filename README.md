# Advan WorkPlus — Home / End / PageUp / PageDown Remap

Laptop **Advan WorkPlus** (dan banyak laptop ringkas lain) tidak punya tombol fisik **Home**, **End**, **Page Up**, dan **Page Down**. Repo ini menyediakan remap sederhana berbasis **AutoHotkey v2** yang memetakan kombinasi **Alt + tombol panah** ke fungsi-fungsi tersebut.

Tersedia dua cara pakai: **download `.exe` jadi** (paling gampang) atau **pakai script `.ahk`** (transparan, bisa diedit).

---

## Mapping

| Kombinasi   | Hasil      |
| ----------- | ---------- |
| `Alt + ↑`   | Page Up    |
| `Alt + ↓`   | Page Down  |
| `Alt + ←`   | Home       |
| `Alt + →`   | End        |

---

## Cara 1 — Pakai `.exe` (paling gampang, tanpa install apa pun)

1. Buka halaman **[Releases](../../releases)** repo ini.
2. Download **`KeyRemap.exe`**.
3. **Double-click** file-nya. Remap langsung aktif (muncul ikon hijau **H** di system tray).

> Tidak perlu install AutoHotkey. File `.exe` ini sudah mandiri.

### Agar otomatis jalan tiap Windows menyala (autorun)

1. Tekan `Win + R`.
2. Ketik **`shell:startup`** lalu Enter. Folder Startup akan terbuka.
3. **Copy** `KeyRemap.exe` ke folder tersebut (atau buat shortcut-nya di situ).

Selesai. Mulai sekarang remap akan otomatis aktif setiap kali laptop dinyalakan.

---

## Cara 2 — Pakai script `.ahk` (butuh AutoHotkey v2)

Cocok kalau kamu ingin melihat / mengubah isi script-nya, atau lebih suka tidak menjalankan `.exe`.

1. Install **AutoHotkey v2** dari [autohotkey.com](https://www.autohotkey.com/) (installer biasa, next-next-finish).
2. Download **`KeyRemap.ahk`** dari repo ini.
3. **Double-click** file `.ahk`-nya. Remap aktif.
4. Untuk autorun: `Win + R` → `shell:startup` → copy `KeyRemap.ahk` ke folder Startup.

Isi script-nya cuma ini:

```autohotkey
#Requires AutoHotkey v2.0
#SingleInstance Force

!Up::Send "{PgUp}"
!Down::Send "{PgDn}"
!Left::Send "{Home}"
!Right::Send "{End}"
```

---

## Cara compile sendiri (opsional)

Kalau kamu mau membuat `.exe`-nya sendiri dari `.ahk`:

1. Install AutoHotkey v2 dari installer resmi (menyertakan **Ahk2Exe**).
2. Buka **Ahk2Exe** (cari di Start menu).
3. **Source (script file):** pilih `KeyRemap.ahk`.
4. **Base File:** pilih versi **v2** (`AutoHotkey64.exe`).
5. Klik **Convert**. Hasilnya `KeyRemap.exe`.

---

## Cara uninstall

1. Tekan `Win + R` → ketik `shell:startup` → hapus `KeyRemap.exe` / `KeyRemap.ahk` dari folder Startup.
2. Klik kanan ikon **H** hijau di system tray → **Exit** (untuk mematikan yang sedang berjalan).

---

## Catatan

- **Windows Defender / antivirus** kadang memunculkan peringatan *false-positive* untuk `.exe` hasil AutoHotkey, karena sebagian malware juga memakai AHK. Ini umum. Kalau ragu, gunakan **Cara 2** (script `.ahk`) yang tidak memicu peringatan ini.
- Dibuat & diuji pada Windows. Mendukung Windows 10 & 11.

---

## License

MIT — lihat [LICENSE](LICENSE). Bebas dipakai, diubah, dan dibagikan.
