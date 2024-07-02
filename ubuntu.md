#!/bin/zsh
# Common syntax

## Check ubuntu name release
lsb_release -a

## Check keymap / button

xev

Check mouse button:
xev | grep -i button

## Setting hostname Linux
hostnamectl set-hostname SGSGHCMIHRISOJA

## Register Ubuntu Pro
sudo pro attach C1sTzqTWhHUw5BkW9YjYFDu9HJzNU

# New Installation

sudo apt update
sudo apt upgrade
sudo apt install git
mkdir -p ~/marc/GitHub 
cd ~/marc/GitHub
git clone https://www.github.com/scarmonger/ubuntu.git
## change mac address

sudo apt install macchanger
sudo macchanger -s enp0s31f6
sudo macchanger -m 6c:0b:84:22:be:c4 enp0s31f6

sudo EDITOR=nano crontab -e
@reboot macchanger -m 6c:0b:84:22:be:c4 enp0s31f6
@reboot tailscale up

sudo apt upgrade

> [!NOTE] Notes
> sudo tailscale up
sudo tailscale down


## Check UUID (blkid)
sudo fdisk /dev/nvm0n1

> n (enter until finish)
> w

sudo mkfs.ext4 /dev/nvme0n1p3

mkdir ~/marc

lsblk

ll /dev/disk/by-uuid

sudo nano /etc/fstab

sudo cp /etc/fstab /etc/fstab_bak

pc:
echo "UUID=8f4825e2-0016-43c2-994a-bb2830ddaea9 /home/mc/marc/ ext4 errors=remount-ro 0 1" | sudo tee -a /etc/fstab

tp13:
echo "UUID=3cb910c9-2e1e-4910-a6a9-c114df09d3cd /home/mc/marc/ ext4 errors=remount-ro 0 1" | sudo tee -a /etc/fstab

dell:
echo "UUID=6b617826-89bc-444c-9b72-9bcf0c44eb73 /home/mc/marc/ ext4 errors=remount-ro 0 1" | sudo tee -a /etc/fstab

sudo mount -a

sudo dpkg -i google-chrome
sudo snap remove --purge firefox

## Install app

sudo apt install -y git btop curl npm zsh ranger python3 python3-pip trash-cli thunar fonts-powerline neofetch xclip ssh fzf mpv tmux dconf-editor kazam gnome-tweaks chrome-gnome-shell filezilla vlc ncdu htop gimp mycli xdotool ripgrep fd-find gcc lua5.4 zathura tldr

systemctl status ssh
systemctl start ssh
systemctl enable ssh

## Install oh-my-zsh

**Rubah bin bash menjadi zsh (harus logout)**
chsh -s /usr/bin/zsh

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSHCUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

---

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.config/powerlevel10k
echo 'source ~/.config/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

1.) Download a Nerd Font

2.) Unzip and copy to ~/.fonts

3.) Run the command `fc-cache -fv` to manually rebuild the font cache

check fonts with `fc-list`

https://github.com/wting/autojump/blob/master/docs/install.md
> git clone https://github.com/wting/autojump.git
> cd autojump
> ./install.py

```

https://christitus.com/zsh/
https://zsh.sourceforge.io/Guide/zshguide.html
https://wiki.archlinux.org/title/zsh
https://github.com/ChrisTitusTech/zsh/blob/master/aliasrc
https://github.com/sdaschner/dotfiles/blob/master/.aliases
https://github.com/ohmyzsh/ohmyzsh
https://www.thorsten-hans.com/5-types-of-zsh-aliases
https://gist.github.com/dogrocker/1efb8fd9427779c827058f873b94df95

## symlink

```
rm -Rf ~/.config/ranger
ln -ivs ~/marc/GitHub/ubuntu/config/ranger ~/.config/
rm -Rf ~/.config/nvim
ln -ivs ~/marc/GitHub/ubuntu/config/nvim ~/.config/
ln -ivs ~/marc/GitHub/ubuntu/config/nvim_old ~/.config/
ln -ivs ~/marc/GitHub/ubuntu/config/nvim_lazy ~/.config/
ln -ivs ~/marc/GitHub/ubuntu/config/nvim_newlazy ~/.config/
ln -ivs ~/marc/GitHub/ubuntu/config/nvim_chris ~/.config/
ln -ivs ~/marc/virtualbox "/home/mc/VirtualBox VMs"

mkdir ~/.config/script
mkdir ~/.local/bin

