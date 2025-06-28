# ~/.zshrc
source ~/.zsh_env_private # Env private variables not tracked by git


### ⚙️ Variables básicas
export ZSH="$HOME/.oh-my-zsh"
# export EDITOR="nvim"
export PATH="$HOME/.cargo/bin:$HOME/go/bin:$PATH"

### 🌟 Prompt moderno con Starship
eval "$(starship init zsh)"

### 🔌 Plugins de Oh My Zsh
plugins=(
  git                # comandos útiles de Git
  github             # integración con GitHub
  zsh-autosuggestions  # sugerencias al escribir
  zsh-syntax-highlighting # colores para comandoso
  history            # mejoras en historial
  alias-finder       # ayuda con alias
)

### 🚀 Inicializa Oh My Zsh
source $ZSH/oh-my-zsh.sh

### ⌨️ Alias útiles
alias ll="ls -lh"
alias la="ls -lha"
alias gs="git status"
alias ..="cd .."
alias ...="cd ../.."
alias c="clear"

### 📜 Historial largo y compartido entre sesiones
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt share_history

### 💡 Correcciones de comandos mal escritos
setopt correct_all

### 🧹 Limpieza visual
unsetopt BEEP

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

