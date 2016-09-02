"split window
map <c-\> :vsplit<cr><c-w>l
map <c-_> :split<cr><c-w>j
inoremap <A-Enter> Alt-Enter 
"close menu bar
"set guioptions-=m

" menu bar setting
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" let language is chinese
language messages zh_CN.utf-8

" open vim with max window
au GUIEnter * simalt ~x

" .m replace postion with clipborad
nmap <leader>1 df"h"+pa"
nmap <leader>2 df"ha{{0,0},{0,0}"
nmap <leader>3 oBundle '<esc>"+pa'<esc>
nmap <leader>r :so %<cr>

"copy word under cursor
nmap mw <esc>yiw
nmap mp <esc>viwp
nmap me <esc>y$
nmap <leader><F1> :redir! > ~/.vim_runtime/vim_key.txt<cr>:silent verbose map<cr>:redir END<cr>
nmap <leader><F2> :e ~/.vim_runtime/vim_key.txt<cr>

"donn't save viminfo file
set viminfo='0,:0,<0,@0,f0

"disable f1
nmap <F1> :echo<CR>

"auto change dir
set autochdir

"not show vim tips
set shortmess=atI       

"python setting
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab  

"replace word under cursor global
"<C-r><C-w> = cursor under word
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/
