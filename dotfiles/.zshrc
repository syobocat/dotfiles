# Environment
typeset -U path
path+=(${HOME}/.cargo/bin
       ${HOME}/.local/bin)
export PATH

export VISUAL=hx
export EDITOR=hx

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

bindkey -d
bindkey "^[[3~" delete-char
bindkey "^[[H" beginning-of-line
bindkey "^[[7~" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[8~" end-of-line
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

# Plugins
plugin_dir="/usr/local/share"
source ${plugin_dir}/zsh-autosuggestions/zsh-autosuggestions.zsh
source ${plugin_dir}/zsh-syntax-highlighting.zsh
