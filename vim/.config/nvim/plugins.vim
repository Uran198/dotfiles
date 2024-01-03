" Required by Vundle
filetype off
set rtp+=~/.config/nvim/bundle/Vundle.vim

call vundle#begin('~/.config/nvim/bundle/')

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rhubarb'
Plugin 'will133/vim-dirdiff'

Plugin 'nathangrigg/vim-beancount'
Plugin 'peitalin/vim-jsx-typescript'

Plugin 'neovim/nvim-lspconfig'
Plugin 'ray-x/lsp_signature.nvim'

" Colorscheme
Plugin 'morhetz/gruvbox'

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
Plugin 'tpope/vim-unimpaired'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

" TODO: Use dap instead of vimspector
" Plugin 'mfussenegger/nvim-dap'
" Plugin 'mxsdev/nvim-dap-vscode-js'
Plugin 'puremourning/vimspector'

call vundle#end()

packadd! matchit
