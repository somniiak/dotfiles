# Enable the subsequent settings only in interactive sessions
case $- in
  *i*) ;;
    *) return;;
esac

# Path to oh-my-bash installation.
export OSH='/home/amicus/.oh-my-bash'

# OMB theme
OSH_THEME="rr"

# OMB don't overwrite the existing aliases by
# the default OMB aliases defined in lib/*.sh
OMB_DEFAULT_ALIASES="check"

# OMG display Python virtualenv and condaenv
OMB_PROMPT_SHOW_PYTHON_VENV=true

# OMB completions
completions=(
  git
  composer
  ssh
)

# OMB aliases
aliases=(
  general
)

# OMB plugins
plugins=(
  git
  bashmarks
  colored-man-pages
)

source "$OSH"/oh-my-bash.sh

# Use image preview by default
export FZF_DEFAULT_OPTS="--preview 'chafa -s \${FZF_PREVIEW_COLUMNS}x\${FZF_PREVIEW_LINES} {}'"

# Confirm before deletion
alias rm='rm -i'

# Use alternative
alias cat='bat'

# Use alternative
alias ls='lsd'

# ll: Extended file metadata as a table
alias ll='lsd -l'

# tree: Recurse into directories
alias tree='lsd --tree'

# sudo: Run as doas for compatibility
alias sudo='doas'

# wget: Resume download
alias wget='wget -c'

# path: Echo all executable Paths
alias path='echo -e ${PATH//:/\\n}'
