# nvim-configs
Nvim config

<h2>Installation</h2>

<ul>
  <li>
    Create a directory in ~./config called nvim by typing "mkdir .config/nvim"
  </li>
  <li>
    open nvim in the terminal by typing "nvim"
  </li>
  <li>
    Press "CTRL+:", to open nvim commands and type "Plug install", this will install all the plugins
  </li>
</ul>

<h2> Plugins installed </h2>

``````call plug#begin('~/.config/nvim/autoload/plugged')
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
    Plug 'prettier/vim-prettier',{ 
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] } 
    "Indent line
    Plug 'yggdroot/indentline'
