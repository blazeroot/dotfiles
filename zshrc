#ZSH=$HOME/.dotfiles/oh-my-zsh
zmodload zsh/zprof

source $HOME/.dotfiles/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Plugins
plugins=(swift alias-tips antigen-git-rebase antigen-git-store asciidoctor auto-fu.zsh autojump-zsh autoupdate-antigen.zshplugin bitbucket-git-helpers blackbox browse-commit calc.plugin.zsh colored-man-pages-mod command-not-found copyzshell crash docker-aliases docker-compose docker-fun docker-helpers elixir-oh-my-zsh git-flow git-add-remote git-aliases.zsh git-extra-commands git-it-on.zsh git-prune gitfast gpg-agent grep2awk history-search-multi-word node.plugin.zsh ssh-connect tsm aws_manager_plugin cabal gulp ssh-agent ruby lein pyenv rbenv gem heroku jruby rake redis-cli rsync tmux vagrant)

for plugin in $plugins; do antigen bundle $plugin; done

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure
PROMPT='%(?.%F{magenta}.%F{red})❯%f '

# Tell antigen that you're done.
antigen apply

# Customize PATH

# utils
export PATH=$PATH:$HOME/.dotfiles/utils

# rbenv
export PATH=$PATH:$HOME/.rbenv/bin
eval "$(rbenv init -)"

# pyenv
export PATH=$PATH:$HOME/.pyenv/bin
eval "$(pyenv init -)"

# cabal
export PATH=$PATH:$HOME/.cabal/bin
export PATH="/usr/local/opt/curl/bin:$PATH"

# direnv
eval "$(direnv hook $SHELL)"

