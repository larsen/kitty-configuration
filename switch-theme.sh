#!/bin/bash

THEMES_DIR=~/.config/kitty/kitty-themes/themes/
THEME=$(ls -1 $THEMES_DIR | selecta)
THEME_CONF_FILE=~/.config/kitty/theme.conf

echo $THEME

rm $THEME_CONF_FILE
ln -s $THEMES_DIR/$THEME $THEME_CONF_FILE

kitten @ load-config
