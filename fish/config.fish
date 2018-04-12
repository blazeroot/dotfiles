# rbenv
set PATH $HOME/.rbenv/bin $PATH
set PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1

# pyenv
set PATH $HOME/.pyenv/bin $PATH

# thefuck
thefuck --alias | source
