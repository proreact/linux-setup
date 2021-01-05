SLACK_URL=$(curl -v 'https://slack.com/intl/en-dk/downloads/instructions/ubuntu' | grep -P 'href="(https://downloads.+?\.deb)"' --only-matching | cut -d'=' -f 2 | cut -d'"' -f 2)
TEMP_DEB="$(mktemp)" &&
wget -O "$TEMP_DEB" $SLACK_URL &&
sudo dpkg -i "$TEMP_DEB"
rm -f "$TEMP_DEB"