ln -ivs ~/marc/GitHub/ubuntu/config/sxiv ~/.config/
ln -ivs ~/marc/GitHub/ubuntu/config/castero ~/.config/
ln -ivs ~/marc/GitHub/ubuntu/local/bin/custom ~/.local/bin

ln -ivs ~/marc/GitHub/ubuntu/bashrc ~/.bashrc
cp -ivs ~/marc/GitHub/dotfile/.oh-my-zsh/custom/autocomplete.zsh ~/.oh-my-zsh/custom/autocomplete.zsh
cp -ivs ~/marc/GitHub/dotfile/.oh-my-zsh/custom/shortcuts.zsh ~/.oh-my-zsh/custom/shortcuts.zsh

ln -ivs ~/marc/GitHub/ubuntu/zshrc ~/.zshrc

mkdir -p ~/.config/tmux-plugins
ln -ivs ~/marc/GitHub/ubuntu/config/tmux ~/.config/
rm -Rf ~/marc/GitHub/ubuntu/config/tmux/plugins/
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux-plugins/tpm
ctrl + B + capital I = install plugin
ctrl + space + capital I = install plugin

# Remove recent in nautilus --
rm -Rf ~/.config/nautilus
ln -ivs ~/marc/GitHub/ubuntu/config/nautilus ~/.config/
ln -ivs ~/marc/GitHub/ubuntu/pam_environment ~/.pam_environment

# Remove starred icon in nautilus --
ln -ivs ~/marc/GitHub/ubuntu/config/user-dirs.dirs ~/.config/
sudo ln -ivs ~/marc/GitHub/ubuntu/etc/xdg/user-dirs.defaults /etc/xdg/user-dirs.defaults

-- Change window border color --
ln -ivs ~/marc/GitHub/ubuntu/config/gtk-3.0/gtk.css ~/.config/gtk-3.0/
mkdir ~/.config/gtk-4.0
ln -ivs ~/marc/GitHub/ubuntu/config/gtk-4.0/gtk.css ~/.config/gtk-4.0/

ln -ivs /home/mc/marc/GitHub/ubuntu/local/share/nvim/lazy/tokyonight.nvim/lua/tokyonight/colors.lua /home/mc/.local/share/nvim/lazy/tokyonight.nvim/lua/tokyonight
ln -ivs /home/mc/marc/GitHub/ubuntu/config/mpv /home/mc/.config
ln -ivs /home/mc/marc/GitHub/ubuntu/myclirc ~/.myclirc

ln -ivs /home/mc/marc/custom/source/commandbox/box ~/.local/bin/
ln -ivs /home/mc/marc/custom/source/commandbox/jre ~/.local/bin/

cp /home/mc/marc/GitHub/ubuntu/.wezterm.lua ~/


