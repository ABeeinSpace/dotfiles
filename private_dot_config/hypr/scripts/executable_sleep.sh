swayidle -w timeout 300 'swaylock -f -i "/home/aidanb/Pictures/Wallpapers/World Endurance Championship/BAH-Desktop-01.png"' \
            timeout 600 'hyprctl dispatch dpms off' \
            resume 'hyprctl dispatch dpms on' \
            timeout 900 'systemctl suspend' \
            before-sleep 'swaylock -f -i "/home/aidanb/Pictures/Wallpapers/World Endurance Championship/BAH-Desktop-01.png"' &
