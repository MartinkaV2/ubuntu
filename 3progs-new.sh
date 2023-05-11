#!/bin/bash

# APT APP TELEPITO SCRIPT
# Ami elott nincs # oda ne is tegyel mert azok mind kellenek

# Zenity ablak megjelenítése
user_choice=$(zenity --list --checklist --width='1000' --height='700' \
  --title="Telepítő" \
  --text="Válassz az alábbi programok közül:" \
  --column="Válassz" --column="Leírás" \
  TRUE "Fuggosegek - NE VEDD KI INNEN A PIPAT!" \
  FALSE "GNOME Screenshot - Gyorsbillentyus Screenshot" \
  FALSE "Steam" \
  FALSE "Proton Legfrissebb Verzio Telepitese" \
  FALSE "GameMode" \
  FALSE "PeaZip Tomorito Progi" \
  FALSE "Neofetch - Terminalos System Info" \
  FALSE "WINE - Windows Appokat Futtato Kornyezet" \
  FALSE "Mumble - VoiceChat" \
  FALSE "Lutris - Game Launchereket es egyeb appokat futtato kornyezet" \
  FALSE "KVM QEMU Virtualizacio" \
  FALSE "CoreCTRL - AMD GPU Konfigolo App" \
  FALSE "OBS" \
  FALSE "LibreOffice" \
  FALSE "Vivaldi Bongeszo" \
  FALSE "Brave Bongeszo" \
  FALSE "Librewolf Bongeszo" \
  FALSE "Firefox Bongeszo" \
  FALSE "FreeTube - Adatlopas Mentes Youtube Kliens" \
  FALSE "Dosbox - Regi jatek emulator" \
  FALSE "Pavucontrol - Apponkenti Hangero Szabalyzas/Konfiguralas" \
  FALSE "KeepassXC - Localban tarolt jelszo tarolo" \
  FALSE "Cider - Apple Music Player Linuxra" \
  FALSE "Darktable - Adobe Lightroom Linuxos Megfeleloje" \
  FALSE "VLC Media Player" \
  FALSE "QBittorrent Kliens" \
  FALSE "Flatseal - Flatpak app jog konfigurator" \
  FALSE "Telegram Titkositott Messenger" \
  FALSE "Kdenlive - Linuxos Video Szerkeszto App" \
  FALSE "Gnome Extension Manager - Gnome bovitmenykezelo" \
  FALSE "PhotoGimp - Adobe Photoshop Linuxos Megfeleloje" \
  FALSE "Discord" \
  FALSE "Goverlay - MSI Afterburner Linuxos Megfeleloje FPS Kijelzes" \
  FALSE "Windows 11 Installer - Csak Profiknak")

# Döntés alapján a kiválasztott programok telepítése
if [[ $user_choice == *"Fuggosegek - NE VEDD KI INNEN A PIPAT!"* ]]; then
  sudo nala install ffmpeg curl libc6-i386 libegl1:i386 libgbm1:i386 libgl1-mesa-dri:i386 libgl1:i386 python3-evdev python3-pydbus gettext libgtksourceview-4-dev python3-decorator python3-psutil python3-pyte libpython3-dev python3-setuptools python3-pydantic libgconf-2-4 libappindicator1 libc++1 meson libsystemd-dev pkg-config ninja-build git libdbus-1-dev libinih-dev build-essential pkg-config python3-dev libgirepository1.0-dev meson ninja-build appstream-util python3 python3-pip libgirepository1.0-dev gir1.2-appindicator3-0.1 gnome-shell-extension-appindicator libdazzle-1.0-dev autoconf automake autopoint autotools-dev debhelper debugedit dh-autoreconf dh-strip-nondeterminism dwz fp-compiler fp-compiler-3.2.2 fp-docs-3.2.2 fp-ide-3.2.2 fp-units-base-3.2.2 fp-units-db-3.2.2 fp-units-fcl-3.2.2 fp-units-fv-3.2.2 fp-units-gfx-3.2.2 fp-units-gtk2-3.2.2 fp-units-math-3.2.2 fp-units-misc-3.2.2 fp-units-multimedia-3.2.2 fp-units-net-3.2.2 fp-units-rtl-3.2.2 fp-utils-3.2.2 fpc fpc-3.2.2 fpc-source-3.2.2 gdb gir1.2-gtk-2.0 intltool-debian lazarus-2.2 lazarus-doc-2.2 lazarus-ide lazarus-ide-2.2 lazarus-ide-gtk2-2.2 lazarus-src-2.2 lcl-2.2 lcl-gtk2-2.2 lcl-nogui-2.2 lcl-units-2.2 lcl-utils-2.2 liba52-0.7.4 liba52-0.7.4-dev libarchive-cpio-perl libarchive-zip-perl libasound2-dev libbabeltrace1 libc6-dbg libcaca-dev libdebhelper-perl libdebuginfod-common libdebuginfod1 libfile-stripnondeterminism-perl libflac-dev libfluidsynth3 libforms-dev libforms2 libgd-dev libgl1-mesa-dev libglu1-mesa-dev libgmp-dev libgmpxx4ldbl libgraphviz-dev libgtk2.0-dev libgvc6-plugins-gtk libinstpatch-1.0-2 libipt2 libltdl-dev libmad0 libmad0-dev libmail-sendmail-perl libmikmod-dev libmodplug-dev libmodplug1 libogg-dev libproxy-tools libpulse-dev libsdl-mixer1.2 libsdl-mixer1.2-dev libsdl1.2-dev libslang2-dev libsource-highlight-common libsource-highlight4v5 libsub-override-perl libsys-hostname-long-perl libtool libvlc-bin libvlc-dev libvlc5 libvlccore9 libvorbis-dev libvpx-dev libxdot4 libxpm-dev libxt-dev libxxf86dga-dev libxxf86vm-dev m4 po-debconf gcc-multilib g++-multilib mesa-common-dev libxnvctrl-dev python3-evdev python3-pydbus gettext libgtksourceview-4-dev python3-decorator python3-psutil python3-pyte libpython3-dev python3-setuptools python3-pydantic libgconf-2-4 libappindicator1 libc++1 gconf2 meson libsystemd-dev pkg-config ninja-build git libdbus-1-dev libinih-dev build-essential -y
