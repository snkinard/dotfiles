source ~/dotfiles/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

antigen bundle taskwarrior

# Load the theme.
antigen theme pygmalion

# Tell antigen that you're done.
antigen apply

# Aliases
alias ll="ls -lGaf"
