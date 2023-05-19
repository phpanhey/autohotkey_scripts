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

; make a lorem hotstring
::lorem::Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dignissim nulla ac mi consectetur, nec venenatis urna iaculis. Integer posuere leo in mi ultricies, nec rutrum metus congue. Nullam ullamcorper, felis vel mattis finibus, ipsum lectus posuere ligula, vitae pellentesque neque enim eget purus. Donec semper erat vel purus malesuada, eu ullamcorper justo volutpat. Sed id tincidunt quam. Nunc iaculis leo nec aliquam cursus. Suspendisse rhoncus maximus ultrices. Aliquam sit amet odio est.::