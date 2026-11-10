clear
echo
echo -e "  \033[0;97mo\033[0;37mo\033[0;94mo\033[0;90m.\033[0;97m \033[0;90m.\033[0;94mo\033[0;90mo.\033[0;97m  \033[0;90m.\033[0;94mo\033[0;34mo.\033[0;37m   \033[0;97m \033[0;90m.\033[0;97mo\033[0;94mooo\033[0;34mo.\033[0;37m  \033[0;97mo\033[0;94moo\033[0;34mo\033[0;97m \033[0;37md\033[0;94m8\033[0;34mb\033[0;37m \033[0;97mo\033[0;94moo\033[0;34mo\033[0;97m    o\033[0;94mo\033[0;34mo\033[0;37m \033[0;97mo\033[0;94moo\033[0;34mo\033[0;97m    o\033[0;94mo\033[0;34mo\033[0;37m \033[0;97mo\033[0;37mo\033[0;94mo\033[0;90m.\033[0;97m \033[0;90m.\033[0;94mo\033[0;34mo.\033[0;37m  \033[0m"
echo -e "  \033[0;90m\`\033[0;94m888P\033[0;34m\"\033[0;94mY88b\033[0;34mP\"\033[0;37mY\033[0;94m88\033[0;34mb\033[0;37m  \033[0;97md\033[0;94m88\033[0;90m'\033[0;97m \033[0;90m\`\033[0;94m88\033[0;34mb\033[0;37m \033[0;90m\`\033[0;94m888\"\"8\033[0;34mP\033[0;37m \033[0;97m \033[0;90m\`\033[0;94m88\033[0;34m.\033[0;97m  \033[0;90m.\033[0;94m8\033[0;34m'\033[0;37m  \033[0;97m \033[0;90m\`\033[0;94m88\033[0;34m.\033[0;97m  \033[0;90m.\033[0;94m8\033[0;34m'\033[0;37m  \033[0;90m\`\033[0;94m888P\033[0;90m\"\033[0;94mY88\033[0;34mb\033[0;37m \033[0m"
echo -e "  \033[0;97m \033[0;94m88\033[0;34m8\033[0;97m   \033[0;37m8\033[0;94m8\033[0;34m8\033[0;97m   \033[0;94m888\033[0;37m  \033[0;94m888ooo\033[0;37m8\033[0;94m8\033[0;34m8\033[0;37m \033[0;97m \033[0;94m88\033[0;34m8\033[0;37m     \033[0;97m  \033[0;90m\`\033[0;94m8\033[0;34m8.\033[0;90m.\033[0;94m8\033[0;34m'\033[0;37m   \033[0;97m  \033[0;90m\`\033[0;94m8\033[0;34m8.\033[0;90m.\033[0;94m8\033[0;34m'\033[0;37m   \033[0;97m \033[0;94m88\033[0;34m8\033[0;97m   \033[0;94m888\033[0;37m \033[0m"
echo -e "  \033[0;97m \033[0;94m88\033[0;34m8\033[0;97m   \033[0;94m8\033[0;34m88\033[0;97m   \033[0;94m88\033[0;34m8\033[0;37m  \033[0;94m88\033[0;34m8\033[0;97m    \033[0;90m.\033[0;34mo\033[0;37m \033[0;97m \033[0;37m8\033[0;94m8\033[0;34m8\033[0;37m     \033[0;97m   \033[0;90m\`\033[0;94m88\033[0;34m8'\033[0;37m    \033[0;97m   \033[0;90m\`\033[0;94m88\033[0;34m8'\033[0;37m    \033[0;97m \033[0;94m88\033[0;34m8\033[0;97m   \033[0;37m8\033[0;94m8\033[0;34m8\033[0;37m \033[0m"
echo -e "  \033[0;97mo\033[0;94m88\033[0;34m8o\033[0;97m o\033[0;94m8\033[0;34m88o\033[0;97m o\033[0;94m8\033[0;34m88o\033[0;37m \033[0;90m\`\033[0;94mY8bod8\033[0;34mP'\033[0;37m \033[0;97mo\033[0;94m8\033[0;34m88o\033[0;37m    \033[0;97m    \033[0;90m.\033[0;94m8\033[0;34m'\033[0;37m     \033[0;97m    \033[0;90m.\033[0;94m8\033[0;34m'\033[0;37m     \033[0;97mo\033[0;94m8\033[0;34m88o\033[0;97m o\033[0;94m8\033[0;34m88o\033[0m"
echo -e "  \033[0;37m                                     \033[0;90m.\033[0;97mo.\033[0;90m.\033[0;94mP\033[0;34m'\033[0;37m      \033[0;90m.\033[0;97mo.\033[0;90m.\033[0;94mP\033[0;34m'\033[0;37m                 \033[0m"
echo -e "  \033[0;37m                                     \033[0;97m\`\033[0;37mY\033[0;94m8\033[0;34mP'\033[0;37m       \033[0;97m\`\033[0;37mY\033[0;94m8\033[0;34mP'\033[0;37m                  \033[0m"
echo
echo

echo "                         Meryyn by CalamityFox"
echo "                 ostree/bootc system with niri+noctalia"
echo ""
echo "  Your current deployment will be pinned as a fallback in case of errors"
echo "  Type 'switch to meryyn' to start"
read answer
if [[ $answer == "switch to meryyn" ]]; then
    echo "  Installing Meryyn!" && sleep 2s
    
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
          flatpak install -y --sideload-repo=/usr/share/meryyn/flatpaks/.ostree/repo flathub "${installFLATPAK[@]}"
          
          sudo ostree admin pin 0
          rpm-ostree rebase ostree-unverified-registry:ghcr.io/calamityfox/meryyn
else
    echo " Installation cancelled by user"
fi
