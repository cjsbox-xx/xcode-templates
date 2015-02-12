#!/bin/bash

BTN_TEMPLATES_DIR="$HOME/.button/XcodeTemplates"
XCODE_TEMPLATES_DIR="$HOME/Library/Developer/Xcode/Templates/"

if [ $EUID != 0 ]; then
    sudo "$0" "$@"
    exit $?
fi

if [ ! -d "$BTN_TEMPLATES_DIR" ]; then
  mkdir -p "$BTN_TEMPLATES_DIR"
fi

cp -R ./  "$BTN_TEMPLATES_DIR/"

echo "Installing Xcode templates..."

cd "$XCODE_TEMPLATES_DIR"

if [ ! -L "Button" ]; then
  ln -s "$BTN_TEMPLATES_DIR/Button"
fi

echo "[√] Templates installed. Relaunch Xcode."

