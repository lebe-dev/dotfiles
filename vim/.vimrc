let mapleader=","

" restore cursor last position
set viminfo='10,\"100,:20,%,n~/.viminfo

set number

syntax enable

" autocomplete for menu, i.e. :e REA<Tab> will suggest README.md
set wildmenu

" redraw screen only neccessary
"set lazyredraw

" highlight matches in text
set showmatch

set showcmd

" SESSIONS
nnoremap <leader>s :mksession!<CR>

" SEARCH
set incsearch
set hlsearch

" TABS
filetype plugin indent on
set tabstop=4
set expandtab

set encoding=UTF-8

"#############################################
" HOTKEYS
"#############################################

" Tabs
nnoremap <A-Left> :tabprevious<CR>
nnoremap <A-Right> :tabnext<CR>

" NERDTree
" - alt+1
execute "set <M-1>=\e1"
nnoremap <M-1> :NERDTreeToggle<CR>

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror

" TagBar
nmap <F8> :TagbarOpen fjc<CR>

" Tab + Shift+Tab behaviour
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Windows Navigation
nnoremap <C-L> <C-W>l
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-H> <C-W>h

"#############################################
" PLUGINS
"#############################################

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:rainbow_active = 1

" Lightline
set laststatus=2
if !has('gui_running')
    set t_Co=256
endif

" Rust
" Do rustfmt on save
let g:rustfmt_autosave = 1

if executable('rls')
    au User lsp_setup call lsp#register_server({
	            \ 'name': 'rls',
	            \ 'cmd': {server_info->['rustup', 'run', 'nightly', 'rls']},
	            \ 'whitelist': ['rust'],
	            \ })
endif

"=======================================
" VIM-PLUG
"---------------------------------------
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

Plug 'rust-lang/rust.vim'

Plug 'preservim/tagbar'

" DEVELOPMENT
Plug 'vim-syntastic/syntastic'
Plug 'luochen1990/rainbow'
Plug 'itchyny/lightline.vim'
Plug 'elzr/vim-json'

" RUST
Plug 'rust-lang/rust.vim'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

call plug#end()
