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

::lorem::
SendInput Lorem ipsum dolor sit amet, ad his essent accusata eloquentiam. Vis et utinam conceptam. In vix impedit intellegebat, quis appetere splendide an duo, ei congue expetendis eum. Saepe eligendi cum eu. Vel mediocrem efficiendi voluptatibus ne, est appellantur reprehendunt ea. {Enter}Nec no eloquentiam instructior voluptatibus. Modo mucius vis id. Tota indoctum pri ut, te mel inermis partiendo, sit corrumpit appellantur ex. Amet sapientem quo id. Vis hinc malorum fabulas no.
return