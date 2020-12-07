# configure dotfiles
export DOTFILE_PATH="$HOME/.dot"

# add dot/bin/ to PATH
# TODO add automated dotfiles environment variable?
export PATH="$PATH:$HOME/.dot/bin"

# add global node modules to PATH
export PATH="$PATH:$HOME/.npm-global/bin"

# add cargo to PATH
export CARGO_HOME="$HOME/.cargo"
export PATH="$PATH:$CARGO_HOME/bin"

# add go to PATH
export GOPATH="$HOME/w/go"
export GOBIN="$GOPATH/bin"
export PATH="$PATH:$GOBIN"

# add Haskell tools to PATH
[ -f "$HOME/.ghcup/env" ] && source "$HOME/.ghcup/env" # ghcup-env

# disable paging for bat
# export BAT_PAGER=""
