# system shortcuts
alias d="cd ~/Documents"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias p="cd ~/Projects"
alias g="git"

# project aliases
alias caladan="cd ~/Projects/Caladan/caladan"
alias dotfiles="cd ~/Projects/Dotfiles"

# easier navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# specific system aliases
# @todo

# add tab completion for ssh hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

# add `killall` tab completion for daily apps
complete -o "nospace" -W "Dock Finder Firefox Safari iTunes SystemUIServer Terminal" killall;
