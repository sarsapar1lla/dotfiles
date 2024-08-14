export ZSH_CONFIG="$HOME/.config/zsh"

# Add binaries to path
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/Users/timothy.may/.local/bin"

export EDITOR=hx

# Docker / colima
export DOCKER_HOST=unix:///Users/timothy.may/.colima/default/docker.sock
export TESTCONTAINERS_DOCKER_SOCKET_OVERRIDE=/var/run/docker.sock

# Homebrew bundle
export HOMEBREW_BUNDLE_FILE=~/.config/Brewfile
export HOMEBREW_BUNDLE_NO_LOCK=1
