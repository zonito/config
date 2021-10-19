# Configs

## Install and Setup

```fish
brew install nvim ghq exa peco rust gpg nmap python meld bitwarden-cli watch mysql tfenv netcat telnet awscli jq golang pyenv the_silver_searcher git sqlite tree mycli fzf htop mtr nnn

curl -L https://get.oh-my.fish | fish
omf install jacaetevha

curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher install jethrokuan/z

npm install -g tldr
```

### Nvim Plugins Install

```shell

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

nvim
:PlugInstall
:q!
:q!
```

# gpg Setup for Transfer

```shell

gpg --import "BW_KEY"
```


## Windows Troubleshoot

```sh
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install neovim fish
```
