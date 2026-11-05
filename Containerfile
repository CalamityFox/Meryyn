# FROM scratch AS ctx
# COPY system /system
FROM quay.io/fedora/fedora-silverblue:latest

# Other base images:
# Universal Blue - github.com/orgs/ublue-os/packages
# Fedora --------- quay.io/fedora
# CentOS --------- quay.io/centos-bootc

USER root
RUN <<-'EOT' sh
set -ouex pipefail


# ========== enable RPM-Fusion ==========
dnf5 install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
dnf5 install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm


# ========== install RPMs ==========
installRPM=(
 age
 niri # Window manager
 noctalia # Shell
 plymouth
 sddm # Display manager
 tldr
 yt-dlp
)
# dnf5 install -y "${installRPM[@]}"


# ========== remove RPMs ==========
removeRPM=(
 alacritty
 fuzzel
 gdm
 gnome-browser-connector
 gnome-classic-session
 gnome-initial-setup
 gnome-session-wayland-session
 gnome-shell
 gnome-shell-extension-apps-menu
 gnome-shell-extension-common
 gnome-shell-extension-background-logo
 gnome-shell-extension-launch-new-instance
 gnome-shell-extension-places-menu
 gnome-shell-extension-window-list
 swaylock
 waybar
)
# rpm-ostree override remove "${removeRPM[@]}"


# ========== install FLATPAKs ==========
installFLATPAK=(
 app.devsuite.Ptyxis # Terminal
 app.drey.Warp # File sharing via `magic-wormhole`
 com.github.johnfactotum.Foliate # E-book reader
 com.github.tchx84.Flatseal # Flatpak permission manager
 de.haeckerfelix.Fragments # Torrent client
 io.github.kolunmi.Bazaar # App store
 io.gitlab.adhami3310.Impression # ISO flasher
 io.gitlab.librewolf-community # Browser
 org.gnome.Calculator # Calculator
 org.gnome.FileRoller # Archive utility
 org.gnome.Loupe # Image viewer
 org.gnome.Papers # Document viewer
 org.gnome.Showtime # Video player
 org.gnome.TextEditor # Text editor
 org.gnome.Weather # Weather
 org.gnome.World.Iotas # Notes
 org.gnome.World.PikaBackup # GUI for `borgbackup`
 org.gnome.World.Secrets # KeePass password manager
 org.libreoffice.LibreOffice # Office suite
 org.mozilla.thunderbird # E-mail client
)
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install -y --noninteractive flathub "${installFLATPAK[@]}"


# ========== miscellanious ==========
# wget -r -np -P / https://github.com/CalamityFox/Risk/tree/main/system/
# systemctl enable podman.socket


# ========== verify image ==========
bootc container lint
EOT

