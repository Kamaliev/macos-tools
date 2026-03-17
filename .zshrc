# Path
export PATH="/Users/kamaliev/.bun/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"

# Powerlevel10k — instant prompt (должен быть до source oh-my-zsh)
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
plugins=(
  git
  docker
  docker-compose
  kubectl
  fzf
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Zoxide (умный cd)
eval "$(zoxide init zsh)"

# direnv
command -v direnv >/dev/null && eval "$(direnv hook zsh)"

# Aliases
alias ls='eza --icons'
alias ll='eza -la --icons --git'
alias lt='eza --tree --icons --level=2'
alias cat='bat --paging=never'
alias ffui='open -a Firefox http://127.0.0.1:9090/ui'

# Functions
amo() {
  curl -s -H "Authorization: Bearer $(cat ~/.config/amocrm-token)" \
       -H "Content-Type: application/json" "$@"
}

# Powerlevel10k config
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
