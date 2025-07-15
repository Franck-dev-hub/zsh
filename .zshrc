# ===================== Zinit (Plugin Manager) =====================
# Set the directory to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-/home/franck/.local/share}/zinit/zinit.git"

# Download Zinit if it's not already installed
if [ ! -d "$ZINIT_HOME" ]; then
    mkdir -p "$(dirname $ZINIT_HOME)"
    git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source Zinit
source "${ZINIT_HOME}/zinit.zsh"

# ===================== Plugins =====================
# Syntax highlighting, completions, autosuggestions
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions

# ===================== Prompt =====================
# Oh My Posh prompt configuration
setopt transient_rprompt
# Initialize Oh My Posh with custom config
eval "$(/usr/bin/oh-my-posh init zsh --config /home/franck/.config/ohmyposh/custom.toml)"

# ===================== History Settings =====================
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=2000
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS

# ===================== Completion & Key Bindings =====================
# Load completions
autoload -U compinit && compinit

# Up/Down arrow: search history for lines beginning with current input
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search

# Tab completion and color settings
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' group-name ''
zstyle ':completion:*' verbose yes
bindkey '^I' expand-or-complete
bindkey "^[[3~" delete-char

# ===================== Aliases =====================
# --- Vim ---
alias n="nvim"
alias v="nvim"
alias vi="nvim"
alias vim="nvim"

# --- Git/Github ---
alias gs="clear && git status"
alias ga="git add"
alias gc="git commit"
alias gca="git commit --amend"
alias gcan="git commit --amend --no-edit"
alias gp="git push"
alias gpf="git push -f"
alias gcanf="git commit --amend --no-edit && git push -f"
alias gpl="git pull"

# --- Holberton (C/Valgrind) ---
alias gcch="gcc -Wall -pedantic -Werror -Wextra -std=gnu89"
alias val="clear && valgrind --leak-check=full --track-origins=yes --show-leak-kinds=all ./a.out"
