#!/bin/bash
# Creator: Bittersweet NEUACM
# Time:    2017/10/20 18:54

source ../etc/env_config
source clean_up.sh
source install_jdk.sh
source install_pc2.sh
source set_path.sh
chmod +x create_pc2_shortcut.sh
./create_pc2_shortcut.sh PC2Team
source install_ide.sh
cp -f ../shortcut/* $HOME_BASE/Desktop
chmod 777 $HOME_BASE/Desktop/*
