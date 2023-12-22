https://linuxconfig.org/ubuntu-20-04-remote-desktop-access-from-windows-10
systemctl --user status gnome-remote-desktop.service
systemctl --user start gnome-remote-desktop.service
systemctl --user restart gnome-remote-desktop

https://gitlab.gnome.org/GNOME/gnome-control-center/-/issues/1775
https://bugs.launchpad.net/ubuntu/+source/gnome-control-center/+bug/1969619

systemctl suspend -i
sudo flatpak override com.wps.Office --filesystem=/home/andry/Downloads

sudo apt update 

# change mac address
sudo apt install macchanger
sudo macchanger -s enp0s31f6
sudo macchanger -m 6c:0b:84:22:be:c4 enp0s31f6

sudo EDITOR=nano crontab -e
@reboot macchanger -m 6c:0b:84:22:be:c4 enp0s31f6
@reboot tailscale up

sudo apt upgrade

# Check UUID (blkid)
lsblk

ll /dev/disk/by-uuid

nvim /etc/fstab

sudo echo "UUID=8f4825e2-0016-43c2-994a-bb2830ddaea9 /home/mc/marc/               ext4    errors=remount-ro 0       1" >> /etc/fstab

sudo mount -a


# Install app
sudo apt install -y git btop curl npm zsh ranger python3 python3-pip trash-cli thunar fonts-powerline neofetch xclip ssh fzf mpv qutebrowser tmux dconf-editor kazam gnome-tweaks

systemctl status ssh
systemctl start ssh
systemctl enable ssh

** Rubah bin bash menjadi zsh (harus logout) **
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


## Alacritty
sudo add-apt-repository ppa:aslatter/ppa -y
sudo apt install alacritty

## Install python,pip & selenium

sudo apt install -y python3 python3-pip
pip install selenium
pip install pyperclip
pip install castero

https://github.com/mhinz/neovim-remote
pip3 install neovim-remote
pip3 install neovim-remote --break-system-packages

> pyperclip for custom script insys & sfsupport

sudo apt-get install ripgrep fd-find gcc lua5.4 npm 
sudo apt install -y npm 
npm install tree-sitter-cli

## Install lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin

## Install veracrypt
sudo add-apt-repository ppa:unit193/encryption -y
sudo apt  install veracrypt

