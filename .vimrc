set nocompatible
filetype off  

"set rtp+=~/.vim/bundle/Vundle.vim

"call vundle#begin()

call plug#begin('~/.vim/plugged')

filetype plugin indent on     " обязательно!

"Plug 'VundleVim/Vundle.vim' 
Plug 'KabbAmine/zeavim.vim', {'on': ['Zeavim', '<Plug>Zeavim', '<Plug>ZVVisSelection', '<Plug>ZVKeyDocset', '<Plug>ZVMotion']}
Plug 'junegunn/vim-easy-align', {'on': 'EasyAlign'}
Plug 'Valloric/YouCompleteMe', {'do': './install.py --clang-completer'}
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle' }
Plug 'altercation/vim-colors-solarized'
Plug 'reedes/vim-thematic'
Plug 'lyokha/vim-xkbswitch'
Plug 'kana/vim-arpeggio'
Plug 'majutsushi/tagbar', {'on': 'Tagbar'} 
Plug 'fisadev/FixedTaskList.vim', {'on': 'TaskList' }
Plug 'lervag/vimtex', { 'for': 'tex'} 
Plug 'benekastah/neomake'
"Plug 'rdnetto/YCM-Generator'
Plug 'Chiel92/vim-autoformat', {'on': 'Autoformat'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'octol/vim-cpp-enhanced-highlight', {'for': ['cpp', 'h', 'hpp', 'hh', 'cc', 'cxx']}
Plug 'scrooloose/nerdcommenter', {'on': 'NERDComComment'}
Plug 'tpope/vim-surround'
Plug 'sjl/gundo.vim', {'on': 'GundoToggle'}
Plug 'ctrlpvim/ctrlp.vim', {'on': 'CtrlP'}



call plug#end()
"call vundle#end()

"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup

call arpeggio#load()

Arpeggio snoremap jk <ESC>
Arpeggio inoremap jk <ESC>
Arpeggio cmap jk <C-c>
Arpeggio inoremap ол <ESC>

syntax on
filetype indent on
set tabstop=8
set expandtab
set softtabstop=0
set shiftwidth=4
set textwidth=78
set formatoptions+=t
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
let mapleader=" "
let maplocalleader="//"
nnoremap <leader>w :w<CR>
nnoremap <leader>nt :NERDTree<CR>
nnoremap <leader>tb :Tagbar<CR>
nnoremap <leader>tl :TaskList<CR>
nnoremap <leader>n :noh<CR>

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

map <F9> :w<CR>:make<CR>

let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1

nnoremap <C-J> <C-W>
set showcmd
"highlight lCursor guifg=None guibg=Cyan
set background=dark
"let g:solarized_termcolors=256
let g:solarized_termtrans = 1
colorscheme solarized
let g:XkbSwitchEnabled = 1
let g:XkbSwitchMappings = ['ru']
set guifont=Dejavu\ Sans\ Mono\ for\ Powerline\ 11 

let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_confirm_extra_conf = 0

  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_powerline_fonts=1
let g:airline_inactive_collapse=1
let g:airline_theme='solarized'
let g:airline_section_error=1

let g:NERDSpaceDelims=1
let g:NERDCompactSexyComs=1

let g:neomake_make_maker = {
            \ 'exe': 'tex', 
            \ 'args': ['latexmk -pdf'],
            \ 'errorformat': '%f:%l:%c: %m',
            \ }

"maker for tex
autocmd Filetype tex setlocal makeprg=latexmk\ -pdf 

set nu
set hlsearch
"set relativenumber
