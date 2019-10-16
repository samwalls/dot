# add dot/bin/ to PATH
# TODO add automated dotfiles environment variable?
export PATH="$PATH:$HOME/.dot/bin"

# add cargo to PATH
export CARGO_HOME="$HOME/.cargo"
export PATH="$PATH:$CARGO_HOME/bin"

# add go to PATH
export GOPATH="$HOME/w/go"
export GOBIN="$GOPATH/bin"
export PATH="$PATH:$GOBIN"