```

## appimage
ksnip
obsidian
nvim

`chmod +x *.AppImage`
### AppImageLauncher

sudo apt install software-properties-common
sudo add-apt-repository ppa:appimagelauncher-team/stable
sudo apt update
sudo apt install appimagelauncher

Run App : appimagelauncher

hyperkeys
https://hyperkeys.xureilab.com/

https://publicpost.medium.com/how-to-install-appimage-and-create-searchable-shortcut-on-ubuntu-linux-6542997ef2bd

## Create application shortcut
[Desktop Entry]
Type=Application
Name=Appname
GenericName=Video Editor
Comment=Appname is a free, open-source, and cross-platform video editor
Categories=VideoEditor
Exec=/path/to/Appname.AppImage --no-sandbox
Icon=/path/to/icon.png

update-desktop-database ~/.local/share/applications/

## Install neovim

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mv ./nvim.appimage ~/marc/appimagefile/nvim
./nvim.appimage

ln -ivs ~/marc/appimagefile/ksnip ~/.local/bin/
ln -ivs ~/marc/appimagefile/nvim ~/.local/bin/
ln -ivs ~/marc/appimagefile/obsidian ~/.local/bin/
ln -ivs ~/marc/appimagefile/loffice ~/.local/bin

### Install lazygit

LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin

### Add typescript/react autoimport to nvim config

:Mason
install eslint, typescript-language-server

# Backup settings

dconf dump /org/gnome/ > gnome-backup
dconf dump / > full-gnome-backup

Load settings:
dconf load /org/gnome/ < gnome-backup
dconf load /org/gnome/ < ~/marc/GitHub/ubuntu/gnome-backup

# Gnome extension

https://extensions.gnome.org/extension/3193/blur-my-shell/
https://extensions.gnome.org/extension/779/clipboard-indicator/
https://extensions.gnome.org/extension/1460/vitals/
https://extensions.gnome.org/extension/5237/rounded-window-corners/
https://extensions.gnome.org/extension/4338/allow-locked-remote-desktop/
https://extensions.gnome.org/extension/1160/dash-to-panel/
https://extensions.gnome.org/extension/887/workspace-isolated-dash/

# Download .deb installer

sudo dpkg -i *.deb

1. code_1.84.2-1699528352_amd64.deb
2. wps-office_11.1.0.11711.XA_amd64.deb
3. dbeaver
4. virtualbox
## Dropbox

sudo apt install python3-gpg libpango1.0-0
sudo dpkg -i ~/marc/debinstaller/dropbox_2020.03.04_amd64.deb
sudo apt --fix-broken install

## Virtualbox

sudo dpkg --purge virtualbox-dkms
sudo dpkg --purge virtualbox-qt
sudo dpkg --purge virtualbox
sudo dpkg --purge virtualbox-7.0

sudo usermod -a -G vboxusers mc

sudo apt install libqt5help5 libqt5x11extras5
sudo dpkg -i ~/marc/debinstaller/virtualbox-7.0_7.0.12-159484\~Ubuntu\~jammy_amd64.deb
sudo apt --fix-broken install

Kernel driver not installed (rc=-1908)
sudo apt install gcc-12

**Install virtualbox alternatif 2 (DELL Notebook)**
sudo apt install --reinstall virtualbox-dkms && sudo apt install libelf-dev

### Error Installing Windows - Windows cannot read the ProductKey from the unattend answer file

Screenshot of the error: https://imgur.com/cW1GUkh

Found the solution in this video on YT: https://www.youtube.com/watch?v=Y8rzZHscljQ&t=183s

Just so the solution is: 
1. Power of the VM machine
2. Go to the settings of your VM - System - Boot Order - Uncheck Floppy
3. Press OK
4. Go to the folder where your VM is stored (default is Home - VirtualBox VMs)
5. Delete all 3 files that start with "Unattended"
6. Power on the VM machine
7. Click OK on the warning
8. Press any key to continue

### Setup Perfect windows
All done, now it should work as normal.

https://www.youtube.com/watch?v=6UQZ5oQg8XA

Install using English (world)
Setup for work or school
Sign-in options > Domain join
Blank password

`irm christitus.com/win | iex`
Klik Tab Tweaks > Choose Desktop, klik ultimate performance, run tweaks

### Shrink / Decrease virtualbox disk size
https://www.virtualbox.org/manual/ch08.html#vboxmanage-modifymedium

Run in windows: 
sdelete64.exe -z

Run in linux
VBoxManage modifymedium disk /home/mc/marc/virtualbox/win11/win11.vdi --compact

# Alacritty

sudo add-apt-repository ppa:aslatter/ppa -y
sudo apt install alacritty

# Install python,pip & selenium

sudo apt install -y python3 python3-pip
pip install selenium
pip install mycli
pip install pyperclip
pip install castero
pip3 install neovim-remote

## Neovim Remote
https://github.com/mhinz/neovim-remote
pip3 install neovim-remote --break-system-packages

> pyperclip for custom script insys & sfsupport

npm install tree-sitter-cli

# Install veracrypt

sudo add-apt-repository ppa:unit193/encryption -y
sudo apt install veracrypt



# Add flatpak to gnome

sudo apt install -y flatpak gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

**Restart computer before proceeding**

flatpak install flathub org.wezfurlong.wezterm
flatpak install -y flathub io.github.shiftey.Desktop
flatpak install -y flathub com.skype.Client
flatpak install -y flathub md.obsidian.Obsidian
~~flatpak install -y flathub com.wps.Office~~
flatpak install -y flathub com.obsproject.Studio
flatpak install -y flathub org.libreoffice.LibreOffice
flatpak install -y flathub com.anydesk.Anydesk
flatpak install -y flathub org.keepassxc.KeePassXC
flatpak install -y flathub org.remmina.Remmina
flatpak install -y flathub com.github.tchx84.Flatseal
flatpak install -y flathub net.christianbeier.Gromit-MPX
flatpak install -y flathub org.mozilla.Thunderbird
flatpak install flathub org.chromium.Chromium

flatseal > allow home folder
thunderbird > set profile from Help > Troubleshooting information

# Snapd
sudo snap install projectlibre

# github-cli authentication

https://cli.github.com/manual/

type -p curl >/dev/null || (sudo apt update && sudo apt install curl -y)
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y
sudo apt update
sudo apt install gh

git config --global user.email "psikomania@yahoo.com"
git config --global user.name "scarmonger"

1. jalankan di terminal `gh auth login`
2. pilih github.com
3. pilih HTTPS
4. pilih paste an authentication token (lihat cara ambil token dibawah ini)

Untuk mengambil token bisa login ke github lagi ke

1. developer setting
2. personal access tokens - Tokens(classic) => Generate access tokens (Classic)
3. tulis nama pada note
4. no_expiration
5. minimal centang repo, workflow, admin:org (inclusive semua)

Setelah dapat token, coba git push, login dengan user dan password di isi dengan token yang sudah tergenerate

sempat masih belum coba gh auth login lagi, setelah berhasil coba jalanin syntax dibawah ini
yang didapat setelah berhasil login di gh auth login:
`gh config set -h github.com git_protocol https`

# Mount partition to marc directory

mkdir marc
chown mc:mc marc

sudo pacman -S baobab epiphany evince gdm gnome-backgrounds \
gnome-calculator gnome-calendar gnome-characters gnome-clocks \
gnome-color-manager gnome-connections gnome-console gnome-control-center \
gnome-disk-utility gnome-keyring gnome-logs gnome-maps gnome-menus \
gnome-remote-desktop gnome-session gnome-settings-daemon gnome-shell \
gnome-shell-extensions gnome-system-monitor gnome-text-editor gnome-tour \
gnome-user-docs gnome-user-share grilo-plugins gvfs-google gvfs-nfs gvfs-mtp \
gvfs-smb loupe nautilus simple-scan snapshot sushi xdg-desktop-portal-gnome \
xdg-user-dirs-gtk yelp gnome-tweaks

# capslock escape
```
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Super>Page_Up', '<Super><Alt>Left']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Super>Page_Down', '<Super><Alt>Right']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "[]"
gsettings set org.gnome.desktop.input-sources xkb-options "['caps:escape_shifted_capslock']"
gsettings set org.gnome.desktop.input-sources xkb-options "['caps:swapescape']"
setxkbmap -option caps:swapescape
```

Other options are possible:
  caps:none to deactivate
  caps:escape to make it an additional escape
  caps:super to make it an additional super (windows) key.

gsettings set org.gnome.desktop.privacy remember-recent-files false
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'focus-minimize-or-previews'

# Reference

https://archlinux.org/groups/x86_64/gnome/  
https://github.com/bk138/gromit-mpx - Annotation tool
https://wiki.archlinux.org/title/NetworkManager - Install SIM Driver, mobile broadband support
https://extensions.gnome.org/extension/1460/vitals/
https://itsfoss.com/flatpak-tips-tweaks/
https://www.makeuseof.com/disable-automatic-updates-in-ubuntu/
https://www.anyviewer.com/how-to/how-to-get-out-of-remote-desktop-full-screen-0427.html

# Setup Qutebrowser

set url.searchengines '{"DEFAULT": "https://duckduckgo.com/?q={}", "aw": "https://wiki.archlinux.org/?search={}", "cf": "https://cfdocs.org/{}", "mdb": "https://mariadb.com/kb/en/+search/?q={}", "sf": "https://sfsupport.dataon.com/app/ticket/forms/{}", "yts": "https://www.youtube.com/results?search_query={}", "yu": "https://yufid.com/result_yufid.html?search={}"}'

set auto_save.session true
bind gh tab-focus last
https://github.com/sarfraznawaz2005/quran-cli

# fonts

google fonts - Arabic
google fonts - Single Day
google fonts - Korea
google fonts - Chinese
nerdfonts - JetBrains Mono Nerd Font

# Next

portainer docker

# select editor

sudo select-editor
select-editor
sudo update-alternatives --config editor

# Thorium keepassxc

The problem is that Thorium and Chromium are "the same browser" so keepass is detecting the NativeMessagingHosts for chromium, so in Browser integration -> Advanced we need to override the location of the proxy.

Enable "use custom proxy", select browser type: "Chrome", and for the location, put this
/Users/sergio/Library/Application Support/Thorium/NativeMessagingHosts

instead of
/Users/sergio/Library/Application Support/Chromium/NativeMessagingHosts

And that's it!

/home/mc/.config/thorium/NativeMessagingHosts

# Firefox

https://support.mozilla.org/en-US/kb/install-firefox-linux

System Firefox installation (for advanced users)
To install Firefox with this method, you must be able to log in as root or execute sudo commands.

This installation will have priority over the Firefox version installed through your package manager. To run the version installed with your package manager, you will need to execute the binary from a terminal. To do so in most distributions, open a terminal and type:
/usr/bin/firefox

1. Go to the Firefox download page and click the Download Now button.
2. Open a terminal and go to the folder where your download has been saved. For example:
   cd ~/Downloads
   Extract the contents of the downloaded file by typing:
   `tar xjf firefox-*.tar.bz2`

The following commands must be executed as root, or preceded by sudo.

3. Move the uncompressed Firefox folder to /opt:
   `sudo mv firefox /opt`

4. Create a symlink to the Firefox executable:
   sudo ln -s /opt/firefox/firefox /usr/local/bin/firefox

5. Download a copy of the desktop file:
   `sudo wget https://raw.githubusercontent.com/mozilla/sumo-kb/main/install-firefox-linux/firefox.desktop -P /usr/local/share/applications`

