rmd () {
  pandoc $1 | lynx -stdin
}

screenlayout () { 
    local settingName=$1;
    script=$(find ~/.screenlayout/ -name "${settingName}*" | head -n 1)
    echo "${script}" 
    if [[ ! -z "${script}" ]]; then
        bash "${script}"
    else
        echo "No script found;"
    fi
}

docker-all() {
  if [[ $1 = "" ]]; then
    echo "Missing action. Add 'stop', 'kill', etc."
  else
    docker ps | grep -o '^[0-9a-z]\+' | xargs docker $1
 fi
}
