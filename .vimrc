syntax on

"set background=dark 
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set autoindent

set number
set relativenumber

set showcmd
filetype indent on

"状态栏
set laststatus=2

set cursorline
"set cursorcolumn

set wrap
set linebreak
set wrapmargin=2

" 搜索设置
set hlsearch
set incsearch
set ignorecase

" 设置文件历史记录
set undofile
set backupdir=~/.vim/.backup/
set directory=~/.vim/.swp/
set undodir=~/.vim/.undo/

" 自动切换工作目录到正在编辑的文件目录
set autochdir

" 出错时，不要发出响声
set visualbell

" vim历史记录
set history=1000

" 打开文件监视
set autoread

" 命令使用tab提示
set wildmenu
set wildmode=longest:list,full


call plug#begin('~/.vim/plugged')

Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'w0ng/vim-hybrid'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'fatih/vim-go', { 'do':':GoUpdateBinaries' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jlanzarotta/bufexplorer'
Plug 'scrooloose/nerdtree'
Plug 'flazz/vim-colorschemes'

call plug#end()

" BufExplorer Settings
map <C-H> :BufExplorer<CR>

" NERD Tree Settings
map <C-K> :NERDTreeToggle<CR>
autocmd VimEnter * NERDTree :NERDTreeToggle
