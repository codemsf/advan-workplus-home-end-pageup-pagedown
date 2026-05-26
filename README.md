# Advan WorkPlus — Home / End / PageUp / PageDown Remap

Laptop **Advan WorkPlus** (and many other compact laptops) has no physical **Home**, **End**, **Page Up**, or **Page Down** keys. This repo provides a simple **AutoHotkey v2** remap that maps **Alt + Arrow** combinations to those functions.

Two ways to use it: **download the ready-made `.exe`** (easiest) or **use the `.ahk` script** (transparent, editable).

> 🇬🇧 English below · 🇮🇩 Bahasa Indonesia di bawah

---

## Mapping

| Combo / Kombinasi | Output / Hasil |
| ----------------- | -------------- |
| `Alt + ↑`         | Page Up        |
| `Alt + ↓`         | Page Down      |
| `Alt + ←`         | Home           |
| `Alt + →`         | End            |

---

## 🇬🇧 English

### Option 1 — Use the `.exe` (easiest, no install)

1. Open the **[Releases](../../releases)** page.
2. Download **`KeyRemap.exe`**.
3. **Double-click** it. The remap is active immediately (a green **H** icon appears in the system tray).

> No need to install AutoHotkey — the `.exe` is self-contained.

**Auto-start on every boot:**

1. Press `Win + R`.
2. Type **`shell:startup`** and hit Enter. The Startup folder opens.
3. **Copy** `KeyRemap.exe` into that folder (or place a shortcut there).

Done — the remap now runs automatically every time Windows starts.

### Option 2 — Use the `.ahk` script (requires AutoHotkey v2)

1. Install **AutoHotkey v2** from [autohotkey.com](https://www.autohotkey.com/).
2. Download **`KeyRemap.ahk`** from this repo.
3. **Double-click** it. Done.
4. For auto-start: `Win + R` → `shell:startup` → copy `KeyRemap.ahk` into the Startup folder.

### Uninstall

1. `Win + R` → `shell:startup` → delete `KeyRemap.exe` / `KeyRemap.ahk` from the Startup folder.
2. Right-click the green **H** tray icon → **Exit** to stop the running instance.

### Notes

- **Windows Defender** may flag AutoHotkey-compiled `.exe` files as *false positives*. Choose **Run anyway** / **Keep**, or use Option 2 (the `.ahk` script) which doesn't trigger this.
- Built and tested on Windows. Works on Windows 10 & 11.

---

## 🇮🇩 Bahasa Indonesia

### Cara 1 — Pakai `.exe` (paling gampang, tanpa install)

1. Buka halaman **[Releases](../../releases)**.
2. Download **`KeyRemap.exe`**.
3. **Double-click** file-nya. Remap langsung aktif (muncul ikon hijau **H** di system tray).

> Tidak perlu install AutoHotkey — `.exe` ini sudah mandiri.

**Agar otomatis jalan tiap Windows menyala:**

1. Tekan `Win + R`.
2. Ketik **`shell:startup`** lalu Enter. Folder Startup terbuka.
3. **Copy** `KeyRemap.exe` ke folder tersebut (atau buat shortcut di situ).

Selesai — remap otomatis aktif setiap laptop dinyalakan.

### Cara 2 — Pakai script `.ahk` (butuh AutoHotkey v2)

1. Install **AutoHotkey v2** dari [autohotkey.com](https://www.autohotkey.com/).
2. Download **`KeyRemap.ahk`** dari repo ini.
3. **Double-click** file-nya. Selesai.
4. Untuk autorun: `Win + R` → `shell:startup` → copy `KeyRemap.ahk` ke folder Startup.

Isi script-nya:

```autohotkey
#Requires AutoHotkey v2.0
#SingleInstance Force

!Up::Send "{PgUp}"
!Down::Send "{PgDn}"
!Left::Send "{Home}"
!Right::Send "{End}"
```

### Cara uninstall

1. `Win + R` → `shell:startup` → hapus `KeyRemap.exe` / `KeyRemap.ahk` dari folder Startup.
2. Klik kanan ikon **H** hijau di system tray → **Exit**.

### Catatan

- **Windows Defender** kadang memunculkan peringatan *false-positive* untuk `.exe` hasil AutoHotkey. Pilih **Run anyway** / **Keep**, atau gunakan Cara 2 (script `.ahk`) yang tidak memicu peringatan ini.
- Dibuat & diuji pada Windows. Mendukung Windows 10 & 11.

---

## Compile it yourself (optional)

1. Install AutoHotkey v2 from the official installer (includes **Ahk2Exe**).
2. Open **Ahk2Exe** (search in Start menu).
3. **Source:** select `KeyRemap.ahk`.
4. **Base File:** pick the **v2** version (`AutoHotkey64.exe`).
5. Click **Convert** → you get `KeyRemap.exe`.

---

## License

MIT — see [LICENSE](LICENSE). Free to use, modify, and share.
