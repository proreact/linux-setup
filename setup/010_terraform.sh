URL="https://releases.hashicorp.com/terraform/0.13.5/terraform_0.13.5_linux_amd64.zip"
TEMP_DEB="$(mktemp -d)" &&
wget -O "$TEMP_DEB/terraform.zip" $URL
pushd $TEMP_DEB
unzip terraform.zip
mv ./terraform $HOME/.local/bin/terraform
popd
rm -rf $TEMP_DEB


