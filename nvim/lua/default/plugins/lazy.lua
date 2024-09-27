local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.2',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    --{'rose-pine/neovim', name = 'rose-pine' },
    --{'vim-test/vim-test'},
    { 'AlexvZyl/nordic.nvim',               name = 'nordic' },
    { 'nvim-treesitter/nvim-treesitter',    build = ':TSUpdate' },
    --eye candy
    { 'kyazdani42/nvim-web-devicons' },
    { 'yamatsum/nvim-nonicons' },
    { 'nvim-lualine/lualine.nvim' },
    --github
    { 'tpope/vim-fugitive' },
    --qol
    { 'ThePrimeagen/harpoon' },
    { 'mbbill/undotree' },
    { 'windwp/nvim-autopairs' },
    { 'windwp/nvim-ts-autotag' },
    { 'lukas-reineke/indent-blankline.nvim' },
    { 'folke/which-key.nvim' },
    { 'nvim-tree/nvim-tree.lua' },
    { 'norcalli/nvim-colorizer.lua' },
    --lsp
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    },
    {
        'lervag/vimtex',
        lazy = false,
        init = function()
            vim.g.vimtex_view_method = "zathura"
        end
    },
    { 'simrat39/rust-tools.nvim' },
})
