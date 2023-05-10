^l:: ; CTRL+L converts text to lower
  Clipboard := ""
  SendInput, ^c ;copies selected text
  ClipWait
  StringLower Clipboard, Clipboard
  SendInput %Clipboard%
Return

; remove newline characters
; str + m
^m::
  Send ^x
  StringReplace, clipboard, clipboard,`r`n,, All
  Send ^v
return