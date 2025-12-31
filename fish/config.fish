if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -U fish_autosuggestion_enabled 0

# Vi keybindings for Fish
set -g fish_key_bindings fish_vi_key_bindings

# Node
set -x PATH /opt/node/bin $PATH

# Dotnet
set -x DOTNET_ROOT /opt/dotnet
set -x PATH "$HOME/.dotnet/tools" $PATH

# Go
set -x PATH "$HOME/go/bin" $PATH

# Rust
source "$HOME/.cargo/env.fish"
