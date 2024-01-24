#Requires AutoHotkey v2.0
; requires setDpi.exe in $PATH https://github.com/imniko/SetDPI/

OnMessage 0x007E, OnDisplayChange ; System Event: Display changes
Persistent

OnDisplayChange(wParam, lParam, *)
{
    Sleep 1000 ; setDpi needs to be delayed a little bit, otherwise explorer.exe crashes
    ChangeDisplay()
}

ChangeDisplay() {
    scaleHigh := 150
    scaleLow := 100
    count := MonitorGetCount()
        
    if (count == 1)
    {
        ; wenn ein Monitor, dann schaue nach der Höhe (A_ScreenHeight) des Displays, bei Displays über 2k Vertikale, skalieren wir hoch
        newScale := A_ScreenHeight >= 2000 ? scaleHigh : scaleLow
        Run("setDpi.exe " . newScale . " " . 1)
    } 
    else if (count == 2)
    {
        ; wenn zwei Monitore --> skalieren wir nur DISPLAY1 auf scaleHigh
        Run("setDpi.exe " . scaleHigh . " 2")
    }
}

ChangeDisplay()