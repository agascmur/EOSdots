# EOSdots

Special thanks to The Linux Cast https://www.youtube.com/watch?v=mgyTCqr51iI&list=LL&index=2

My dots and process that I've done in my EndeavourOS system / XFCE4.

![First rice](https://github.com/user-attachments/assets/2dd8bb65-9761-44a7-a982-072121076f21)
![First_rice](https://github.com/user-attachments/assets/90aa15c4-50ff-4f4e-970f-d5844a7f29ab)

## Packages

```sh
sudo pacman -Sy tlp tlp-rdw # Also needed to: pacman purge power-profiles-daemon
sudo pacman -Sy psensor cpupower powertop thermald bbswitch
sudo pacman -Sy xf86-video-intel intel-gpu-tools
sudo pacman -Sy timeshift code mpv fastfetch
yay -Sy spotify

#lobster install (series/movies)
sudo pacman -S paru
sudo pacman -S fzf curl grep sed patch mpv html-xml-utils socat vlc rofi
paru -S lobster-git
```
## Rice

### Set Bar
Go legacy mode and remove the bottom bar, move the top bar to bottom.

### Set GruvTheme
Change/Add:

$HOME/.config/gtk-3.0/

$HOME/.icons/Gruvbox-Plus-Dark

$HOME/.themes/Gruvbox-Dark  Gruvbox-Dark-hdpi  Gruvbox-Dark-xhdpi

### Set Wallpaper at lock screen
sudo nano /etc/lightdm/lightdm-gtk-greeter.conf
```sh
[Greeter]
background=/usr/share/endeavouros/backgrounds/portal.jpg
```
sudo cp Git/EOSdots/Themes/portal.jpg /usr/share/endeavouros/backgrounds/

Also you can install and run:
sudo pacman -S lightdm-gtk-greeter-settings

Make sure that the walpaper to use is located in the EndervourOS main directory!

### Terminal Palettes
```sh
mkdir -p ~/.local/share/xfce4/terminal/colorschemes/
cd ~/.local/share/xfce4/terminal/
git clone https://github.com/mbadolato/iTerm2-Color-Schemes.git
mv iTerm2-Color-Schemes/xfce4terminal/* .
rm -rf iTerm2-Color-Schemes
```