; Start terminal, ctrl + shift +f
(xbindkey '(control shift f) "terminator")

; Start browser
(xbindkey '(control shift k) "chromium")

; Lock screen
(xbindkey '(control alt l) "xflock4")

; Open dropbox folder
(xbindkey '(control shift d) "thunar ~/")

;Open quasselclient
(xbindkey '(control shift q) "quasselclient")

;Open eclipse
(xbindkey '(control shift e) "eclipse")

;Open thunderbird
(xbindkey '(control shift m) "thunderbird")

; Open wicd-client
(xbindkey '(control shift z) "wicd-client")

; Open firefox
(xbindkey '(control shift i) "firefox")

; Open zenmap
(xbindkey '(control shift a) "sudo zenmap")

; Open appmenu
(xbindkey '(Super_L a) "xfce4-popup-applicationsmenu")

; Open logisim
(xbindkey '(control shift l) "logisim")

; Run AVD noaudio bug
(xbindkey '(control shift h) "emulator -avd cleanAbsio  -partition-size 512 -noaudio -scale 140dpi")

; Open truecrypt
(xbindkey '(control shift r) "truecrypt")

; xfce4-screenshot
(xbindkey '(Print) "xfce4-screenshooter")

; vmware workstation
(xbindkey '(control shift k) "vmware")

; altera quartus (VHDL)
(xbindkey '(control shift u) "/opt/altera/altera/12.1sp1/quartus/bin/quartus --64bit")

; gummi LaTeX editor
(xbindkey '(control shift g) "gummi")

; calculator (bc)
(xbindkey '(control shift b) "terminator -e bc")

; increase volume
(xbindkey '("m:0x0" "c:123") "amixer set Master playback 1+")

; decrease volume
(xbindkey '("m:0x0" "c:122") "amixer set Master playback 1-")

; toggle mute
(xbindkey '("m:0x0" "c:121") "amixer set Master toggle")
