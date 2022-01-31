#!/bin/bash
set -e

###
# Icons
###
git clone git@github.com:cutefishos/icons.git $HOME/cutefish/icons
cd $HOME/cutefish/icons
mkdir build
cd build
cmake ..
sudo make install

###
# Updator
###
git clone git@github.com:cutefishos/updator.git $HOME/cutefish/updator
cd $HOME/cutefish/updator
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ..
make
sudo make install

###
# Launcher
###
git@github.com:cutefishos/launcher.git $HOME/cutefish/launcher
sudo pacman -S gcc cmake qt5-base qt5-quickcontrols2 kwindowsystem
cd $HOME/cutefish/launcher
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ..
make
sudo make install

###
# Statusbar
###
git clone git@github.com:cutefishos/statusbar.git $HOME/cutefish/statusbar
cd $HOME/cutefish/statusbar
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ..
make
sudo make install

###
# Daemon
###
git clone git@github.com:cutefishos/daemon.git $HOME/cutefish/daemon
cd $HOME/cutefish/daemon
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ..
make
sudo make install
