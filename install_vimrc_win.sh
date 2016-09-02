if [[ -d $WINDIR ]]; then
	echo "You VIM PlatForm Is Windows! Enjoy"
fi

echo ""
echo "1.Cat .Vimrc To ~/.vimrc"
cat .vimrc > ~/.vimrc
if [[ -d $WINDIR ]]; then
    if [[ -d ./plugins_w ]]; then
    	cp ./plugins_w/* $WINDIR
    	plugins=`ls -C ./plugins_w | head`	#ls 单行输出
    	echo "Install $plugins to $WINDIR ..."
    fi
fi

echo ""
echo "2.Git Clone VBundle To .Vim Dir"
VundlePlugin='~/.vim/bundle/Vundle.vim'
if [ -d  $VundlePlguin]
then
	echo "VBundle Alredy Install ...."
else
	git clone https://github.com/VundleVim/Vundle.vim.git $VundlePlguin
fi

echo "OK..Installed the Ultimate Vim configuration successfully! Enjoy :-)"