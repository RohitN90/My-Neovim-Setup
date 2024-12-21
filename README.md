
# Neovim Setup in Fedora - Dracula

Hey! Are you looking for the `Dracula Neovim Setup` here is the one 🧛🏻‍♂️. You can directly clone my repo and get an amazing Neovim setup for your IDE. 

```
https://github.com/RohitN90/My-Neovim-Setup.git
```
And put this file into your `.config/nvim` folder.

But here is this thing you need to follow :
* Fork this repo and give it a like , so that you need not search again and again in the GitHub 😅.
* If any any lsp's are not working please go though this folder structure so that you can configure your own.
```
└── ~/.config/nvim/
    ├── lua/
    │   ├── plugins/
    │   │   ├── complections.lua
    │   │   ├── dashboard.lua
    │   │   ├── dracular.lua
    │   │   ├── lsp-config.lua
    │   │   ├── lua-line.lua
    │   │   ├── neo-tree.lua
    │   │   ├── null-ls.lua
    │   │   ├── telescope.lua
    │   │   └── treesitter.lua
    │   ├── plugins.lua
    │   └── vim-options.lua
    └── init.lua
```

## Tmux Also
What about the Tmux? :( Don't worry I get you 😉In this repo, you will have the configuration of the `Tmux`, and also the Dracula Tmp bar (I don't know what it's called! 😅). So that you do not need to worry about the `Tmux`.

You can find the Tmux configuration over here :
```
.
├── .config/
│   ├── nvim/
│   └── --all .lua files Here !
├── tmux
└── .tmux.conf
```
Hit `ls -all` command in you termial to see all the files and `.config` files in you current directory.

Before that you need to download the tmp package in you system 🤔. The given below git repo helps to donwload the tmp package for the tmux. It's a simple process 😇. Go to the terminal, copy this link given below and download the `tmp package`. 
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
After this had been installed, you need to run these following commands in you tmux session :
```
tmux            //get into tmux session
ctrl + s r     //for reload
ctrl + s I     //for installing the tmp package for the tmux.
```
Exit the session for the tmux by pressing `ctrl + s d` and relaunch the tmux. Here yo Go ! Now you can see the beautiful status bar for the `tmux with dracula theme` 🤩.

Thank you for looking my repo 🥰 and forget not to like this 😅.
See you later. Bye Byeee 👋.
