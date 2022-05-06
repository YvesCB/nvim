return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    use 'itchyny/lightline.vim' 
    use 'itchyny/vim-gitbranch'
    use 'jiangmiao/auto-pairs'
    use 'tpope/vim-ragtag'
    use 'tpope/vim-surround'
    use 'tpope/vim-fugitive'
    use 'tpope/vim-commentary'
    use 'sbdchd/neoformat'
    use 'terryma/vim-multiple-cursors'
    use 'machakann/vim-highlightedyank'
    use 'justinmk/vim-sneak'
    use 'szw/vim-maximizer'
    use 'kassio/neoterm'
    use 'airblade/vim-gitgutter'
    use 'nvim-telescope/telescope.nvim'
    -- use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use 'nvim-lua/plenary.nvim'

    -- Language specific
    use { 'pangloss/vim-javascript', ft = 'javascript' }
    use { 'rust-lang/rust.vim', ft = 'rust' } 

    -- LSP and completion
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'

    -- DAP for debugging
    use 'mfussenegger/nvim-dap'

    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- Theme
    use 'tomasiser/vim-code-dark'
end)
