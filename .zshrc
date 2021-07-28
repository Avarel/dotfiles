# Terminal customizations
eval "$(starship init zsh)"

# Enable CLI command colors
export CLICOLOR=1

# Enable colorful terminal
export TERM=xterm-256color

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Rust installed binaries
export PATH="$PATH:$HOME/.cargo/bin"

# Local binaries
export PATH="$PATH:/usr/local/bin"

# Homebrew sbin
export PATH="$PATH:/usr/local/sbin"

# LaTeX binaries
export PATH="$PATH:/usr/local/texlive/2019/bin/x86_64-darwin"

# Anaconda path
export PATH="$PATH:/usr/local/anaconda3/bin"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# opam configuration
test -r /Users/admin/.opam/opam-init/init.zsh && . /Users/admin/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true