alias brewup="brew update && brew bundle install --cleanup && brew upgrade"

alias docker-remove-containers='docker container rm $(docker container ls -qa)'
alias docker-remove-images='docker image rm $(docker image ls -qa)'

alias ls='eza'
alias ll='eza -la --icons'
alias cat='bat --theme Catppuccin-mocha'
alias grep='rg'
alias gitui='gitui -t mocha.ron'
