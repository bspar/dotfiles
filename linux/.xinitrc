#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

/usr/bin/xscreensaver -no-splash &
setxkbmap -option grp:switch,grp:shifts_toggle,ctrl:nocaps us,ru &
# xmodmap ~/.xmodmap-`uname -n`
xbindkeys
xautolock -locker slock &
dropboxd&
sudo wicd
echo noop | sudo tee /sys/block/sda/queue/scheduler
sudo ntpd
nohup ~/startConky.sh &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
libvirtd &
# exec gnome-session
# exec startkde
exec startxfce4
# ...or the Window Manager of your choice
