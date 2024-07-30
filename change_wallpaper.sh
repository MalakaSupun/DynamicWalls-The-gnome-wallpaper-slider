#!/bin/bash

# Directory containing wallpapers
WALLPAPER_DIR="$HOME/Pictures/Changing_Wallpapers/Wallpapers"

# Ensure the directory exists
if [ ! -d "$WALLPAPER_DIR" ]; then
    echo "Directory $WALLPAPER_DIR does not exist."
    exit 1
fi

# Get a random wallpaper from the directory
WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

# Ensure a wallpaper was found
if [ -z "$WALLPAPER" ]; then
    echo "No wallpapers found in $WALLPAPER_DIR."
    exit 1
fi

# Set the DISPLAY and DBUS_SESSION_BUS_ADDRESS variables for the gsettings command
export DISPLAY=:0
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/$(id -u)/bus"

# Set the wallpaper using gsettings for both regular and lock screen
gsettings set org.gnome.desktop.background picture-uri "file://$WALLPAPER"
gsettings set org.gnome.desktop.screensaver picture-uri "file://$WALLPAPER"

# Additionally, you may need to set the background adjustment to avoid scaling issues
gsettings set org.gnome.desktop.background picture-options 'zoom'

# For GNOME Tweaks compatibility, ensure both dark and light theme backgrounds are set if applicable
THEME=$(gsettings get org.gnome.desktop.interface gtk-theme)

if [[ "$THEME" == *"dark"* ]]; then
    gsettings set org.gnome.desktop.background picture-uri-dark "file://$WALLPAPER"
else
    gsettings set org.gnome.desktop.background picture-uri "file://$WALLPAPER"
fi

# Log the applied wallpaper (for debugging purposes)
echo "Applied wallpaper: $WALLPAPER"
