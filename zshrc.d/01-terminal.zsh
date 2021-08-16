# User configuration

export MANPATH="/usr/local/man:$MANPATH"

# Manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='code'
fi

# Terminal customizations
eval "$(starship init zsh)"

# Enable CLI command colors
export CLICOLOR=1

# Enable colorful terminal
export TERM=xterm-256color