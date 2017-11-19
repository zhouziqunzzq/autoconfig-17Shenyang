#!/bin/bash
# Creator: Bittersweet NEUACM
# Time:    2017/10/19 20:55

source ../etc/env_config

# Unzip openjdk-8
tar -xvzf ../tar/jdk* -C $JDK_INSTALL_DIR

# Set ENV for JDK
echo "export JAVA_HOME=$JDK_INSTALL_DIR/$JDK_VERSION" >> /etc/profile
echo "export JRE_HOME=$JDK_INSTALL_DIR/$JDK_VERSION" >> /etc/profile
