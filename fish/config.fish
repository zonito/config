set fish_greeting ""

command -qv nvim && alias vim nvim

set -gx EDITOR nvim

fish_add_path $HOME/.local/bin
fish_add_path /usr/local/opt/gnu-getopt/bin
fish_add_path /usr/local/sbin
fish_add_path /usr/local/opt/openjdk/bin
fish_add_path /usr/local/opt/coreutils/libexec/gnubin
fish_add_path /usr/local/opt/gnu-sed/libexec/gnubin

set -g GOPATH $HOME/go
fish_add_path $GOPATH/bin

# NVM
function __check_rvm --on-variable PWD --description 'Do nvm stuff'
    status --is-command-substitution; and return

    if test -f .nvmrc; and test -r .nvmrc;
        nvm use
    else
    end
end

switch (uname)
    case Darwin
        source (dirname (status --current-filename))/config-osx.fish
    case Linux
        # Do nothing
    case '*'
        source (dirname (status --current-filename))/config-windows.fish
end

alias g git
alias grep ag

# https://www.nerdfonts.com/font-downloads / https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip / https://the.exa.website/features/icons
alias ls "exa --icons --oneline --binary"
alias ll "ls -l -g --icons --git --header --modified --sort=mod --reverse"
alias lll "ll --accessed --created"
alias lt "ll --tree --level=2"
alias lla "lll -a"
