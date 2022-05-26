" Install vundle
" Install dracula
packadd! dracula
syntax on 
colorscheme dracula

set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'othree/html5.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'preservim/nerdtree'
Plugin 'alvan/vim-closetag'
Plugin 'AndrewRadev/tagalong.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-surround'
Plugin 'othree/csscomplete.vim'
"Plugin 'Townk/vim-autoclose'
Plugin 'tpope/vim-dispatch' 
Plugin 'Shougo/vimproc.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'python-mode/python-mode'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'christoomey/vim-system-copy'
Plugin 'puremourning/vimspector'
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
let g:vimspector_enable_mappings = 'HUMAN'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_filetypes = 'html,xhtml,phtml,php'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.php'
"let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
"let g:ycm_confirm_extra_conf=0
"let g:ycm_python_binary_path='/usr/bin/python3'
let php_highlight_all = 1
let g:jedi#auto_initialization = 1
let g:jedi#popup_on_dot = 1
let g:jedi#popup_select_first = 0
let g:pymode = 1
let g:pymode_warnings = 1
let g:pymode_indent = 1
let g:pymode_rope_completion = 1

" Настройки табов для Python, согласно рекоммендациям
set tabstop=4 
set shiftwidth=4
set smarttab
set expandtab "Ставим табы пробелами
set softtabstop=4 "4 пробела в табе
" Автоотступ
set autoindent
" Подсвечиваем все что можно подсвечивать
" Включаем 256 цветов в терминале, мы ведь работаем из иксов?
" Нужно во многих терминалах, например в gnome-terminal
set t_Co=256

" В .py файлах включаем умные отступы после ключевых слов
autocmd BufRead *.php set smartindent cinwords=if,elif,else,for,while,try,except,finally,foreach,class
" Start NERDTree and leave the cursor in it.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS noci
autocmd VimEnter * NERDTree
syntax on "Включить подсветку синтаксиса

set completeopt=menuone,noinsert
set nu "Включаем нумерацию строк
set mousehide "Спрятать курсор мыши когда набираем текст
set mouse=a "Включить поддержку мыши
set termencoding=utf-8 "Кодировка терминала
set novisualbell "Не мигать 
set t_vb= "Не пищать! (Опции 'не портить текст', к сожалению, нету)
" Удобное поведение backspace
set backspace=indent,eol,start whichwrap+=<,>,[,]
" Вырубаем черточки на табах
set showtabline=1

" Переносим на другую строчку, разрываем строки
set wrap
set linebreak

" Вырубаем .swp и ~ (резервные) файлы
set nobackup
set noswapfile
set encoding=utf-8 " Кодировка файлов по умолчанию
set fileencodings=utf8,cp1251

set ruler

set hidden

" Выключаем звук в Vim
set visualbell t_vb=

  " Press Ctrl-Tab to switch between open tabs (like browser tabs) to 
  " the right side. Ctrl-Shift-Tab goes the other way.
  noremap <C-Tab> :tabnext<CT>
  noremap <C-S-Tab> :tabprev<CT>

  " Switch to specific tab numbers with Command-number
  noremap <D-1> :tabn 1<CT>
  noremap <D-2> :tabn 2<CT>
  noremap <D-3> :tabn 3<CT>
  noremap <D-4> :tabn 4<CT>
  noremap <D-5> :tabn 5<CT>
  noremap <D-6> :tabn 6<CT>
  noremap <D-7> :tabn 7<CT>
  noremap <D-8> :tabn 8<CT>
  noremap <D-9> :tabn 9<CT>
  " Command-0 goes to the last tab
  noremap <D-0> :tablast<CT>


colorscheme dracula 
noremap ; l
noremap l k
noremap k j
noremap j h
inoremap jj <ESC>
noremap fj  <C-w>h
noremap fk  <C-w>j
noremap fl  <C-w>k
noremap f;  <C-w>l
noremap fn  <C-w>n 
noremap fq  <C-w>q
noremap hh ^
noremap '' g_
inoremap <expr> <Tab> pumvisible() ? '<C-n>' :                                                                                                                    
\ getline('.')[col('.')-2] =~# '[[:alnum:].-_#$]' ? '<C-x><C-o>' : '<Tab>'
noremap , b
noremap . w
set clipboard=unnamedplus
