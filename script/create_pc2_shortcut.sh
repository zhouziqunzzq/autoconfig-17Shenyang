#!/bin/bash
# Creator: Bittersweet NEUACM
# Time:    2017/10/20 12:50

source ../etc/env_config

# Read args and preprocess
PC2TYPE=$1
PC2NAME="$(echo $PC2TYPE | tr '[A-Z]' '[a-z]')"
PC2VERSION_NUM="$(echo $PC2_VERSION | grep -o "[0-9]*\.[0-9]*\.[0-9]*")"
SFILE=$HOME_BASE/Desktop/$PC2NAME.desktop

# Set
touch $SFILE
echo '#!/usr/bin/env xdg-open' >> $SFILE
echo '[Desktop Entry]' >> $SFILE
echo "Name=$PC2TYPE" >> $SFILE
echo "Version=$PC2VERSION_NUM" >> $SFILE
echo 'Type=Application' >> $SFILE
echo 'Terminal=false' >> $SFILE
echo "Exec=$PC2NAME --ini $PC2_INSTALL_DIR/$PC2_VERSION/pc2v9.ini" >> $SFILE
echo "Path=$PC2_INSTALL_DIR/$PC2_VERSION" >> $SFILE
echo "Icon=$PC2_INSTALL_DIR/$PC2_VERSION/pc2.ico" >> $SFILE

# Set chmod and chown
chmod +x $SFILE
chown $USER_NAME $SFILE
