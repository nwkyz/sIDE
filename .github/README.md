![softIDE](https://raw.githubusercontent.com/nwkyz/nwkyz-picbed/main/storage/header.png)

# CONTENTS
* [**INTRODUCTION**](https://github.com/nwkyz/sIDE/tree/main#introduction)
* [**FEATURES**](https://github.com/nwkyz/sIDE/tree/main#features)
* [**INSTALLING DEPENDENCIES**](https://github.com/nwkyz/sIDE/blob/main/.github/INSTALL_DEPENDENCIES.md#dependencies-installing-guide)
* [**QUICK INSTALL FOR LINUX/MACOS**](https://github.com/nwkyz/sIDE/tree/main#for-linux-and-macos-users)
* [**QUICK INSTALL FOR WINDOWS**](https://github.com/nwkyz/sIDE/tree/main#for-windows-users)
* [**UPDATING**](https://github.com/nwkyz/sIDE/tree/main#2-updating)

# Introduction
sIDE (softIDE) is a configuration for neovim to make it into an super-lightweight and fast IDE. It is easy to install, configure and use. Thanks to neovim, it can work on almost all the architectures and OSes.

In the fastest way, only one line of command is needed to install sIDE. This is a fully step-by-step documentation and beginners can also easily install sIDE by following the steps, too.

# Features
**ALREADY MADE：**
* [x] Blazing fast startup and operation
* [x] Silky smooth interactive experience and animations
* [x] AI-powered suggestion and code auto-completion
* [x] Graphics git management interface
* [x] Integrated code auto-completion and LSP server
* [x] Beautiful user interface with Light and Dark theme
* [x] Mouse and touchpad friendly operation experience with mouse gestures
* [x] Integrated spell check for all the languages
* [x] Refreshed keymap makes everything fast and elegant
* [x] Integrated file management and terminal experience
* [x] Familiar vim/neovim keymap settings is also provided
* [x] Quick and easy keymap and config float menu
* [x] Quick troubleshoot experience
* [x] Quick bookmark and summary experience

**STILL WORKING ON THEM:**
* [ ] Better mouse and touchpad interactive experience
* [ ] 60 FPS animation works in the terminal
* [ ] Better multitask experience

**IN PLANNING:**
* Integrated resource fetching
* Refreshed UI design
* Run AI copilot locally on your PC with Ethonwork Bailing LLM 

...More features will be added later. This currently is the preview version of the project

# 0. Before We Start
Before we start, we should make sure we have the following necessary dependencies:
* Python 3
* git
* neovim
* The NerdFont version of your preferred terminal font
* gcc/mingw compiler
* NodeJS (npm) - Optional

**⚠️  IMPORTANT:**  
If you don't have these installed, just follow the dependencies installing guide.  
But don't worry, it's easy: [**Dependencies Installing Guide**](./INSTALL_DEPENDENCIES.md) (Click to go).

# 1. Quick Install
### For Linux and macOS Users
1. Just execute the command below **(NOTICE: If you're new to vim/neovim and don't know how to quit it, just hit `<space>+Q` to quit sIDE)**:
```
git clone https://github.com/nwkyz/sIDE.git ~/.config/nvim --depth 1 && nvim
```
 **For Chinese users that can't reach github, run the following command instead:**
```
git clone https://ghproxy.com/https://github.com/nwkyz/sIDE.git ~/.config/nvim --depth 1 && nvim
```
2. Then, you can run sIDE with the command `nvim`, also I recommend to execute the following command if you're using zsh as your shell. Instead of using `nvim`, you can run sIDE with `side`, which I think is more smooth to type:
```
echo "alias side=nvim">>~/.zshrc
```

### For Windows Users
1. Just execute the command below **(NOTICE:If you're new to vim/neovim. You can hit `<space>+Q` to quit sIDE after installing)**:
```
git clone https://github.com/nwkyz/sIDE.git $HOME\AppData\Local\nvim --depth 1 && nvim
```

# 2. Updating
### For Linux and macOS Users
1. Execute the command below:
```
cd ~/.config/nvim && git pull && cd
```

### For Windows Users
```
cd $HOME\AppData\Local\nvim && git pull && cd $HOME\
```
## **The Documentation Isn't Finished Just Now, To Be Continued**
