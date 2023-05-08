![softIDE](https://raw.githubusercontent.com/nwkyz/nwkyz-picbed/main/storage/title1-2.png)


# Introduction
sIDE (softIDE) is a configuration for neovim to make it into an super-lightweight and fast IDE. It is easy to install, configure and use. Thanks to neovim, it can work on almost all the architectures and OSes.

In the fastest way, only one line of command is needed to install sIDE.

# Features
* Super fast startup and executing
* Everything are in a terminal window
* Integrated LSP (Language Server Protocol) code auto completion and highlight function
* Beautiful user interface
* Integrated spell check for all the languages
* Refreshed keymap to make everything fast and elegant
* Integrated file management and terminal experience
* Familiar vim/neovim keymap settings is also provided
* ...More features will be added later. This currently is the preview version of the project

# 0. Before We Start
Before we start, we should make sure we have the following necessary dependencies:
* Python 3
* git
* neovim
* The NerdFont version of your preferred terminal font
* gcc/mingw compiler

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
