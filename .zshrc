# antidote
source ~/.antidote/antidote.zsh
antidote load

# starship
eval "$(starship init zsh)"

# zsh history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE

# path
export PATH="$HOME/.local/bin:$PATH"

# poetry
fpath+=~/.zfunc
autoload -Uz compinit && compinit

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"
eval "$(pyenv virtualenv-init -)"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# aliases
[ -f $HOME/.config/.zsh_aliases ] && source $HOME/.config/.zsh_aliases
[ -f $HOME/.config/.zsh_aliases_private ] && source $HOME/.config/.zsh_aliases_private
