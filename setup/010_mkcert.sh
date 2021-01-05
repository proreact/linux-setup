sudo apt install libnss3-tools
mkdir -p $HOME/.local/bin;
wget -O $HOME/.local/bin/mkcert "https://github.com/FiloSottile/mkcert/releases/download/v1.4.3/mkcert-v1.4.3-linux-amd64"
chmod +x $HOME/.local/bin/mkcert
$HOME/.local/bin/mkcert -install
