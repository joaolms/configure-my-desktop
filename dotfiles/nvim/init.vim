" Basic configurations
set background=dark
set clipboard=unnamedplus
set completeopt=noinsert,menuone
set cursorline
set expandtab
set inccommand=split
set mouse=a
set number
set ttimeoutlen=0
set title
set relativenumber
set shiftwidth=4
set splitbelow splitright
set wildmenu

" Add the plugin here and use :PlugInstall command on Nvim
call plug#begin()
    " Appearance
    Plug 'vim-airline/vim-airline'
    Plug 'ryanoasis/vim-devicons'

    " Utilities
    Plug 'sheerun/vim-polyglot'
    Plug 'jiangmiao/auto-pairs'
    Plug 'ap/vim-css-color'
    Plug 'preservim/nerdtree'

    " Completion / Linters / Formatters
    Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install'}
    Plug 'plasticboy/vim-markdown'

    " Git
    Plug 'airblade/vim-gitgutter'

    " Color scheme
    Plug 'morhetz/gruvbox'
    Plug 'elvessousa/sobrio'
call plug#end()

" Set color scheme
colorscheme sobrio

" File browser
let g:netrw_banner=0
let g:netrw_liststyle=0
let g:netrw_browse_aplit=4
let g:netrw_altv=1
let g:netrw_winsize=25
let g:netrw_keepdir=0
let g:netrw_localcopydircmd='cp -r'

" Disable math tex conceal feature
let g:tex_conceal=''
let g:vim_markdown_math=1

" Markdown
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_frontmatter=1
let g:vim_markdown_conceal=0
let g:vim_markdown_fenced_languages=['tsx=typescriptreact']

" Language server stuff
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
