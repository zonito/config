set fish_greeting ""

command -qv nvim && alias vim nvim

set -gx EDITOR nvim

fish_add_path $HOME/.local/bin
fish_add_path /usr/local/opt/gnu-getopt/bin
fish_add_path /usr/local/sbin
fish_add_path /usr/local/opt/openjdk/bin
fish_add_path /usr/local/opt/coreutils/libexec/gnubin
fish_add_path /usr/local/opt/gnu-sed/libexec/gnubin
fish_add_path $HOME/Codes/sherlock/sherlock/
fish_add_path /usr/local/Cellar/node/16.11.1/bin/
fish_add_path /Users/sharmal/.local/share/solana/install/active_release/bin
fish_add_path /Users/sharmal/.cargo/bin
alias v "$HOME/Codes/config/vault.fish"

set -g LC_ALL en_US.UTF-8
set -g LANG en_US.UTF-8

set -g GOPATH $HOME/go
fish_add_path $GOPATH/bin

alias g git
alias fl "ag --ignore='/usr/local*' -i --column --silent --stats -a -m=100"
# alias grep fl
alias ffl "fl -g"
alias fffl "fl --context=1"

# https://www.nerdfonts.com/font-downloads / https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip / https://the.exa.website/features/icons
alias ls "exa --icons --oneline --binary"
alias ll "ls -l -g --icons --git --header --modified --sort=mod --reverse"
alias lll "ll --accessed --created"
alias lt "ll --tree --level=2"
alias lla "lll -a"

alias r "HTTPSTAT_SHOW_BODY=true HTTPSTAT_SAVE_BODY=false httpstat"
alias rr "HTTPSTAT_SHOW_SPEED=true r"

# https://github.com/dbcli/mycli
# alias mysql mycli
alias is "sherlock.py --timeout=60"

alias htop "htop -H"
alias top "btop -t"
alias nnn "nnn -e"

thefuck --alias | source
