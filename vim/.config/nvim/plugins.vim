" Required by Vundle
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle/')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
" Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'scrooloose/syntastic'
Plugin 'godlygeek/tabular'
" Plugin 'davidhalter/jedi-vim'
" Plugin 'tpope/vim-surround'
" Plugin 'tpope/vim-repeat'
" Plugin 'rking/ag.vim'
" Plugin 'prabirshrestha/async.vim'
" Plugin 'prabirshrestha/vim-lsp'
Plugin 'will133/vim-dirdiff'
Plugin 'preservim/tagbar'
" Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'preservim/nerdtree'
Plugin 'vim-scripts/LanguageTool'
" Plugin 'sirver/UltiSnips'
Plugin 'nathangrigg/vim-beancount'

" Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'tpope/vim-rhubarb'

Plugin 'neovim/nvim-lspconfig'
Plugin 'ray-x/lsp_signature.nvim'
Plugin 'morhetz/gruvbox'
Plugin 'tpope/vim-unimpaired'

" Auto-completions.
Plugin 'hrsh7th/cmp-nvim-lsp'
Plugin 'hrsh7th/cmp-buffer'
Plugin 'hrsh7th/cmp-path'
Plugin 'hrsh7th/cmp-cmdline'
Plugin 'hrsh7th/nvim-cmp'

Plugin 'SirVer/ultisnips'
Plugin 'quangnguyen30192/cmp-nvim-ultisnips'

" Fast navigation
Plugin 'smoka7/hop.nvim'

Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

" Plugin 'mfussenegger/nvim-dap'
" Plugin 'mxsdev/nvim-dap-vscode-js'

Plugin 'puremourning/vimspector'

" All of your Plugins must be added before the following line
" After adding plugins run :PluginInstall
call vundle#end()            " required
filetype plugin indent on    " required
