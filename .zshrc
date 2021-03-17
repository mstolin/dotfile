# Path to your oh-my-zsh installation.
export ZSH="/Users/marcelstolin/.oh-my-zsh"

# Theme
ZSH_THEME="cobalt2"
autoload -U promptinit; promptinit
prompt pure

# Plugins
plugins=(
    git
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# Go
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH"

# Flutter
export PATH="$PATH:$HOME/flutter/bin"

# PyEnv
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi