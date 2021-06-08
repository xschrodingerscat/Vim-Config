""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off " required
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim

call plug#begin('~/.vim/plugged')
Plug '/usr/local/bin/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'mileszs/ack.vim'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'puremourning/vimspector'
Plug 'kshenoy/vim-signature'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

call vundle#rc()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'a.vim'
"call vundle#end()            


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype indent on
filetype plugin on
filetype plugin indent on " required
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"colorscheme peachpuff
"colorscheme delek
colorscheme gotham256
"
"colorscheme paramount
"
"set background=dark
"set termguicolors

"colorscheme Mogao 
"colorscheme goodwolf
"colorscheme identity
"colorscheme panic
"colorscheme hackerman
"colorscheme gardener
"colorscheme medic_chalk
"colorscheme serape
"colorscheme badwolf
"colorscheme codeschool
"colorscheme typewriter-night
"colorscheme iceberg
"colorscheme srcery
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax on
set encoding=utf-8
set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set cindent " use c\c++ indent style
set autoindent
set history=96
set noundofile
set nobackup
set noswapfile
set backspace=2
set ignorecase
set hlsearch
set incsearch
set showcmd
set autoread
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2
set completeopt=menuone,longest
set gcr=a:block-blinkon0
set cursorline
set cursorcolumn


let mapleader=","
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -- airline options
set laststatus=2
set t_Co=256
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline_theme='tomorrow' " luna
let g:airline#extensions#tabline#buffer_nr_show = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" -- tagbar options
let g:tagbar_autoclose = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" -- nerdtree options
let NERDTreeWinSize=30
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeIgnore=['\.DS_Store$', '\.swp', '\.out', '\tags']
"let NERDTreeWinPos="right"

"""""""""""""""""""""""""""""""""""""""""""""""""""""
"-- easymotion options
let g:EasyMotion_smartcase = 1
map <Leader><leader>h <Plug>(easymotion-linebackward)
map <Leader><leader>l <Plug>(easymotion-lineforward)
map <Leader><leader>. <Plug>(easymotion-repeat)
map <Leader><Leader>L <Plug>(easymotion-bd-jk)
map <Leader><Leader>w <Plug>(easymotion-bd-w)
"map <Leader><Leader>j <Plug>(easymotion-j)
"map <Leader><Leader>k <Plug>(easymotion-k)
"let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"-- vimspector
let g:vimspector_enable_mappings = 'VISUAL_STUDIO'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -- YouCompleteMe
"let g:ycm_key_list_select_completion=['<c-n>']
"let g:ycm_key_list_previous_completion=['<c-p>']


"let g:ycm_semantic_triggers =  {
  "\   'c, cpp, cc': ['re!\w{2}'],
  "\ }

let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示
let g:ycm_collect_identifiers_from_tags_files=1 " 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion=2 " 从第1个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0 " 禁止缓存匹配项,每次都重新生成匹配项

let g:ycm_seed_identifiers_with_syntax=1 " 语法关键字补全
 nnoremap <F5> :YcmForceCompileAndDiagnostics<CR> "force recomile with syntastic
"nnoremap <leader>lo :lopen<CR> "open locationlist
"nnoremap <leader>lc :lclose<CR>    "close locationlist

"inoremap <leader><leader> <C-x><C-o>
let g:ycm_complete_in_comments = 1 "在注释输入中也能补全
let g:ycm_complete_in_strings = 1 "在字符串输入中也能补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0 "注释和字符串中的文字也会被收入补全

let g:ycm_max_num_identifier_candidates = 24
let g:ycm_auto_trigger = 1

let g:ycm_error_symbol = '✗'
let g:ycm_warning_symbol = '⚠'

nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -- UltiSnips
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<leader><tab>"

" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsExpandTrigger="<leader><tab>"

let g:UltiSnipsExpandTrigger="<c-l>"
" let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
"let g:UltiSnipsJumpBackwardTrgger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsListSnippets="<c-e>"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -- plugin key

map <silent> <leader>ss :source ~/.vimrc<cr>
map <silent> <leader>ee :e ~/.vimrc<cr>
nmap <silent> <leader>bl :TagbarOpen<CR>
nmap <silent> <Leader>fl :NERDTreeToggle<CR>

" -- fzf 
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>ag :Ag<CR>
nnoremap <Leader>mk :Marks<CR>

" -- Ctrl + X
nmap <Esc>[D :MBEbp<CR>
nmap <Esc>[C :MBEbn<CR>
nmap <C-n> :cnext<CR>
nmap <C-p> :cprev<CR>
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -- tmux

if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
