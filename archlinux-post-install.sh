#!/bin/bash
cp -ir .config $HOME

sudo ln -sf /run/systemd/resolve/stub-resolve.conf /etc/resolv.conf

git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

paru -S uxplay yambar

sudo pacman -S adwaita-cursors adwaita-icon-theme aria2 audacious \
            base-devel bluez bluez-utils btop \
            chromium code cups \
            dnsmasq \
            edk2-ovmf \
            ffmpeg firefox flatpak foot fuzzel \
            gamemode git glib2 greetd grim gvfs \
            handbrake \
            ifuse imagemagick intel-compute-runtime intel-media-driver intel-ucode inter-font iptables-nft iwd \
            libarchive libnotify libreoffice-fresh libvirt \
            mako mangohud mediainfo mpv \
            nano noto-fonts noto-fonts-cjk noto-fonts-emoji nvidia-open nvidia-prime \
            obs-studio otf-font-awesome \
            pipewire pipewire-alsa pipewire-jack pipewire-pulse playerctl power-profiles-daemon \
            qpwgraph \
            rsync rtkit \
            shotcut slurp steam streamlink sudo sway swaybg \
            tesseract thunar ttf-jetbrains-mono tumbler \
            virt-manager vpl-gpu-rt vulkan-validation-layers \
            wireguard-tools wireplumber wl-clipboard \
            xdg-desktop-portal xdg-desktop-portal-gtk xdg-desktop-portal-wlr \
            yt-dlp \
            zram-generator

sudo systemctl enable bluetooth.service
sudo systemctl enable cups.service
sudo systemctl enable greetd.service
sudo systemctl enable libvirtd.service
sudo systemctl enable libvirtd.socket
sudo systemctl enable power-profiles-daemon.service
sudo systemctl enable rtkit-daemon.service
sudo systemctl enable systemd-zram-setup@zram0.service
