call histadd("cmd","load ".expand('<sfile>:t:r')."...")
""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_map = ',,'
let g:ctrlp_working_path_mode = 'rc'
let g:ctrlp_root_markers = ['.root','.git']

let g:ctrlp_max_height = 20
"let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee|^Obj|^List'
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\v[\/]\.(git|hg|svn)$',
            \ 'file': '\v\.(exe|so|dll|png|plist|txt|mp3|pdb|ccbi|fnt|ttf|tmx|ilk|manifest)$',
            \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
            \ }
nmap <silent> <leader><F5> :ClearAllCtrlPCaches<CR>
