execute pathogen#infect()

syntax on
let g:hybrid_custom_term_colors = 1
" let g:hybrid_reduced_contrast = 1 " Remove this line if using the default palette.
set background=dark
colorscheme hybrid

set mouse=n
set ttymouse=xterm2
set number

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab


set runtimepath^=~/.vim/bundle/ctrlp.vim

"" To show the trailing white spaces
set list
set listchars=tab:>.,trail:_,extends:#,nbsp:.
highlight SpecialKey term=standout ctermbg=red guibg=yellow

" Syntastic stuff

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

