# Add binaries to path
set -gx PATH $PATH /usr/local/bin
set -gx PATH $PATH "$HOME/.local/bin"
set -gx PATH /usr/local/sbin $PATH
set -gx PATH $PATH "$HOME/.cargo/bin"

set -gx EDITOR hx
