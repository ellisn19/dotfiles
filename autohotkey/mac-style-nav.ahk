; --- Remap physical Left Alt to act like Ctrl for all key combos (e.g., copy/paste) ---

LAlt::LCtrl
LCtrl::LAlt

; Map LCtrl + common keys to Ctrl equivalents
LAlt & c::Send ^c        ; Copy
LAlt & v::Send ^v        ; Paste
LAlt & x::Send ^x        ; Cut
LAlt & z::Send ^z        ; Undo
LAlt & a::Send ^a        ; Select All
LAlt & s::Send ^s        ; Save
LAlt & f::Send ^f        ; Find
LAlt & t::Send ^t        ; New tab
LAlt & w::Send ^w        ; Close tab

; --- macOS-style cursor movement using physical Left Ctrl (now mapped to Alt) ---

; Move to beginning/end of line
LAlt & Left::
    if GetKeyState("Shift", "P")
        Send +{Home}
    else
        Send {Home}
return

LAlt & Right::
    if GetKeyState("Shift", "P")
        Send +{End}
    else
        Send {End}
return

; ; Move to top/bottom of document
LCtrl & Up::
    if GetKeyState("Shift", "P")
        Send +^{Home}
    else
        Send ^{Home}
return

LCtrl & Down::
    if GetKeyState("Shift", "P")
        Send +^{End}
    else
        Send ^{End}
return

; Move by word (Option-like) — using physical Left Alt (now mapped to Ctrl)
LCtrl & Left::
    if GetKeyState("Shift", "P")
        Send +^{Left}
    else
        Send ^{Left}
return

LCtrl & Right::
    if GetKeyState("Shift", "P")
        Send +^{Right}
    else
        Send ^{Right}
return

; Delete word backward
LCtrl & Backspace::Send ^{Backspace}