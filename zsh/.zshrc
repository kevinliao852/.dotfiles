# Export
export PATH=$HOME/.local/share/mise/shims:$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/opt/homebrew/opt/rustup/bin:$PATH"
export ZSH="$HOME/.oh-my-zsh"
export EDITOR="nvim"

# Load local overrides if present
eval "$(mise activate zsh)"

# Load local secret
if [ -f "$HOME/.zshenv.local" ]; then
  source "$HOME/.zshenv.local"
fi

# Homebrew Deps
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Register plugins
# https://github.com/zsh-users/zsh-autosuggestions
plugins=(git fzf)

# source zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/oh-my-zsh.sh

# Alias
alias v='nvim'
alias ovi='vi'
alias vi='vim'
alias vim='nvim'
alias dcu='docker compose up -d'
alias dcd='docker compose down'
alias dc='docker compose'
alias dr='docker restart'
alias dl='docker logs -f'
alias dps='docker ps'
alias k='kubectl'
alias kd='kubectl describe'
alias gs='git status'
alias gcm='git commit -m'
alias gco='git checkout'
alias gsh='git stash'
alias gshp='git stash pop'
