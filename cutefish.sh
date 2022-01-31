#!/bin/bash
set -e

sudo pacman -S cmake

###
# Icons
###
[ -d $HOME/cutefish/icons ] && rm -rf $HOME/cutefish/icons
git clone git@github.com:cutefishos/icons.git $HOME/cutefish/icons
cd $HOME/cutefish/icons
mkdir build
cd build
cmake ..
sudo make install

###
# Updator
###
[ -d $HOME/cutefish/updator ] && rm -rf $HOME/cutefish/updator
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
[ -d $HOME/cutefish/launcher ] && rm -rf $HOME/cutefish/launcher
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
[ -d $HOME/cutefish/statusbar ] && rm -rf $HOME/cutefish/statusbar
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
[ -d $HOME/cutefish/daemon ] && rm -rf $HOME/cutefish/daemon
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
[ -d $HOME/cutefish/settings ] && rm -rf $HOME/cutefish/settings
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
[ -d $HOME/cutefish/fishui ] && rm -rf $HOME/cutefish/fishui
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
[ -d $HOME/cutefish/filemanager ] && rm -rf $HOME/cutefish/filemanager
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
[ -d $HOME/cutefish/screenshot ] && rm -rf $HOME/cutefish/screenshot
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
[ -d $HOME/cutefish/kwin-plugins ] && rm -rf $HOME/cutefish/kwin-plugins
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
[ -d $HOME/cutefish/dock ] && rm -rf $HOME/cutefish/dock
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
[ -d $HOME/cutefish/core ] && rm -rf $HOME/cutefish/core
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
[ -d $HOME/cutefish/terminal ] && rm -rf $HOME/cutefish/terminal
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
[ -d $HOME/cutefish/screenlocker ] && rm -rf $HOME/cutefish/screenlocker
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
[ -d $HOME/cutefish/sddm-theme ] && rm -rf $HOME/cutefish/sddm-theme
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
[ -d $HOME/cutefish/texteditor ] && rm -rf $HOME/cutefish/texteditor
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
[ -d $HOME/cutefish/appmotor ] && rm -rf $HOME/cutefish/appmotor
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
[ -d $HOME/cutefish/qt-plugins ] && rm -rf $HOME/cutefish/qt-plugins
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
[ -d $HOME/cutefish/gtk-themes ] && rm -rf $HOME/cutefish/gtk-themes
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
[ -d $HOME/cutefish/libcutefish ] && rm -rf $HOME/cutefish/libcutefish
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
[ -d $HOME/cutefish/cursor-themes ] && rm -rf $HOME/cutefish/cursor-themes
git clone git@github.com:cutefishos/cursor-themes.git $HOME/cutefish/cursor-themes

###
# Calculator
###
[ -d $HOME/cutefish/calculator ] && rm -rf $HOME/cutefish/calculator
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
[ -d $HOME/cutefish/videoplayer ] && rm -rf $HOME/cutefish/videoplayer
git clone git@github.com:cutefishos/videoplayer.git $HOME/cutefish/videoplayer
cd $HOME/cutefish/videoplayer
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ..
make
sudo make install

###
# Plymouth theme
###
[ -d $HOME/cutefish/plymouth-theme ] && rm -rf $HOME/cutefish/plymouth-theme
git clone git@github.com:cutefishos/plymouth-theme.git $HOME/cutefish/plymouth-theme

###
# Wallpapers
###
[ -d $HOME/cutefish/wallpapers ] && rm -rf $HOME/cutefish/wallpapers
git clone git@github.com:cutefishos/wallpapers.git $HOME/cutefish/wallpapers