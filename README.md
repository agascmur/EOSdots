# EOSdots

Special thanks to The Linux Cast https://www.youtube.com/watch?v=mgyTCqr51iI&list=LL&index=2

My dots and process that I've done in my EndeavourOS system / XFCE4.

![Screenshot_2024-08-30_23-48-23](https://github.com/user-attachments/assets/205e032a-8c00-4208-84d7-5f9b30694578)

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

### Terminal welcome message
```sh
sudo pacman -S fortune-mod
sudo pacman -S figlet
sudo pacman -S cowsay

nano ~/.bashrc
#Add
fortune | cowsay -f stegosaurus
#Or
figlet -c Fuck off
```

### Fastfetch config
sudo mkdir -p ~/.config/fastfetch/ascii/

sudo nano ~/.config/fastfetch/config.jsonc
```sh
//   _____ _____ _____ _____ _____ _____ _____ _____ _____ 
//  |   __|  _  |   __|_   _|   __|   __|_   _|     |  |  |
//  |   __|     |__   | | | |   __|   __| | | |   --|     |
//  |__|  |__|__|_____| |_| |__|  |_____| |_| |_____|__|__|  ASCII-ART
//
//  by Bina
 
{
    "$schema": "https://github.com/fastfetch-cli/fastfetch/raw/dev/doc/json_schema.json",
    "logo": {
        "source": "~/.config/fastfetch/ascii/cat.txt",
        "padding": {
            "top": 2,
            "right": 6
        }
    },
    "display": {
        "separator": " •  "
    },
    "modules": [
	"break",
	"break",
	{
            "type": "title",
            "color": {
                "user": "32",  // = color2
                "at": "37",
                "host": "32"
            }
        },
        "break",
        {
            "type": "os",
            "key": "distribution   ",
            "keyColor": "33",
        },
        {
            "type": "kernel",
            "key": "linux kernel   ",
            "keyColor": "33",
        },
        {
            "type": "packages",
            "format": "{} (pacman)",
            "key": "packages       ",
            "keyColor": "33",  
        },
        {
            "type": "shell",
            "key": "unix shell     ",
            "keyColor": "33", 
        },
        {
            "type": "terminal",
            "key": "terminal       ",
            "keyColor": "33", 
        },
        {
            "type": "wm",
            "format": "{} ({3})",
            "key": "window manager ",
            "keyColor": "33", 
        },
        {
            "type": "cpu",
            "key": "cpu            ",
            "keyColor": "33",
        },
        {
            "type": "memory",
            "key": "memory         ",
            "keyColor": "33",
        },
        {
            "type": "disk",
            "key": "disk           ",
            "keyColor": "33",
        },
        "break",
        {
            "type": "colors",
            "symbol": "circle",
        },
        "break",
        "break",
    ]
}
```

sudo nano ~/.config/fastfetch/ascii/cat.txt
```sh
     /\___/\
     )     (
    =\     /=
      )   (
     /     \
     )     (
    /       \
    \       /
     \__ __/
        ))
       //
      ((
       \)
    unbr0ken
```
