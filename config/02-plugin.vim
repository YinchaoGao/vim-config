call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <F2> :NERDTreeToggle<CR>

Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

Plug 'junegunn/vim-easy-align'
map <leader>ga <Plug>(EasyAlign)

Plug 'editorconfig/editorconfig-vim'

Plug 'sbdchd/neoformat'
map <C-S-I> :Neoformat<CR>

Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'

Plug 'mattn/emmet-vim'

Plug 'jiangmiao/auto-pairs'

Plug 'scrooloose/nerdcommenter'

Plug 'majutsushi/tagbar'
map <F3> :TagbarToggle<CR>

Plug 'airblade/vim-gitgutter'

Plug 'terryma/vim-multiple-cursors'

Plug 'tpope/vim-fugitive'

Plug 'plasticboy/vim-markdown'

call plug#end()
