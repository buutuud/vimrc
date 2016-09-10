set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
function! s:Configuration(path)
    if filereadable(simplify(expand('~/.vim_runtime/vimrcs' . '/' . a:path, 1)))
        execute
                    \ ':source'
                    \ simplify(expand('~/.vim_runtime/vimrcs' . '/' . a:path, 1))
    endif
endfunction

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

""""""""""""""""""""""""""""""
" => ctrl-p
""""""""""""""""""""""""""""""
Bundle 'https://github.com/kien/ctrlp.vim.git'
call s:Configuration('ctrlprc.vim')

"http://vimawesome.com/plugin/vim-airline
Plugin 'bling/vim-airline'
"rc
let g:airline#extensions#tabline#enabled = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'scrooloose/nerdtree'
call histadd("cmd","load ".expand('<sfile>:t:r')."...")
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark 
map <leader>nf :NERDTreeFind<cr>

Plugin 'rking/ag.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Git
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'tpope/vim-fugitive'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Vim plugin that displays tags in a window, ordered by scope
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'majutsushi/tagbar'
nnoremap <leader>] :TagbarToggle<CR>
nnoremap <silent><F10> :TagbarToggle<CR>

Plugin 'taglist.vim'
Plugin 'szw/vim-tags'
"nnoremap <silent><F10> :TlistToggle<CR>
let Tlist_Show_One_File=0                    " 只显示当前文件的tags
let Tlist_Exit_OnlyWindow=1                  " 如果Taglist窗口是最后一个窗口则退出Vim
let Tlist_Use_Right_Window=0                 " 在右侧窗口中显示
let Tlist_File_Fold_Auto_Close=1             " 自动折叠
:set tags=tags;/

Plugin 'FuzzyFinder'
nnoremap <leader>f :FufFile<CR> 

""""""""""""""""""""""""""""""
" => colorscheme
""""""""""""""""""""""""""""""
Plugin 'ludovicchabant/vim-gutentags'
nnoremap <F9> :GutentagsUpdate<CR>


Plugin 'derekwyatt/vim-fswitch' 
map <leader>o :FSSplitRight<CR>


" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"-------------
"This plug-in provides automatic closing of quotes, parenthesis, brackets, etc., 
Plugin 'raimondi/delimitmate'

"------
Plugin 'Shougo/vimfiler.vim'

"------
Plugin 'tyru/restart.vim'

"------
Plugin 'ervandew/supertab'

""""""""""""""""""""""""""""""
" => colorscheme
""""""""""""""""""""""""""""""
Plugin 'https://github.com/xolox/vim-misc.git'
Plugin 'https://github.com/vim-scripts/vim-colorscheme-switcher.git'
Plugin 'flazz/vim-colorschemes'



"Plugin 'Shougo/neocomplete.vim'
"call s:Configuration('neocomplete.rc.vim')


Plugin 'ervandew/supertab'
let g:SuperTabDefaultCompletionType = "<c-n>"










































































" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
