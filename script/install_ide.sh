#!/bin/bash
# Creator: Bittersweet NEUACM
# Time:    2017/10/19 22:20

source ../etc/env_config

# Copy debs to /tmp
cp -r -f ../debs /tmp

# Edit sources.list
mv /etc/apt/sources.list /etc/apt/sources.list.bak
touch /etc/apt/sources.list
echo 'deb file:/tmp debs/' > /etc/apt/sources.list

# Perform update
apt-get update

# Install gcc g++ vim emacs codeblocks
apt-get install gcc g++ vim emacs codeblocks codeblocks-contrib --force-yes --yes

# Install eclipse for java
tar -xvzf ../tar/eclipse-java* -C $ECLIPSE_INSTALL_DIR
mv $ECLIPSE_INSTALL_DIR/eclipse $ECLIPSE_INSTALL_DIR/eclipse-java

# Install eclipse for c/c++
tar -xvzf ../tar/eclipse-cpp* -C $ECLIPSE_INSTALL_DIR
mv $ECLIPSE_INSTALL_DIR/eclipse $ECLIPSE_INSTALL_DIR/eclipse-cpp
