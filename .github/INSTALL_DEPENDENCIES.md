# Dependencies Installing Guide
sIDE can work on Windows/Linux/macOS/BSD and just follow the following steps to install the dependencies of sIDE.

Don't worry, this will be easy.

# CONTENTS
* [DEPENDENCIES LIST]()  
* [FOR LINUX USERS](https://github.com/nwkyz/sIDE/blob/main/.github/INSTALL_DEPENDENCIES.md#for-linux-users)  
* [FOR WINDOWS USERS](https://github.com/nwkyz/sIDE/blob/main/.github/INSTALL_DEPENDENCIES.md#for-windows-users)

# Dependencies List
This is a list of the dependencies we need to install. Usually, you don't need to pay attention to these. If you have any problems, you can try to install them manually or submit an issue in [Github Issues](https://github.com/nwkyz/sIDE/issues).
1. git
2. neovim
3. Python 3
4. The NerdFont version of your preferred terminal font
5. gcc/mingw compiler

# For Linux Users
### 1. We need to install `neovim` and `git` first
**For Debian 10 / 11 or older users:**
* Please download the [nvim-linux64.deb](https://github.com/nwkyz/sIDE/raw/main/.github/nvim-0.10.0-dev-amd64.deb) here first. And then, open terminal in your download folder and execute the command below:
```
sudo apt install ./nvim-linux64.deb && sudo apt install git
```
This is because the official build in debian repository is too old to run sIDE.
  
**For other distros' users:**  
* Just choose the command below to execute depends on your distro (distribution):
```
# For Ubuntu based distros (e.g. ZorinOS, Deepin, Pop!_OS, VanillaOS etc.)
sudo apt update && sudo apt install neovim python3-neovim git

# For Arch-like distros (e.g. Manjaro, EndeavourOS, Archcraft, KaOS etc.)
sudo pacman -Syu && sudo pacman -S neovim git

# For RedHat based distros (e.g. CentOS, OpenEuler, PCLinuxOS etc.)
yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm && yum install -y neovim python3-neovim git

# For Fedora based distros (e.g. Fedora 25+, Nobara, Ultramarine etc.)
sudo dnf install -y neovim python3-neovim git

# For OpenSUSE based distros (e.g. GeckoLinux, LinuxKamarada, etc.)
sudo zypper in neovim python-neovim python3-neovim git

# For Alpine based distros
sudo apk add neovim git

# For Clear Linux OS
sudo swupd bundle-add neovim && sudo swupd bundle-add python-basic git

# For Exherbo Linux
cave resolve app-editors/neovim --take dev-python/neovim-python --take app-editors/neovim-> 

# For Gentoo based distros
emerge -a app-editors/neovim

# For GNU Guix
guix install neovim git

# For GoboLinux
sudo -H Compile NeoVim git

# For Nix based distros (e.g. NixOS etc.)
nix-env -iA nixpkgs.neovim nixpkgs.git

# For Mageia 7+
urpmi neovim python2-pynvim python3-pynvim git

# For PLD Linux
poldek -u neovim python-neovim python3-neovim python-neovim-gui python3-neovim-gui git

# For Source Mage
cast neovim git

# For Solus Linux
sudo eopkg install neovim git

# For Void Linux
sudo xbps-install -S neovim git

# For FreeBSD
pkg install neovim git

# For OpenBSD
pkg_add neovim git

# For Android / Android based distros
  - Download Termux at https://play.google.com/store/apps/details?id=com.termux&pli=# 
  - Then run in Termux app:
    pkg install python neovim git

# Install neovim via Snap
sudo snap install --beta nvim --classic

# Install neovim via Flatpak
flatpak install flathub io.neovim.nvim
```

### 2. Install the NerdFont version of your preferred terminal font to show icons

**Download** your preferred font here: [NerdFont Downloads](https://www.nerdfonts.com/font-downloads)

**Extract** the zip file, **enter the folder** and **open the terminal** in the current directory.

Then, Run the following command:
```
sudo mkdir /usr/share/fonts/userf && sudo cp -r * /usr/share/fonts/userf && fc-cache -fv
```
At last, **set** the font **as your terminal font**

**NOTICE: Make sure the name of the font doesn't end with "Mono"**  
**EXAMPLE:**  
* **Choose "JetBrains Mono Nerd Font"**  
* **and not ~~"JetBrains Mono Nerd Font Mono"~~**

### 3. Install the GCC compiler
Simply like the installing in the first step, just add ` gcc` at the end of each command  
**EXAMPLE: `sudo apt install gcc`**

# For Windows Users
TO BE CONTINUED
