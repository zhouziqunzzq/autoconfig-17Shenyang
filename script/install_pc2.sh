#!/bin/bash
# Creator: Bittersweet NEUACM
# Time:    2017/10/19 21:32

source ../etc/env_config

# Unzip PC^2-9.5.2
tar -xvzf ../tar/pc2* -C $PC2_INSTALL_DIR

# Config PC^2
cp -f ../etc/pc2v9.ini $PC2_INSTALL_DIR/$PC2_VERSION

# Set ENV for PC^2
echo "export PC2_HOME=$PC2_INSTALL_DIR/$PC2_VERSION" >> /etc/profile

# Set PC^2 DIR owner
chown -R $USER_NAME $PC2_INSTALL_DIR
