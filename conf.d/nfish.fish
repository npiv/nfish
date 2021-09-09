alias gs="git status -sb"
alias cls="clear"
alias gla="git log --pretty=format:'%C(yellow)%h%Cred%d%Creset - %C(cyan)%an %Creset: %s %Cgreen(%cr)'"
alias gl="gla -20"
alias gll="gla --graph"
alias grep="grep --color"
alias vi=vim
alias gpom="git push origin master"
alias standup_report="gl --author=Nick --since=Yesterday"

function c
    cd ~/code/$argv
end      
complete --no-files --exclusive --command c --arguments "(pushd ~/code && __fish_complete_directories && popd)"

set --global tide_right_prompt_items status cmd_duration context jobs virtual_env kubectl vi_mode time
set -U fish_greeting "🐟"

function install_tmux
     mv ~/.config/fish/templates/tmux.conf ~/.tmux.conf
end
