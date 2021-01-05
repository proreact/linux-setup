BIN_DIR="${HOME}/.local/bin"
BIN_NAME="circleci"
URL="https://github.com/CircleCI-Public/circleci-cli/releases/download/v0.1.11540/circleci-cli_0.1.11540_linux_amd64.tar.gz"


mkdir -p $BIN_DIR;
wget -O "${BIN_DIR}/${BIN_NAME}" $URL
chmod +x "${BIN_DIR}/${BIN_NAME}"


