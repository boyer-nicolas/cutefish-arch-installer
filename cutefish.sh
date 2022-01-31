#!/bin/bash
set -e

# sudo pacman -S --needed cmake yay gcc qt5-base qt5-quickcontrols2 kwindowsystem extra-cmake-modules qt5-base freetype2 fontconfig networkmanager-qt modemmanager-qt taglib kio qt5-declarative kconfig kdecoration kguiaddons kcoreaddons kconfigwidgets kwayland kwin pkgconf polkit polkit-qt5 xorg-server-devel xf86-input-libinput xf86-input-synaptics qt5-tools qt5-x11extras libqtxdg libdbusmenu-qt5 libxcb
# yay -S --norebuild qt5 qtutilities libnm-git gio-sharp dbus glib

build_dir() {
    echo
    echo "Building $1 ..."
    echo
    if [ ! -d "build" ]; then
        mkdir build
    fi
    cd build
}

clone() {
    FOLDER=$HOME/cutefish/$1
    GIT_URL=git@github.com:cutefishos/$1.git

    if [ ! -d $FOLDER ]; then
        echo
        echo "Cloning $1 in $FOLDER ..."
        echo
        git clone $GIT_URL $FOLDER
        cd $FOLDER
        build_dir $1
    elif [[ -d $FOLDER && ! -d $FOLDER/.git ]]; then
        echo
        echo "Removing $FOLDER ..."
        rm -rf $FOLDER
        echo "Cloning $1 in $FOLDER ..."
        echo
        git clone $GIT_URL $FOLDER
        cd $FOLDER
        build_dir $1
    else
        cd $FOLDER
        build_dir $1
    fi
}

cmakeClassic() {
    cmake ..
}

cmakePath() {
    cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ..
}

install() {
    make
    sudo make install
}

###
# Icons
###
clone icons
cmakeClassic
install

###
# Launcher
###
clone launcher
cmakePath
install

###
# Statusbar
###
clone statusbar
cmakePath
install

###
# Settings
###
clone settings
cmakePath
install

###
# FishUI
###
clone fishui
cmakePath
install

###
# File Manager
###
clone filemanager
cmakePath
install

###
# Screenshot
###
clone screenshot
cmakePath
install

###
# Kwin Plugins
###
clone kwin-plugins
cmakeClassic
install

###
# Dock
###
clone dock
cmakePath
install

###
# Core
###
clone core.git
cmakePath
install

###
# Terminal
###
clone terminal
cmakeClassic
install

###
# Screenlocker
###
clone screenlocker
cmakePath
install

###
# SDDM
###
clone sddm-theme-theme
cmakeClassic
install

###
# Text editor
###
clone texteditor
cmakePath
install

###
# AppMotor
###
clone appmotor
cmakePath
install

###
# Qt Plugins
###
clone qt-plugins
cmakeClassic
install

###
# GTK Themes
###
clone gtk-themes
cmakePath
install

###
# Libcutefish
###
clone libcutefish
cmakeClassic
install

###
# Cursor Themes
###
clone cursor-themes

###
# Calculator
###
clone calculator
cmakeClassic
install

###
# Video Player
###
clone videoplayer
cmakePath
install

###
# Plymouth theme
###
clone plymouth-theme

###
# Wallpapers
###
clone wallpapers
