ROOT_DIR=$(dirname $(dirname "$0"))
ln --verbose --backup --suffix=_old -s \
  "${ROOT_DIR}/.gitignore_global" \
  "${ROOT_DIR}/.zsh_plugins.txt" \
  "${ROOT_DIR}/.zsh.d" \
  "${ROOT_DIR}/.zshrc" \
  "${ROOT_DIR}/.vimrc" \
  "${HOME}/"