fi

if [[ $user_choice == *"GNOME Screenshot - Gyorsbillentyus Screenshot"* ]]; then
  sudo apt install gnome-screenshot -y
fi

if [[ $user_choice == *"Steam"* ]]; then
  sudo dpkg -i steam*.deb
fi

if [[ $user_choice == *"Proton Legfrissebb Verzio Telepitese"* ]]; then
  ./update-proton-ge
fi

if [[ $user_choice == *"GameMode"* ]]; then
  sudo apt install gamemode -y
fi

if [[ $user_choice == *"PeaZip Tomorito Progi"* ]]; then
  flatpak install flathub io.github.peazip.PeaZip -y
fi

if [[ $user_choice == *"Neofetch - Terminalos System Info"* ]]; then
  sudo apt install neofetch -y
fi

if [[ $user_choice == *"WINE - Windows Appokat Futtato Kornyezet"* ]]; then
  wget -qO- https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key add -
  sudo apt-add-repository "deb http://dl.winehq.org/wine-builds/ubuntu/ $(lsb_release -cs) main" -y
  sudo nala update
  sudo nala install --install-recommends winehq-stable winetricks -y
fi

if [[ $user_choice == *"Mumble - VoiceChat"* ]]; then
  sudo apt install mumble -y
fi

if [[ $user_choice == *"Lutris - Game Launchereket es egyeb appokat futtato kornyezet"* ]]; then
  sudo add-apt-repository ppa:lutris-team/lutris -y
  sudo apt update
  sudo apt install lutris -y
fi

if [[ $user_choice == *"KVM QEMU Virtualizáció"* ]]; then
  sudo apt install qemu-system-x86 qemu-utils libvirt-daemon-system libvirt-clients bridge-utils virt-manager ovmf -y
  sudo systemctl enable libvirtd
  sudo systemctl start libvirtd
  virsh net-start default
  virsh net-autostart default
  sudo usermod -aG kvm $USER
  sudo usermod -aG input $USER
  sudo usermod -aG libvirt $USER
fi

if [[ $user_choice == *"CoreCTRL - AMD GPU Konfigolo App"* ]]; then
  sudo add-apt-repository ppa:ernstp/mesarc -y
  sudo apt update
  sudo apt install corectrl -y
  sudo echo GRUB_CMDLINE_LINUX_DEFAULT="amdgpu.ppfeaturemask=0xffffffff quiet splash" >> /etc/default/grub
  sudo grub-mkconfig
  sudo update-grub
  cp /usr/share/applications/org.corectrl.corectrl.desktop ~/.config/autostart/org.corectrl.corectrl.desktop
  sudo cp -a /media/rave/Data/PRE-STUFF/PopOS/90-corectrl.pkla /etc/polkit-1/localauthority/50-local.d/
fi

if [[ $user_choice == *"OBS"* ]]; then
  flatpak install flathub com.obsproject.Studio -y
