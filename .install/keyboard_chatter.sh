#!/usr/bin/bash
set -e

UTILS=Utils

# Install keyboard chatter fix
cd $HOME
if [ ! -d "$UTILS" ]; then
  echo "$UTILS does not exist. Creating..."
  mkdir $UTILS
fi

cd $UTILS
git clone https://github.com/finkrer/KeyboardChatteringFix-Linux.git
cd KeyboardChatteringFix-Linux
pip3 install -r requirements.txt

# Stop here, manual intervention on the commands below
exit 0

# Check device by using
ls -a /dev/input/by-id
# Edit chattering_fix.sh and copy to /usr/local/bin
sudo cp chattering_fix.sh /usr/local/bin
# Edit chattering_fix.service to point to /usr/local/bin
sudo cp chattering_fix.service /etc/systemd/system/chattering_fix.service