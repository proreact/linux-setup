if [[ ! -f "${HOME}/.local/bin/antibody" ]]; then
  curl -sL git.io/antibody > ./antibody_install.sh
  bash ./antibody_install.sh -b "${HOME}/.local/bin"
  rm ./antibody_install.sh
fi

