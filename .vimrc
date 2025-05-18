inoremap jk <ESC>

" control backspace to delete word
set backspace=indent,eol,start
imap <C-BS> <C-W>
noremap! <C-BS> <C-W>
noremap! <C-H> <C-W>

" move lines up and down with alt-u and alt-i
nnoremap <A-u> :m .+1<CR>==
nnoremap <A-i> :m .-2<CR>==
inoremap <A-u> <Esc>:m .+1<CR>==gi
inoremap <A-i> <Esc>:m .-2<CR>==gi
vnoremap <A-u> :m '>+1<CR>gv=gv
vnoremap <A-i> :m '<-2<CR>gv=gv

" unmapping for vscode
map <C-.> <Nop>

" control s to save
noremap <silent> <C-S> :update<CR>
vnoremap <silent> <C-S> <C-C>:update<CR>
inoremap <silent> <C-S> <C-O>:update<CR>

" no status bar
set laststatus=0

" line numbers
set number
