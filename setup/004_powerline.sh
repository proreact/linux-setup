ROOT_DIR=$(dirname $(dirname "$0"))
mkdir -p $ROOT_DIR/projects/
git clone https://github.com/powerline/fonts $ROOT_DIR/projects/powerline
pushd $ROOT_DIR/projects/powerline 
bash install.sh
popd

