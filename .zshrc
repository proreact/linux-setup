typeset -U config_files
export LANG=en_US.utf8
source $HOME/.zsh.d/custom.zsh

if [[ ! -f "$HOME/.zsh.d/zsh_plugins.zsh" ]]; then
    antibody bundle < $HOME/.zsh_plugins.txt > ~/.zsh.d/zsh_plugins.zsh
fi

# Make sure prompt is able to be generated properly.
setopt prompt_subst 
# load the path files
source $HOME/.zsh.d/custom.zsh

export _ZL_DATA="$HOME/.config/z.txt"
export ZSH_CACHE_DIR="${HOME}/.zsh_cache"
source $HOME/.zsh.d/zsh_plugins.zsh

bindkey '^R' history-substring-search-up
bindkey '^S' history-substring-search-down
SPACESHIP_PROMPT_ORDER=(
#  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
#  hg            # Mercurial section (hg_branch  + hg_status)
#  package       # Package version
  node          # Node.js section
  ruby          # Ruby section
  elixir        # Elixir section
#  xcode         # Xcode section
#  swift         # Swift section
  golang        # Go section
  php           # PHP section
  rust          # Rust section
  haskell       # Haskell Stack section
#  julia         # Julia section
  docker        # Docker section
  aws           # Amazon Web Services section
#  venv          # virtualenv section
#  conda         # conda virtualenv section
#  pyenv         # Pyenv section
#  dotnet        # .NET section
#  ember         # Ember.js section
#  kubecontext   # Kubectl context section
  terraform     # Terraform workspace section
  exec_time     # Execution time
  line_sep      # Line break
#  battery       # Battery level and status
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
);
SPACESHIP_RPROMPT_ORDER=(
  battery
  time
);
SPACESHIP_TIME_SHOW=true
SPACESHIP_BATTERY_SHOW=always
export ZSH_PLUGINS_ALIAS_TIPS_EXPAND=0

eval "$(direnv hook zsh)"
