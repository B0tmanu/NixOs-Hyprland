if status is-interactive
# Commands to run in interactive sessions can go here
end

set -g fish_greeting

alias home="cd ~"

alias vi="nvim"
alias nixconfig="sudoedit /etc/nixos/configuration.nix"
alias nixgen="sudo nixos-rebuild switch --flake /etc/nixos#bot"
alias nixupdate="sudo nixos-rebuild switch --upgrade"

alias svi="sudoedit"

alias ls="eza -a --group-directories-first"
alias ll="eza -la"

function cd
    builtin cd $argv
    and eza -a --group-directories-first
end
