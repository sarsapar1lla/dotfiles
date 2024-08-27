# Add binaries to path
set -gx PATH $PATH /usr/local/bin
set -gx PATH $PATH "$HOME/.local/bin"
set -gx PATH /usr/local/sbin $PATH

set -gx EDITOR hx

# Docker / colima
set -gx DOCKER_HOST "unix://$HOME/.colima/default/docker.sock"
set -gx TESTCONTAINERS_DOCKER_SOCKET_OVERRIDE "/var/run/docker.sock"

# Homebrew bundle
set -gx HOMEBREW_BUNDLE_FILE "$HOME/.config/brew/main/Brewfile"
set -gx HOMEBREW_BUNDLE_NO_LOCK 1
