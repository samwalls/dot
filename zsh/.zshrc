# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/sam/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# BEGIN DOTFILE CONFIGURATION

# configure dotfiles
DOTFILE_PATH="$HOME/.dot"

# run antigen init dotfile
source "$DOTFILE_PATH/zsh/init_antigen.zsh"

# run miscellanious ZSH dotfiles
for file in $DOTFILE_PATH/zsh/zsh.d/**/*.zsh; do
        #echo "sourcing $file"
        source "$file"
done

# END DOTFILE CONFIGURATION

# opam configuration
test -r /home/sam/.opam/opam-init/init.zsh && . /home/sam/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
