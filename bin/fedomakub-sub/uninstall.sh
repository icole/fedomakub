UNINSTALLER=$(gum file $FEDOMAKUB_PATH/uninstall --height 26)
[ -n "$UNINSTALLER" ] && gum confirm "Run uninstaller?" && source $UNINSTALLER && gum spin --spinner globe --title "Uninstall completed!" -- sleep 3
clear
source $FEDOMAKUB_PATH/bin/fedomakub
