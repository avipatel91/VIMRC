execute pathogen#infect()

syntax on
set background=dark
colorscheme solarized

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

let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'
let g:syntastic_mode_map = { 'passive_filetypes': ['javascript', 'html'] }
"" let b:syntastic_mode="passive"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"" leader key
let mapleader=","

" indent size and colors
let g:indent_guides_guide_size = 1

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=055
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=070

" au VimEnter *  NERDTree

" NERDTree, Use F3 for toggle NERDTree
nmap <silent> <F3> :NERDTreeToggle<CR>
