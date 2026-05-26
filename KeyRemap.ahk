#Requires AutoHotkey v2.0
#SingleInstance Force

; ============================================================
;  Key Remap untuk laptop tanpa tombol Home/End/PgUp/PgDn
;  (mis. Advan WorkPlus)
;
;  Alt + Arrow Up    -> Page Up
;  Alt + Arrow Down  -> Page Down
;  Alt + Arrow Left  -> Home
;  Alt + Arrow Right -> End
;
;  Cara pakai:
;    - Pastikan AutoHotkey v2 terpasang
;    - Double-click file ini
;    - (Opsional) taruh shortcut-nya di folder Startup
;      (Win+R -> shell:startup) agar jalan otomatis tiap boot
; ============================================================

!Up::Send "{PgUp}"
!Down::Send "{PgDn}"
!Left::Send "{Home}"
!Right::Send "{End}"
