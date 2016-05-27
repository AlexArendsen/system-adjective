xrdb -load "$HOME/.Xresources"
xset +fp "$HOME/.fonts"
xset fp rehash
update-wallpaper
pulseaudio --start
setxkbdmap -option compose:menu
exec i3
