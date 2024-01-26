inoremap jk <ESC>

" Control backspace to delete word
set backspace=indent,eol,start
imap <C-BS> <C-W>
noremap! <C-BS> <C-W>
noremap! <C-H> <C-W>

" unmapping for another program
map <C-.> <Nop>

" control s to save
noremap <silent> <C-S> :update<CR>
vnoremap <silent> <C-S> <C-C>:update<CR>
inoremap <silent> <C-S> <C-O>:update<CR>

" no status bar
set laststatus=0

set number
