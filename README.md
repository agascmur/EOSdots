
```bash
# 🔄 Update system
sudo apt update && sudo apt upgrade -y

# 📦 Install essentials
sudo apt install kitty htop snapd yt-dlp keepassxc rclone -y
sudo apt install btop cava -y

# 📁 Clone dotfiles
mkdir ~/Git && \
git clone https://github.com/agascmur/EOSdots.git ~/Git/EOSdots/

# 🧩 Enable Snap
sudo ln -s /var/lib/snapd/snap /snap && \
echo 'export PATH=$PATH:/snap/bin' >> ~/.bashrc && \
source ~/.bashrc

# 🧱 Snap installs
sudo snap install --edge youtube-music && \
sudo snap install code --classic && \
sudo snap install obsidian --classic
sudo snap install spotify

# 📱 Android Studio & SDK
sudo snap install android-studio --classic && \
sudo snap install androidsdk

# 🐦 Flutter SDK setup
cd ~/Downloads && \
curl -LO https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.13.6-stable.tar.xz && \
tar xf flutter_linux_3.13.6-stable.tar.xz && \
sudo mv flutter /usr/local/flutter && \
echo 'export PATH=$PATH:/usr/local/flutter/bin' >> ~/.bashrc && \
source ~/.bashrc && \
flutter --version

# 📦 Android cmdline tools
cd ~/Android/Sdk && \
mkdir -p cmdline-tools && \
cd cmdline-tools && \
wget https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip -O tools.zip && \
unzip tools.zip && \
rm tools.zip && \
mv cmdline-tools latest

# 🖥️ Flutter Linux deps
sudo apt install clang cmake ninja-build libgtk-3-dev -y

# 🔄 Flutter refresh
flutter channel stable && \
flutter upgrade && \
flutter clean && \
flutter pub get

# 🧬 Git config
git config --global user.email "agascmur@gmail.com" && \
git config --global user.name "agascmur"

# 🎨 Ricing
kitty +kitten themes
# Dot files at ~/.config/kitty/
```

### Obsidian and Drive sync installation

``` Shell
rclone config create gdrive drive

#Manual mount
mkdir google-drive && rclone mount gdrive: ~/google-drive --vfs-cache-mode writes &

# Set systemd service to automate mount
sudo nano /etc/systemd/system/rclone-gdrive.service
######
[Unit]
Description=Rclone Mount for Google Drive
Wants=network-online.target
After=network-online.target

[Unit]
Description=Rclone Mount for Google Drive
Wants=network-online.target
After=network-online.target

[Service]
Type=simple
ExecStart=/usr/bin/rclone mount gdrive: /home/agascmur/google-drive --vfs-cache-mode writes
ExecStop=/bin/fusermount -u /home/agascmur/google-drive
Restart=on-failure
User=agascmur
Group=agascmur

[Install]
WantedBy=multi-user.target
######

systemctl enable rclone-gdrive
```