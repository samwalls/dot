# enable powerline fonts
if [[ -r /usr/lib/python3.4/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
    source /usr/lib/python3.4/site-packages/powerline/bindings/zsh/powerline.zsh
fi

# ------------------------------------
# ANTIGEN

# use antigen
source /usr/share/zsh/share/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme carloscuesta/materialshell

# Tell Antigen that you're done.
antigen apply

# END ANTIGEN
# -------------------------------------

# source the antigen theme file again, cos reasons...
source "$HOME/.antigen/bundles/carloscuesta/materialshell/materialshell.zsh"
