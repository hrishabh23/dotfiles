# Hrishabh Rajput
# Path: $HOME/.xinitrc

# Read config from ~/.Xresources
xrdb $HOME/.Xresources

# Set the status bar
$HOME/scripts/dwmstatus.sh

# Set the background
$HOME/scripts/fehbg

# Disable annoying(all) beep
xset -b

# Start your favourite WM
exec dwm