# appimage
ksnip
chmod +x ./*.AppImage

# Install neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage

## AppImageLauncher
sudo apt install software-properties-common
sudo add-apt-repository ppa:appimagelauncher-team/stable
sudo apt update
sudo apt install appimagelauncher

Run App : appimagelauncher

## Add flatpak to gnome
sudo apt install -y flatpak gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

**Restart computer before proceeding**

flatpak install -y flathub io.github.shiftey.Desktop
flatpak install -y flathub com.skype.Client
flatpak install -y flathub md.obsidian.Obsidian
flatpak install -y flathub net.christianbeier.Gromit-MPX
flatpak install -y flathub com.wps.Office
flatpak install -y flathub com.obsproject.Studio
flatpak install -y flathub org.libreoffice.LibreOffice
flatpak install -y flathub org.mozilla.Thunderbird
flatpak install -y flathub com.anydesk.Anydesk
flatpak install -y flathub org.keepassxc.KeePassXC
flatpak install -y flathub org.remmina.Remmina
flatpak install -y flathub com.github.tchx84.Flatseal

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
gsettings set org.gnome.desktop.input-sources xkb-options "['caps:escape_shifted_capslock']"
gsettings set org.gnome.desktop.input-sources xkb-options "['caps:swapescape']"
setxkbmap -option caps:swapescape

```
Other options are possible:
  caps:none to deactivate
  caps:escape to make it an additional escape
  caps:super to make it an additional super (windows) key.

```

gsettings set org.gnome.desktop.privacy remember-recent-files false
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'focus-minimize-or-previews'

# Backup settings

dconf dump /org/gnome/ > gnome-backup
dconf dump / > full-gnome-backup

Load settings:
dconf load /org/gnome/ < gnome-backup

# Reference

https://archlinux.org/groups/x86_64/gnome/  
https://github.com/bk138/gromit-mpx - Annotation tool
https://wiki.archlinux.org/title/NetworkManager - Install SIM Driver, mobile broadband support
https://extensions.gnome.org/extension/1460/vitals/
https://itsfoss.com/flatpak-tips-tweaks/
https://www.makeuseof.com/disable-automatic-updates-in-ubuntu/
https://www.anyviewer.com/how-to/how-to-get-out-of-remote-desktop-full-screen-0427.html

cat /etc/update-manager/release-upgrades - Awal


Remote clients:
remmina, realvnc viewer


# symlink
```
rm -Rf ~/.config/ranger
ln -ivs ~/marc/GitHub/ubuntu/config/ranger ~/.config/
rm -Rf ~/.config/nvim
ln -ivs ~/marc/GitHub/ubuntu/config/nvim ~/.config/
ln -ivs ~/marc/GitHub/ubuntu/config/nvim_old ~/.config/
ln -ivs ~/marc/GitHub/ubuntu/config/nvim_lazy ~/.config/
ln -ivs ~/marc/GitHub/ubuntu/config/nvim_chris ~/.config/

ln -ivs ~/marc/GitHub/ubuntu/config/lf ~/.config/
ln -ivs ~/marc/GitHub/ubuntu/config/sxiv ~/.config/
ln -ivs ~/marc/GitHub/ubuntu/config/castero ~/.config/
ln -ivs ~/marc/GitHub/ubuntu/local/bin/custom ~/.local/bin
ln -ivs ~/marc/GitHub/ubuntu/config/lf-ueberzugrc/lf-ueberzug ~/marc/GitHub/ubuntu/local/bin/custom/
ln -ivs ~/go/bin/lf ~/marc/GitHub/ubuntu/local/bin/custom/
ln -ivs ~/marc/github/ubuntu/config/moc/config ~/.moc/
ln -ivs ~/marc/github/ubuntu/config/moc/my_keymap ~/.moc/
ln -ivs ~/marc/github/ubuntu/bashrc ~/.bashrc
cp -ivs ~/github/dotfile/.oh-my-zsh/custom/autocomplete.zsh ~/.oh-my-zsh/custom/autocomplete.zsh
cp -ivs ~/github/dotfile/.oh-my-zsh/custom/shortcuts.zsh ~/.oh-my-zsh/custom/shortcuts.zsh

ln -ivs ~/marc/GitHub/ubuntu/zshrc ~/.zshrc
ln -ivs ~/marc/appimagefile/ksnip ~/.local/bin/ksnip
ln -ivs ~/marc/appimagefile/nvim ~/.local/bin/nvim

mkdir -p ~/.config/tmux-plugins
ln -ivs ~/marc/GitHub/ubuntu/config/tmux ~/.config/
rm -Rf ~/marc/GitHub/ubuntu/config/tmux/plugins/
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux-plugins/tpm
ctrl + space + capital I = install plugin

ln -ivs ~/Dropbox/Dataon/.thunderbird ~/
ln -ivs ~/marc/appimagefile/yuzu_ccf737910e9e7575365495cddfbb24f8 ~/Desktop

-- Remove recent in nautilus --
ln -ivs ~/marc/GitHub/ubuntu/config/nautilus ~/.config/
ln -ivs ~/marc/GitHub/ubuntu/pam_environment ~/.pam_environment
ln -ivs ~/marc/GitHub/ubuntu/pam_environment ~/.pam_environment

-- Remove starred icon in nautilus --
ln -ivs ~/marc/GitHub/ubuntu/config/user-dirs.dirs ~/.config/
sudo ln -ivs ~/marc/GitHub/ubuntu/etc/xdg/user-dirs.defaults /etc/xdg/user-dirs.defaults

-- Change window border color --
ln -ivs ~/marc/GitHub/ubuntu/config/gtk-3.0/gtk.css ~/.config/gtk-3.0/
ln -ivs ~/marc/GitHub/ubuntu/config/gtk-4.0/gtk.css ~/.config/gtk-4.0/


```


# Setup Qutebrowser

set url.searchengines '{"DEFAULT": "https://duckduckgo.com/?q={}", "aw": "https://wiki.archlinux.org/?search={}", "cf": "https://cfdocs.org/{}", "mdb": "https://mariadb.com/kb/en/+search/?q={}", "sf": "https://sfsupport.dataon.com/app/ticket/forms/{}", "yts": "https://www.youtube.com/results?search_query={}", "yu": "https://yufid.com/result_yufid.html?search={}"}'

set auto_save.session true
bind gh tab-focus last
https://github.com/sarfraznawaz2005/quran-cli


# connect 
sudo tailscale up
sudo tailscale down

# fonts

google fonts - Arabic
google fonts - Single Day
google fonts - Korea
google fonts - Chinese
nerdfonts - JetBrains Mono Nerd Font


# install vncserver
https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-vnc-on-ubuntu-22-04

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

# Time shift
https://dev.to/rahedmir/how-to-use-timeshift-from-command-line-in-linux-1l9b

sudo timeshift --create --comments "A new backup" --tags D

sudo timeshift --restore

# Download .deb installer 
sudo dpkg -i ~/Dropbox/Archive/installer/thorium-browser_117.0.5938.157_amd64.deb

realvnc viewer
lsd
dropbox > python3-gpg libpango1.0-0
thorium
vscode
virtualbox
>sudo apt install libqt5help5
>sudo apt --fix-broken install

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

# Gnome extension
https://extensions.gnome.org/extension/3193/blur-my-shell/
https://extensions.gnome.org/extension/779/clipboard-indicator/
https://extensions.gnome.org/extension/1460/vitals/
https://extensions.gnome.org/extension/5237/rounded-window-corners/
https://extensions.gnome.org/extension/4338/allow-locked-remote-desktop/
https://extensions.gnome.org/extension/1160/dash-to-panel/

# Remove recent nautilus
https://askubuntu.com/questions/1194319/can-the-starred-folder-in-the-left-pane-of-files-nautilus-be-removed

# Remove starred nautilus
https://askubuntu.com/questions/762591/how-to-remove-unwanted-default-bookmarks-in-nautilus

# Change window color border
https://github.com/lossurdo/yaru-dark-border
