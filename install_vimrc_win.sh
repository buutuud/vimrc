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

bundle="~/.vim/bundle"

#extended.vim need molokai colorscheme
echo ""
echo "3.Install Molokai colorscheme"
if [[ -d ~/.vim/bundle/vim-colorschemes ]];then
	echo 'vim-colorschemes Alredy Install ....'
else
	git clone https://github.com/flazz/vim-colorschemes.git ~/.vim/bundle/vim-colorschemes
fi

if ! [ -d ~/.vim/bundle/vim-colorscheme-switcher ]; then
	git clone https://github.com/xolox/vim-colorscheme-switcher.git ~/.vim/bundle/vim-colorscheme-switcher
else
	echo 'vim-colorscheme-switcher Alredy Install ....'
fi



echo "OK..Installed the Ultimate Vim configuration successfully! Enjoy :-)"