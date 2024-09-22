# Dependencies Installing Guide
sIDE can work on Windows/Linux/macOS/BSD and other OSes. Just follow the following steps to install the dependencies of sIDE.

Don't worry, this will be easy.

# Contents
* [**DEPENDENCIES LIST**](https://github.com/nwkyz/sIDE/blob/main/.github/INSTALL_DEPENDENCIES.md#dependencies-list)  
* [**FOR LINUX USERS**](https://github.com/nwkyz/sIDE/blob/main/.github/INSTALL_DEPENDENCIES.md#for-linux-users)  
* [**FOR WINDOWS USERS**](https://github.com/nwkyz/sIDE/blob/main/.github/INSTALL_DEPENDENCIES.md#for-windows-users)
* [**FOR MACOS USERS**](https://github.com/nwkyz/sIDE/blob/main/.github/INSTALL_DEPENDENCIES.md#for-macos-users)

# Dependencies List
This is a list of the dependencies we need to install. Usually, you don't need to pay attention to these. If you have any problems, you can try to install them manually or submit an issue in [Github Issues](https://github.com/nwkyz/sIDE/issues).
Before we start, we should make sure we have the following necessary dependencies:
1. `python3`
2. `git`
3. `neovim`
4. The `NerdFont` version of your preferred terminal font
5. `gcc`/`mingw` compiler
6. `xclip` - if you want to use system clipboard on Ubuntu
7. NodeJS (`npm`) - Optional for LSP
8. `java` - Optional for PlantUML Preview
9. `PlantUML` - Optional for PlantUML Preview

# For Linux Users
### 1. We need to install `neovim` and `git` first
**For Ubuntu and Debian based distro users *(e.g. ZorinOS, Deepin, VanillaOS, Pop!_OS etc.)*:**
* Please **download** the [nvim-linux64.deb](https://github.com/nwkyz/sIDE/raw/main/.github/nvim-linux64.deb) here first. And then, **open terminal** in your download folder and **execute the command below** *(this is because the official build in debian/ubuntu repository is too old to run sIDE)*:
```bash
sudo apt install ./nvim-linux64.deb && sudo apt install git python3
```
* We also provided the **compiled RPM file here if you need: [nvim-linux64.rpm](https://github.com/nwkyz/sIDE/raw/main/.github/nvim-linux64.rpm)**

**For other distros' users:**  
* Just choose the command below to execute depends on your distro (*if the command runs into an error, check your Internet connection and try to use `python` instead of `python3` or you can submit an issue in [Github Issues](https://github.com/nwkyz/sIDE/issues)*:
```bash
# For Arch-like distros (e.g. Manjaro, EndeavourOS, Archcraft, KaOS etc.)
sudo pacman -Syu && sudo pacman -S neovim git python3

# For RedHat based distros (e.g. CentOS, OpenEuler, PCLinuxOS etc.)
yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm && yum install -y neovim python3-neovim git python3

# For Fedora based distros (e.g. Fedora 25+, Nobara, Ultramarine etc.)
sudo dnf install -y neovim python3 python3-neovim git

# For OpenSUSE based distros (e.g. GeckoLinux, LinuxKamarada, etc.)
sudo zypper in neovim python3 python-neovim python3-neovim git

# For Alpine based distros
sudo apk add neovim git python3

# For Clear Linux OS
sudo swupd bundle-add neovim && sudo swupd bundle-add python-basic git

# For Exherbo Linux
cave resolve app-editors/neovim --take dev-python/neovim-python --take app-editors/neovim-> 

# For Gentoo based distros
emerge -a app-editors/neovim

# For GNU Guix
guix install neovim git python3

# For GoboLinux
sudo -H Compile NeoVim git python3

# For Nix based distros (e.g. NixOS etc.)
nix-env -iA nixpkgs.neovim nixpkgs.git nixpkgs.python3

# For Mageia 7+
urpmi neovim python2-pynvim python3 python3-pynvim git

# For PLD Linux
poldek -u neovim python3 python-neovim python3-neovim python-neovim-gui python3-neovim-gui git

# For Source Mage
cast neovim git python3

# For Solus Linux
sudo eopkg install neovim git python3

# For Void Linux
sudo xbps-install -S neovim git python3

# For FreeBSD
pkg install neovim git python3

# For OpenBSD
pkg_add neovim git python3

# For Android / Android based distros
#  - Download Termux at https://play.google.com/store/apps/details?id=com.termux&pli=# 
#  - Then run in Termux app:
     pkg install python neovim git python3

# Install neovim via Snap
sudo snap install --beta nvim --classic

# Install neovim via Flatpak
flatpak install flathub io.neovim.nvim
```

### 2. Install the NerdFont version of your preferred terminal font to show icons

**Download** your preferred font here: [NerdFont Downloads](https://www.nerdfonts.com/font-downloads)

**Extract** the zip file, **enter the folder** and **open the terminal** in the current directory.

Then, Run the following command:
```bash
sudo mkdir /usr/share/fonts/userf && sudo cp -r * /usr/share/fonts/userf && fc-cache -fv
```
At last, **set** the font **as your terminal font**

**NOTICE: Make sure the name of the font doesn't end with "Mono"**  
**EXAMPLE:**  
* **Choose "JetBrains Mono Nerd Font"**  
* **and not ~~"JetBrains Mono Nerd Font Mono"~~**

### 3. Installing other dependencies
Simply like the installing in the first step, just add ` gcc nodejs npm` at the end of each command  
**EXAMPLE: `sudo apt install gcc nodejs npm`**

### 4. Check
Run the following command:
```bash
git version && echo "  " && python3 --version && echo "  " && gcc --version && echo "  " && nvim --version
```
We can now go back to [Quick Install](https://github.com/nwkyz/sIDE/blob/main/.github/README.md#for-linux-and-macos-users) if there's no error returned. If there's any problem you can't deal with, just submit an issue in [Github Issues](https://github.com/nwkyz/sIDE/issues).

# For Windows Users
### 1. Installing `git`, `python` and `neovim`
* Download the file [Git-2.40.1-64-bit.exe](https://github.com/git-for-windows/git/releases/download/v2.40.1.windows.1/Git-2.40.1-64-bit.exe) and install it. ( n_n)  
* Download the file [python-3.8.10-amd64.exe](https://www.python.org/ftp/python/3.8.10/python-3.8.10-amd64.exe) and install it ( -.-)  
* Download the file [nvim-win64.msi](https://github.com/neovim/neovim/releases/download/stable/nvim-win64.msi) and install it ( -_-)  

### 2. Installing the NerdFont version of your preferred terminal font
**NOTE: I recommend to use [Windows Terminal](https://aka.ms/terminal) as the default terminal. It is way much better than the default command prompt in Windows 7/8/8.1/10. And it has already been the default in Windows 11**  

**Download** your preferred font here: [NerdFont Downloads](https://www.nerdfonts.com/font-downloads)

**Extract** the zip file, **choose all** of the font files and **right click** on them. Then, click **Install**.

At last, **set** the font **as your terminal font**

**NOTICE: Make sure the name of the font doesn't end with "Mono"**  
**EXAMPLE:**  
* **Choose "JetBrains Mono Nerd Font"**  
* **and not ~~"JetBrains Mono Nerd Font Mono"~~**

### 3. Back to Installing
We can now go back to [Quick Install](https://github.com/nwkyz/sIDE/blob/main/.github/README.md#for-windows-users) if there's no error returned. If there's any problem you can't deal with, just submit an issue in [Github Issues](https://github.com/nwkyz/sIDE/issues).

# For macOS users
### 0. If you don't have Homebrew installed
Just run the command below, it may takes a few minutes:
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### 1. Install `git` `python` and `neovim`
Run the command below:
```bash
brew install git python3 neovim
```

### 2. Install the NerdFont version of your preferred terminal font
**Download** your preferred font here: [NerdFont Downloads](https://www.neirdfonts.com/font-downloads)

**Extract** the zip file, **choose all** of the font files

**Double-click** the font in the Finder.

Click **Install** in the font preview window that opens.

At last, **set** the font **as your terminal font**

(*If there's no the font you've installed, open the **Font Book** app from your Applications folder. **Select** the font, then choose **Edit > Activate (or Enable)**. If there's still no, just reboot your Mac*)

**NOTICE: Make sure the name of the font doesn't end with "Mono"**  
**EXAMPLE:**  
* **Choose "JetBrains Mono Nerd Font"**  
* **and not ~~"JetBrains Mono Nerd Font Mono"~~**

### 3. Back to Installing
We can now go back to [Quick Install](https://github.com/nwkyz/sIDE/blob/main/.github/README.md#for-linux-and-macos-users) if there's no error returned. If there's any problem you can't deal with, just submit an issue in [Github Issues](https://github.com/nwkyz/sIDE/issues).

