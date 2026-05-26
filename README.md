# Advan WorkPlus — Home / End / PageUp / PageDown Remap

Laptop **Advan WorkPlus** (and many other compact laptops) has no physical **Home**, **End**, **Page Up**, or **Page Down** keys. This repo provides a simple **AutoHotkey v2** remap that maps **Alt + Arrow** combinations to those functions.

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

### Step 1 — Run the remap

1. Open the **[Releases](../../releases)** page.
2. Download **`KeyRemap.exe`**.
3. **Double-click** it. The remap is active immediately (a green **H** icon appears in the system tray).

> No need to install AutoHotkey — the `.exe` is self-contained.

### Step 2 — Make it auto-start on every boot (easiest way)

1. Download **`install-autostart.bat`** from the Releases page too.
2. Rename **`KeyRemap v[version].exe`**. to **`KeyRemap.exe`**
3. Put **`install-autostart.bat`** and **`KeyRemap.exe`** in the **same folder**.
4. **Double-click `install-autostart.bat`**.

That's it. The script copies `KeyRemap.exe` into your Windows Startup folder and launches it. From now on the remap runs automatically every time Windows starts.

> **Manual alternative:** if you'd rather not use the `.bat`, copy `KeyRemap.exe` yourself into:
> ```
> C:\Users\<YourUsername>\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
> ```

### Uninstall

1. Delete `KeyRemap.exe` from the Startup folder (`...\Start Menu\Programs\Startup`).
2. Right-click the green **H** tray icon → **Exit** to stop the running instance.

### Prefer the raw script? (Option: `.ahk`)

If you'd rather see/edit the code instead of running an `.exe`:

1. Install **AutoHotkey v2** from [autohotkey.com](https://www.autohotkey.com/).
2. Download **`KeyRemap.ahk`** and double-click it.

```autohotkey
#Requires AutoHotkey v2.0
#SingleInstance Force

!Up::Send "{PgUp}"
!Down::Send "{PgDn}"
!Left::Send "{Home}"
!Right::Send "{End}"
```

### Notes

- **Windows Defender** may flag AutoHotkey-compiled `.exe` files as *false positives*. Choose **Run anyway** / **Keep**, or use the `.ahk` script which doesn't trigger this.
- Built and tested on Windows. Works on Windows 10 & 11.

---

## 🇮🇩 Bahasa Indonesia

### Langkah 1 — Jalankan remap

1. Buka halaman **[Releases](../../releases)**.
2. Download **`KeyRemap.exe`**.
3. **Double-click** file-nya. Remap langsung aktif (muncul ikon hijau **H** di system tray).

> Tidak perlu install AutoHotkey — `.exe` ini sudah mandiri.

### Langkah 2 — Buat otomatis jalan tiap boot (cara paling gampang)

1. Download juga **`install-autostart.bat`** dari halaman Releases.
2. Ganti nama **`KeyRemap v[version].exe`**. ke **`KeyRemap.exe`**
3. Taruh **`install-autostart.bat`** dan **`KeyRemap.exe`** di **folder yang sama**.
4. **Double-click `install-autostart.bat`**.

Selesai. Script akan menyalin `KeyRemap.exe` ke folder Startup Windows dan langsung menjalankannya. Mulai sekarang remap otomatis aktif tiap Windows menyala.

> **Cara manual:** kalau tidak mau pakai `.bat`, copy sendiri `KeyRemap.exe` ke:
> ```
> C:\Users\<NamaUser>\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
> ```

### Cara uninstall

1. Hapus `KeyRemap.exe` dari folder Startup (`...\Start Menu\Programs\Startup`).
2. Klik kanan ikon **H** hijau di system tray → **Exit**.

### Mau pakai script mentahnya? (Opsi: `.ahk`)

Kalau lebih suka melihat/mengubah kode daripada menjalankan `.exe`:

1. Install **AutoHotkey v2** dari [autohotkey.com](https://www.autohotkey.com/).
2. Download **`KeyRemap.ahk`** dan double-click.

### Catatan

- **Windows Defender** kadang memunculkan peringatan *false-positive* untuk `.exe` hasil AutoHotkey. Pilih **Run anyway** / **Keep**, atau gunakan script `.ahk` yang tidak memicu peringatan ini.
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
