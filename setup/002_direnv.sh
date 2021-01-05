if [[ ! -f "${HOME}/.local/bin/direnv" ]]; then
  curl -sfL https://direnv.net/install.sh | bin_path="${HOME}/.local/bin" bash
fi

