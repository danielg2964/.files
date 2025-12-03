if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Vi keybindings for Fish
set -g fish_key_bindings fish_vi_key_bindings

# Protoc 
set -gx PATH $PATH /usr/local/protoc/bin

# NeoVim
set -gx PATH $PATH /usr/local/nvim/bin

# Roslyn Ls
set -gx PATH $PATH /usr/local/roslyn_ls

# Node
set -gx PATH $PATH /usr/local/node/bin

# Dotnet
set -gx DOTNET_ROOT /usr/local/dotnet
set -gx PATH $PATH DOTNET_ROOT
set -gx PATH $PATH $HOME/.dotnet/tools
set -gx PATH $PATH /usr/local/omnisharp

# Protols
set -gx PATH $PATH /usr/local/protols

# GRPCurl
set -gx PATH $PATH /usr/local/grpcurl

# luarocks
set -gx LUA_LS_ROOT /usr/local/lua-language-server
set -gx PATH $PATH "$LUA_LS_ROOT/bin"
set LUA_PATH "~/.luarocks;;"

# pnpm
set -gx PNPM_HOME "/home/dani/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# rust
source "$HOME/.cargo/env.fish"
