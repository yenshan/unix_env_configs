call plug#begin('~/.local/share/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'folke/tokyonight.nvim', {'branch': 'main'}
Plug 'itchyny/lightline.vim'
Plug 'autozimu/LanguageClient-neovim',{'branch': 'next', 'do':'bash install.sh'}
call plug#end()

"" ---------------------------------------------------------
"" Settings
"" ---------------------------------------------------------
" Switch syntax highlighting on
syntax on

" Show line numbers
set number

" C indent setting
set cindent
set cinoptions+=:0 "Change indent rule of 'case' statement

" Tab width, no expand to space 
set tabstop=4 shiftwidth=4 expandtab

" Highlight search word, increamental hightlight
set hlsearch
set incsearch

autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost	   l* nested lwindow

" show buffer directly
map <C-b> :ls<CR>:buf

set clipboard=unnamed

" Configure for lightline
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

"
"" --------------------------------------------
"" key bidings
"" --------------------------------------------
nnoremap <silent><C-e> :NERDTreeToggle<CR>

"
" bindings of Leader-key
" 
let mapleader = "\<Space>"

nnoremap <Leader>h :noh<CR>
nnoremap < :bp<CR>
nnoremap > :bn<CR>
nnoremap <Leader>t :tabnew<CR>
nnoremap <Leader>, :tabp<CR>
nnoremap <Leader>. :tabn<CR>

inoremap <silent><expr> <c-@> coc#refresh()



"" --------------------------------------------
""   color scheme
"" --------------------------------------------
""set background=light
colorscheme morning
"colorscheme desert





