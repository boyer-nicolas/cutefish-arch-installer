#!/bin/bash
set -e

sudo pacman -S cmake

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

###
# Settings
###
git clone git@github.com:cutefishos/settings.git $HOME/cutefish/settings
sudo pacman -S extra-cmake-modules qt5-base qt5-quickcontrols2 freetype2 fontconfig networkmanager-qt modemmanager-qt
cd $HOME/cutefish/settings
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ..
make
sudo make install

###
# FishUI
###
git clone git@github.com:cutefishos/fishui.git $HOME/cutefish/fishui
cd $HOME/cutefish/fishui
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ..
make
sudo make install

###
# File Manager
### 
git clone git@github.com:cutefishos/filemanager.git $HOME/cutefish/filemanager
sudo pacman -S extra-cmake-modules qt5-base qt5-quickcontrols2 taglib kio
cd $HOME/cutefish/filemanager
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ..
make
sudo make install

###
# Screenshot
###
git clone git@github.com:cutefishos/screenshot.git $HOME/cutefish/screenshot
sudo pacman -S extra-cmake-modules qt5-base qt5-quickcontrols2
cd $HOME/cutefish/screenshot
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ..
make
sudo make install

###
# Kwin Plugins
###
git clone git@github.com:cutefishos/kwin-plugins.git $HOME/cutefish/kwin-plugins
sudo pacman -S extra-cmake-modules qt5-base qt5-declarative kconfig kdecoration kguiaddons kcoreaddons kconfigwidgets kwindowsystem kwayland kwin
cd $HOME/cutefish/kwin-plugins
mkdir build
cd build
cmake ..
make
sudo make install

###
# Dock
###
git clone git@github.com:cutefishos/dock.git $HOME/cutefish/dock
sudo pacman -S gcc cmake qt5-base qt5-quickcontrols2 kwindowsystem
cd $HOME/cutefish/dock
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ..
make
sudo make install

###
# Core
###
git clone git@github.com:cutefishos/core.git
sudo pacman -S extra-cmake-modules pkgconf qt5-base qt5-quickcontrols2 qt5-x11extras qt5-tools\
    kwindowsystem polkit polkit-qt5 xorg-server-devel xf86-input-libinput xf86-input-synaptics
cd $HOME/cutefish/core
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ..
make
sudo make install

###
# Terminal
###
git clone git@github.com:cutefishos/terminal.git $HOME/cutefish/terminal
cd $HOME/cutefish/terminal
mkdir build
cd build
cmake ..
make 
sudo make install

###
# Screenlocker
###
git clone git@github.com:cutefishos/screenlocker.git $HOME/cutefish/screenlocker
cd $HOME/cutefish/screenlocker
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ..
make
sudo make install

###
# SDDM
###
git clone git@github.com:cutefishos/sddm-theme.git $HOME/cutefish/sddm-theme
cd $HOME/cutefish/sddm-theme
mkdir build
cd build
cmake .. 
make
sudo make install

###
# Text editor
###
git clone git@github.com:cutefishos/texteditor.git $HOME/cutefish/texteditor
cd $HOME/cutefish/texteditor
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ..
make
sudo make install

###
# AppMotor
###
git clone git@github.com:cutefishos/appmotor.git $HOME/cutefish/appmotor
cd $HOME/cutefish/appmotor
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ..
make
sudo make install

###
# Qt Plugins
###
git clone git@github.com:cutefishos/qt-plugins.git $HOME/cutefish/qt-plugins
sudo pacman -S gcc extra-cmake-modules qt5-base qt5-tools qt5-x11extras libqtxdg libdbusmenu-qt5 libxcb
cd $HOME/cutefish/qt-plugins
mkdir build
cd build
cmake ..
make
sudo make install

###
# GTK Themes
###
git clone git@github.com:cutefishos/gtk-themes.git $HOME/cutefish/gtk-themes
cd $HOME/cutefish/gtk-themes
mkdir build
cd build 
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ..
make
sudo make install

###
# Libcutefish
###
git clone git@github.com:cutefishos/libcutefish.git $HOME/cutefish/libcutefish
sudo pacman -S gcc cmake qt5-base qt5-quickcontrols2 networkmanager-qt modemmanager-qt
cd $HOME/cutefish/libcutefish
mkdir build
cd build
cmake ..
make
sudo make install

###
# Cursor Themes
###
git clone git@github.com:cutefishos/cursor-themes.git $HOME/cutefish/cursor-themes

###
# Calculator
###
git clone git@github.com:cutefishos/calculator.git $HOME/cutefish/calculator
cd $HOME/cutefish/calculator
mkdir build
cd build
cmake .. 
make
sudo make install

###
# Video Player
###
git clone git@github.com:cutefishos/videoplayer.git $HOME/cutefish/videoplayer
cd $HOME/cutefish/videoplayer
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ..
make
sudo make install

###
# Plymouth background
###
git clone git@github.com:cutefishos/plymouth-theme.git $HOME/cutefish/plymouth-theme

###
# Wallpapers
###
git clone git@github.com:cutefishos/wallpapers.git $HOME/cutefish/wallpapers