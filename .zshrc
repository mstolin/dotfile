# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Plugins
plugins=(
  git
  tmux
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Automaticall start tmux
#ZSH_TMUX_AUTOSTART=true

# Try to get Anki running
#alias ankix="ANKI_WAYLAND=1 anki"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='code'
fi

# Aliases
alias ls="exa --group-directories-first --header"
alias l='exa  -lbF --color=always --group-directories-first --header'
alias la='exa -lbhHigUmuSa --time-style=long-iso --git --color-scale --header'
alias lt='exa --tree --color=always --group-directories-first'

# User configuration

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# Poetry
export POETRY_HOME="$HOME/.poetry"
export PATH="$POETRY_HOME/bin:$PATH"

# Go
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go

# SDKMAN (must be at the end of the file)
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"

# Starship
eval "$(starship init zsh)"
