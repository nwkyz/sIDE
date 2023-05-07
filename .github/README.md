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

# Before We Start
Before we start, we should make sure we have the following necessary dependencies:
* Python3
* neovim
* The NerdFont version of your preferred terminal font

Don't worry, if you don't have these installed, just follow the dependencies installing guide: [Dependencies Installing Guide](./INSTALL_DEPENDENCIES.md).

# Fast Install
### For Linux and macOS Users
1. Just execute the command below **(NOTICE:If you're new to vim/neovim. You can hit `<space>+Q` to quit sIDE after installing)**:
```
git clone https://github.com/nwkyz/sIDE.git ~/.config/nvim --depth 1 && nvim
```
(For Chinese users that can't reach github, run the following command instead:)
```
git clone https://ghproxy.com/https://github.com/nwkyz/sIDE.git ~/.config/nvim --depth 1 && nvim
```
2. Then, you can run sIDE with `nvim`, also I recommend to add the following line to the end of your ~/.zshrc file if you're using zsh as your shell, so you can run sIDE with `side` command instead of `nvim`, which I think is more smooth to type:
```
alias side=nvim
```

### For Windows Users
1. Just execute the command below **(NOTICE:If you're new to vim/neovim. You can hit `<space>+Q` to quit sIDE after installing)**:
```
git clone https://github.com/nwkyz/sIDE.git $HOME\AppData\Local\nvim --depth 1 && nvim
```

## **The Documentation Isn't Finished Just Now, To Be Continued**