Alternatively, if wget is not installed on your computer, go to the URL mentioned above, right-click on the page to open the contextual menu and select Save Page As. After you downloaded the file, move it to /usr/local/share/applications.

To verify that the installation was successful, you can open the Troubleshooting Information page. In the Application Basics section, the value of Application Binary should be /opt/firefox/firefox-bin.

## Setup vertical bar
https://www.pcworld.com/article/823939/vertical-tabs-in-firefox-yes-its-really-possible.html

## markdown setting firefox

https://francopasut.netlify.app/post/markdown_firefox/

create file mime.types, and insert the following line:
type=text/plain exts=md,mkd,mkdn,mdwn,mdown,markdown, desc="Markdown document"

open firefox, `about:config`, search for mime, change "helpers.private_mime_types_file" value with the file path of mime.types which newly created

# Nautilus 
## Remove starred nautilus

https://askubuntu.com/questions/1194319/can-the-starred-folder-in-the-left-pane-of-files-nautilus-be-removed

## Remove recent nautilus

https://askubuntu.com/questions/762591/how-to-remove-unwanted-default-bookmarks-in-nautilus

## Change window color border

https://github.com/lossurdo/yaru-dark-border

# xfreerdp - remote desktop cli

sudo apt install freerdp2-x11
```
xfreerdp +clipboard +fonts /sound /mic /smart-sizing /multimon /network:auto /cert-ignore /u:<username> /d:WORKGROUP /v:192.168.x.x
```
# yt-dlp

