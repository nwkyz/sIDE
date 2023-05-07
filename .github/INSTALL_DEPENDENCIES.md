# Dependencies Installing Guide
sIDE can work on Windows/Linux/macOS and just follow the following steps to install the dependencies of sIDE.

Don't worry, this will be easy.

# For Linux Users
#### 1. We need to install `neovim`, just choose the command below to execute depends on your distro (distribution):
```
# For Ubuntu/Debian based distros (e.g. ZorinOS, Deepin, Pop!_OS, MXLinux, VanillaOS etc.)
sudo apt update && sudo apt install neovim python3-neovim

# For Arch-like distros (e.g. Manjaro, EndeavourOS, Archcraft, KaOS etc.)
sudo pacman -Syu && sudo pacman -S neovim

# For RedHat based distros (e.g. CentOS, OpenEuler, PCLinuxOS etc.)
yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm && yum install -y neovim python3-neovim

# For Fedora based distros (e.g. Fedora 25+, Nobara, Ultramarine etc.)
sudo dnf install -y neovim python3-neovim

# For OpenSUSE based distros (e.g. GeckoLinux, LinuxKamarada, etc.)
sudo zypper in neovim python-neovim python3-neovim

# For Alpine based distros
sudo apk add neovim

# For Clear Linux OS
sudo swupd bundle-add neovim && sudo swupd bundle-add python-basic

# For Exherbo Linux
cave resolve app-editors/neovim --take dev-python/neovim-python --take app-editors/neovim-> 

# For Gentoo based distros
emerge -a app-editors/neovim

# For GNU Guix
guix install neovim

# For GoboLinux
sudo -H Compile NeoVim

# For Nix based distros (e.g. NixOS etc.)
nix-env -iA nixpkgs.neovim

# For Mageia 7+
urpmi neovim python2-pynvim python3-pynvim

# For PLD Linux
poldek -u neovim python-neovim python3-neovim python-neovim-gui python3-neovim-gui

# For Source Mage
cast neovim

# For Solus Linux
sudo eopkg install neovim

# For Void Linux
sudo xbps-install -S neovim

# For FreeBSD
pkg install neovim

# For OpenBSD
pkg_add neovim

# For Android / Android based distros
  - Download Termux at https://play.google.com/store/apps/details?id=com.termux&pli=# 
  - Then run in Termux app:
    pkg install python neovim

# Install via Snap
sudo snap install --beta nvim --classic

# Install via Flatpak
flatpak install flathub io.neovim.nvim
```

#### 2. Install the NerdFont version of your preferred terminal font to show icons

**Download** your preferred font here: [Nerd Font Downloads](https://www.nerdfonts.com/font-downloads)

**Extract** the zip file, **enter the folder** and **open the terminal** in the current directory.

Then, Run the following command:
```
mkdir /usr/share/fonts/userf && sudo cp -r * /usr/share/fonts/userf
```
At last, **set** the font **as your terminal font**

**NOTICE: Make sure the name of the font doesn't end with "Mono**  
**EXAMPLE:**  
* **Choose "JetBrains Mono Nerd Font"**  
* **and not ~~"JetBrains Mono Nerd Font Mono"~~**

#### 3. Install the GCC compiler
Simply like the installing in the first step, just add ` gcc` at the end of each command

# For Windows Users

