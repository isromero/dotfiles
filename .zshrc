# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ~/.zshrc
source ~/.zsh_env_private # Env private variables not tracked by git

# ---- Zoxide (better cd) ----
eval "$(zoxide init zsh)"

export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.cargo/bin:$HOME/go/bin:$PATH"

plugins=(
  git
  github
  zsh-autosuggestions
  zsh-syntax-highlighting
  history
  alias-finder
)

source $ZSH/oh-my-zsh.sh

# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

alias ll="ls -lh"
alias la="ls -lha"
alias gs="git status"
alias ..="cd .."
alias ...="cd ../.."
alias c="clear"
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"

alias claude="/Users/isromero/.claude/local/claude"

# Created by `pipx` on 2025-08-11 10:34:43
export PATH="$PATH:/Users/isromero/.local/bin"
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
