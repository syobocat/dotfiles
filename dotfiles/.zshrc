# Environment
typeset -U path
path+=(/home/syobon/.cargo/bin
       /home/syobon/.local/bin)
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
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=$HISTSIZE
setopt HIST_FCNTL_LOCK
setopt HIST_IGNORE_DUPS
setopt HIST_REDUCE_BLANKS

source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
