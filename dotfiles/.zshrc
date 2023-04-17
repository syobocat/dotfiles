# Environment
typeset -U path
path+=(${HOME}/.cargo/bin
       ${HOME}/.local/bin)
export PATH

export EDITOR=nvim

alias logout='swaymsg exit'
alias update='doas emerge --sync && doas emerge -auDN @world && doas emerge -a --depclean'

# Shell
setopt IGNORE_EOF

# Completion
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' group-name ''
zstyle ':completion:*:descriptions' format '%F{yellow}completing %B%d%b'$DEFAULT
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
setopt COMPLETE_IN_WORD
setopt GLOB_COMPLETE

# Prompt
autoload -Uz promptinit colors
promptinit; colors
PROMPT="[%n@%m %{$fg[green]%}%~%{$reset_color%}]%# "
RPROMPT="%{$fg[red]%}[%?]%{$reset_color%}"

# History
HISTFILE=${HOME}/.zsh_history
HISTSIZE=1000
SAVEHIST=10000
setopt HIST_FCNTL_LOCK
setopt HIST_IGNORE_DUPS
setopt HIST_REDUCE_BLANKS
setopt SHARE_HISTORY

autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey -d
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end

# Plugins
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
