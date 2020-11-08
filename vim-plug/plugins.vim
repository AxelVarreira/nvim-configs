" autocmd vimenter * NERDTree
" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    
    " HTML Live server ':Bracey, :BraceyStop, :BraceyReload'
    Plug 'turbio/bracey.vim'
    "Markdown-preview ':MarkdownPreview'
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
    "Close tags
    Plug 'alvan/vim-closetag'
    " Intellisense for Vim
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    "emmet
    Plug 'mattn/emmet-vim'
    "CSS color highlight
    Plug 'ap/vim-css-color' 
    " Better Syntax Support (almost all languages)
    Plug 'sheerun/vim-polyglot'
    " File manager
    Plug 'preservim/NERDTree'
    "Git modifications icons
    Plug 'airblade/vim-gitgutter' 
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    "Add icons to vim
    Plug 'ryanoasis/vim-devicons'
    "Snippets for vim to comment code
    Plug 'tpope/vim-commentary'
    "Vim airline theme
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    "Neovim themes
    Plug 'ntk148v/vim-horizon'
    " Plug 'joshdick/onedark.vim'
    "Prettier
    Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] } 
    "Indent line
    Plug 'yggdroot/indentline'

call plug#end()

"vim-commentary config
nnoremap <space>/ :Commentary<CR>
vnoremap <space>/ :Commentary<CR>

"NERDTree config
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

"Indentline config
let g:indentline_faster = 1
let g:indentline_setConceal = 0

" Prettier config
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

"MarkdownPreview config
nmap <C-s> <Plug>MarkdownPreview
nmap <M-s> <Plug>MarkdownPreviewStop
nmap <C-p> <Plug>MarkdownPreviewToggle

"vim-closetag config
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.jsx,*.js"
let g:closetag_shortcut = '>'
let g:closetag_emptyTags_caseSensitive = 1


" VANILLA VIM CONFIG
" set tab to 2 spaces
:set ts=2
:set sw=2
" On pressing tab, insert 2 spaces
:set expandtab
" show existing tab with 2 spaces width
:set tabstop=2
:set softtabstop=2
" For code indent with tabs
:set list lcs=tab:\|\ 
set termguicolors

colorscheme horizon

" lightline
let g:lightline = {}
let g:lightline.colorscheme = 'horizon'
