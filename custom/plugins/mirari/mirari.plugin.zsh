# custom path entries
path+=($HOME/.composer/vendor/bin)

# system shortcuts
alias d="cd ~/Documents"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias p="cd ~/Projects"
alias g="git"

# project aliases
alias blog="cd ~/Projects/Sites/Blog/blog"
alias caladan="cd ~/Projects/Caladan/caladan"
alias dotfiles="cd ~/Projects/Dotfiles"
alias homepage="cd ~/Projects/Sites/Andrew/home"
alias keyrune="cd ~/Projects/Keyrune/keyrune"
alias mana="cd ~/Projects/Mana/mana"
alias moria="cd ~/Projects/TeachBoost/Moria/moria"

# easier navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# teachboost servers
alias treebeard="ssh -p 30000 trunk@162.209.79.46"
alias jace="ssh -p 30000 trunk@50.116.53.249"
alias ungoliant="ssh -p 30000 teachboost@lab.teachboost.net"

# personal servers
alias linode="ssh -p 30000 trunk@66.228.45.57"

# utilities
alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias publickey='cat ~/.ssh/id_rsa.pub'
alias ip='curl icanhazip.com'

# system
alias stopspotlight="sudo mdutil -a -i off"
alias startspotlight="sudo mdutil -a -i on"

# specific system aliases
# @todo

# add tab completion for ssh hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

# add `killall` tab completion for daily apps
complete -o "nospace" -W "Dock Finder Firefox Safari iTunes SystemUIServer Terminal" killall;
