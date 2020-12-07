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

# run antigen init dotfile
source "$DOTFILE_PATH/zsh/init_antigen.zsh"

# run miscellanious ZSH dotfiles
for file in $DOTFILE_PATH/zsh/zsh.d/**/*.zsh; do
        #echo "sourcing $file"
        source "$file"
done

# END DOTFILE CONFIGURATION
