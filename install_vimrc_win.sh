cat .vimrc > ~/.vimrc
echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
if [[ -d $WINDIR ]]; then
    echo "You VIM PlatForm Is Windows! Enjoy"
    if [[ -d ./plugins_w ]]; then
    	cp ./plugins_w/* $WINDIR
    	echo "Install ctags plugin to $WINDIR ..."
    fi
fi