sudo curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
sudo chmod a+rx /usr/local/bin/yt-dlp # Make executable

# Change root password

sudo passwd root

# decoder

sudo apt install ubuntu-restricted-extras

# Prettier

https://prettier.io/docs/en/install

# Emoticon shortcut

ctrl+shift+u

# VPN

https://www.cactusvpn.com/tutorials/how-to-set-up-l2tpipsec-vpn-on-ubuntu/
sudo add-apt-repository ppa:nm-l2tp/network-manager-l2tp
sudo apt-get update
sudo apt-get install network-manager-l2tp-gnome

# Ranger compress
mkdir -p ~/.config/ranger/plugins
cd ~/.config/ranger/plugins
git clone https://github.com/maximtrp/ranger-archives.git

# Install NVM (Node Version Manager)

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
/home/mc/Dropbox/notes/tech/nvm.md

/home/mc/Dropbox/notes/tech/linux/gpg.md

# Remove ctrl semicolon and ctrl period shortcut for emoji 
https://unix.stackexchange.com/questions/692237/ctrl-displays-e-character-and-captures-the-keyboard-shortcut

`gsettings set org.freedesktop.ibus.panel.emoji hotkey "[]"`

Or run in terminal

`ibus-setup`

# Keepass2
https://github.com/pfn/keepasshttp?tab=readme-ov-file
``` sh
sudo apt-get install mono-complete

sudo apt-add-repository ppa:jtaylor/keepass
sudo apt-get update
sudo apt-get install keepass2


sudo chmod 644 ~/Downloads/KeePassHttp.plgx
sudo cp ~/Downloads/KeePassHttp.plgx /usr/lib/keepass2
```

# Edge
```sh
sudo apt install ./microsoft-edge-stable_126.0.2592.68-1_amd64.deb
```