fi

if [[ $user_choice == *"LibreOffice"* ]]; then
  sudo apt install libreoffice -y
fi

if [[ $user_choice == *"Vivaldi Bongeszo"* ]]; then
  wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | sudo gpg --dearmor -o /usr/share/keyrings/vivaldi-archive-keyring.gpg
  echo "deb [signed-by=/usr/share/keyrings/vivaldi-archive-keyring.gpg] https://repo.vivaldi.com/archive/deb/ stable main" | sudo tee /etc/apt/sources.list.d/vivaldi.list
  sudo apt update
  sudo nala install vivaldi-stable -y
fi

if [[ $user_choice == *"Brave Bongeszo"* ]]; then
  flatpak install flathub com.brave.Browser -y
fi

if [[ $user_choice == *"Librewolf Bongeszo"* ]]; then
  flatpak install flathub io.gitlab.librewolf-community -y
fi

if [[ $user_choice == *"Firefox Bongeszo"* ]]; then
  flatpak install flathub org.mozilla.firefox -y
fi

if [[ $user_choice == *"FreeTube - Adatlopas Mentes Youtube Kliens"* ]]; then
  flatpak install flathub io.freetubeapp.FreeTube -y
fi

if [[ $user_choice == *"Dosbox - Regi jatek emulator"* ]]; then
  sudo nala install libsdl-sound1.2 -y
  flatpak install flathub io.github.dosbox-staging -y
fi

if [[ $user_choice == *"Pavucontrol - Apponkenti Hangero Szabalyzas/Konfiguralas"* ]]; then
  sudo nala install pavucontrol -y
fi

if [[ $user_choice == *"KeepassXC - Localban tarolt jelszo tarolo"* ]]; then
  flatpak install flathub org.keepassxc.KeePassXC -y
fi

if [[ $user_choice == *"Cider - Apple Music Player Linuxra"* ]]; then
  flatpak install flathub sh.cider.Cider -y
fi

if [[ $user_choice == *"Darktable - Adobe Lightroom Linuxos Megfeleloje"* ]]; then
  flatpak install flathub org.darktable.Darktable -y
fi

if [[ $user_choice == *"VLC Media Player"* ]]; then
  flatpak install flathub org.videolan.VLC -y
fi

if [[ $user_choice == *"QBittorrent Kliens"* ]]; then
  flatpak install flathub org.qbittorrent.qBittorrent -y
fi

if [[ $user_choice == *"Flatseal - Flatpak app jog konfigurator"* ]]; then
  flatpak install flathub com.github.tchx84.Flatseal -y
fi

if [[ $user_choice == *"Telegram Titkositott Messenger"* ]]; then
  flatpak install flathub org.telegram.desktop -y
fi

if [[ $user_choice == *"Kdenlive - Linuxos Video Szerkeszto App"* ]]; then
  flatpak install flathub org.kde.kdenlive -y
fi

if [[ $user_choice == *"Gnome Extension Manager - Gnome bovitmenykezelo"* ]]; then
  flatpak install flathub com.mattjakeman.ExtensionManager -y
fi

if [[ $user_choice == *"PhotoGimp - Adobe Photoshop Linuxos Megfeleloje"* ]]; then
  flatpak install flathub org.gimp.GIMP -y
sudo cp -a PhotoGIMP/. ~/
fi

if [[ $user_choice == *"Discord"* ]]; then
  flatpak install flathub com.discordapp.Discord -y
fi

if [[ $user_choice == "Goverlay - MSI Afterburner Linuxos Megfeleloje FPS Kijelzes" ]]; then
sudo apt install goverlay -y
fi

if [[ $user_choice == *"Windows 11 Installer - Csak Profiknak"* ]]; then
  zenity --warning --text='!! MAJOM VAGY !!' --width='300' --height='100'
fi

# Script END
zenity --question --title='Restart required!' --text='Restart in 5 seconds?' --width='300' --height='100'
if [ $? = 0 ]; then

(
echo "0" ; 
echo "# Restart in 5s" ; sleep 1
echo "20" ; 
echo "# Restart in 4s" ; sleep 1
echo "40" ; 
echo "# Restart in 3s" ; sleep 1
echo "60" ; 
echo "# Restart in 2s" ; sleep 1
echo "80" ; 
echo "# Restart in 1s" ; sleep 1 

) |
zenity --progress \
 --title="All apps are Installed!" --width='300' \
 --text="Restart" \
 --auto-close \
 --no-cancel
 sudo reboot;
  
fi

if [ $? = 1 ]; then

	exit 0;
fi

