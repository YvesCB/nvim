return require("packer").startup(function()
    use "wbthomason/packer.nvim"

    use "itchyny/lightline.vim" 
    use "itchyny/vim-gitbranch"
    use "jiangmiao/auto-pairs"
    use "tpope/vim-ragtag"
    use "tpope/vim-surround"
    use "tpope/vim-fugitive"
    use "tpope/vim-commentary"
    use "sbdchd/neoformat"
    use "terryma/vim-multiple-cursors"
    use "machakann/vim-highlightedyank"
    use "justinmk/vim-sneak"
    use "szw/vim-maximizer"
    use "kassio/neoterm"
    use "airblade/vim-gitgutter"
    use "nvim-telescope/telescope.nvim"
    use "nvim-lua/plenary.nvim"

    use { "pangloss/vim-javascript", ft = "javascript" }
    use { "rust-lang/rust.vim", ft = "rust" } 

    use "tomasiser/vim-code-dark"
end)
