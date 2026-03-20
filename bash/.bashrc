# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Node
export PATH="/opt/node/bin:$PATH"

# Dotnet
export DOTNET_ROOT="/opt/dotnet"
export PATH="$HOME/.dotnet/tools:$PATH"

# Go
export PATH="$HOME/go/bin:$PATH"

# Rust
if [ -f "$HOME/.cargo/env" ]; then
    source "$HOME/.cargo/env"
fi

# Java
JAVA_BIN=$(readlink -f "$(which java)")
export JAVA_HOME=$(dirname "$(dirname "$JAVA_BIN")")
export PATH="$JAVA_HOME:$PATH"
