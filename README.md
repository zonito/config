# Configs

## Install and Setup

```fish
brew install nvim ghq exa peco rust gpg nmap python meld bitwarden-cli watch mysql tfenv netcat telnet awscli jq golang pyenv the_silver_searcher git sqlite tree

curl -L https://get.oh-my.fish | fish
omf install jacaetevha

curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher install jethrokuan/z

alias grep ag
# https://www.nerdfonts.com/font-downloads / https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip / https://the.exa.website/features/icons
alias ls exa
alias g git
```

### Nvim Plugins Install

```nvim

nvim
:PlugInstall
:q!
:q!
```
