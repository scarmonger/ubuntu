systemctl suspend -i
sudo flatpak override com.wps.Office --filesystem=/home/andry/Downloads

sudo apt update && sudo apt upgrade

# Install app
sudo apt install -y git btop curl npm zsh ranger python3 python3-pip trash-cli 

sudo apt-get install fonts-powerline


** Rubah bin bash menjadi zsh **
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

# Install neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage

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

## Download .deb installer 
sudo dpkg -i ~/Dropbox/Archive/installer/thorium-browser_117.0.5938.157_amd64.deb

lsd
dropbox
thorium
vscode
virtualbox
>sudo apt install libqt5help5
>sudo apt --fix-broken install
## appimage
ksnip
chmod +x ./*.AppImage

AppImageLauncher
sudo apt install software-properties-common
sudo add-apt-repository ppa:appimagelauncher-team/stable
sudo apt update
sudo apt install appimagelauncher

## Add flatpak to gnome
sudo apt install -y flatpak gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install -y flathub io.github.shiftey.Desktop
flatpak install -y flathub com.skype.Client
flatpak install -y flathub org.ksnip.ksnip
flatpak install -y flathub md.obsidian.Obsidian
flatpak install -y flathub net.christianbeier.Gromit-MPX
flatpak install -y flathub com.wps.Office
flatpak install -y flathub com.obsproject.Studio
flatpak install -y flathub org.libreoffice.LibreOffice
flatpak install -y flathub org.mozilla.Thunderbird
flatpak install -y flathub com.anydesk.Anydesk
flatpak install -y flathub org.keepassxc.KeePassXC

# Snapd
sudo snap install projectlibre

# Check UUID (blkid)
lsblk

ll /dev/disk/by-uuid

nvim /etc/fstab

UUID=8f4825e2-0016-43c2-994a-bb2830ddaea9 /home/mc/marc/               ext4    errors=remount-ro 0       1

sudo mount -a

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

Remote clients:
remmina, realvnc viewer

Remote Server:
TigerVNC
https://wiki.archlinux.org/title/TigerVNC

# symlink
```
rm -Rf ~/.config/ranger
ln -ivs ~/Documents/GitHub/ubuntu/config/ranger ~/.config/
rm -Rf ~/.config/nvim
ln -ivs ~/Documents/GitHub/ubuntu/config/nvim ~/.config/
ln -ivs ~/Documents/GitHub/ubuntu/config/nvim_old ~/.config/
ln -ivs ~/Documents/GitHub/ubuntu/config/lf ~/.config/
ln -ivs ~/Documents/GitHub/ubuntu/config/sxiv ~/.config/
ln -ivs ~/Documents/GitHub/ubuntu/config/castero ~/.config/
ln -ivs ~/marc/github/dotfiles/local/bin/custom ~/.local/bin
ln -ivs ~/marc/github/dotfiles/config/lf-ueberzugrc/lf-ueberzug ~/marc/github/dotfiles/local/bin/custom/
ln -ivs ~/marc/github/dotfiles/config/moc/config ~/.moc/
ln -ivs ~/marc/github/dotfiles/config/moc/my_keymap ~/.moc/
ln -s ~/marc/github/dotfiles/bashrc ~/.bashrc
cp -iv ~/github/dotfile/.oh-my-zsh/custom/autocomplete.zsh ~/.oh-my-zsh/custom/autocomplete.zsh
cp -iv ~/github/dotfile/.oh-my-zsh/custom/shortcuts.zsh ~/.oh-my-zsh/custom/shortcuts.zsh

ln -s ~/Documents/GitHub/ubuntu/zshrc ~/.zshrc

mkdir -p ~/.config/tmux-plugins
ln -ivs ~/marc/github/dotfiles/config/tmux ~/.config/
rm -Rf ~/marc/github/dotfiles/config/tmux/plugins/
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux-plugins/tpm
ctrl + space + capital I = install plugin

ln -ivs ~/Dropbox/Dataon/.thunderbird ~/
```


# Setup Qutebrowser

set url.searchengines '{"DEFAULT": "https://duckduckgo.com/?q={}", "aw": "https://wiki.archlinux.org/?search={}", "cf": "https://cfdocs.org/{}", "mdb": "https://mariadb.com/kb/en/+search/?q={}", "sf": "https://sfsupport.dataon.com/app/ticket/forms/{}", "yts": "https://www.youtube.com/results?search_query={}", "yu": "https://yufid.com/result_yufid.html?search={}"}'

set auto_save.session true
bind gh tab-focus last
https://github.com/sarfraznawaz2005/quran-cli
