local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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
    -- LSP manager
    "williamboman/nvim-lsp-installer",
    "neovim/nvim-lspconfig",
    -- Vscode-like pictograms
    {
        "onsails/lspkind.nvim",
        event = { "VimEnter" },
    },
    -- Auto-completion engine
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "lspkind.nvim",
            "hrsh7th/cmp-nvim-lsp", -- lsp auto-completion
            "hrsh7th/cmp-buffer", -- buffer auto-completion
            "hrsh7th/cmp-path", -- path auto-completion
            "hrsh7th/cmp-cmdline", -- cmdline auto-completion
        },
    },
    -- Code snippet engine
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
    },
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    { 
        "kyazdani42/nvim-tree.lua", event = "VimEnter", dependencies = "nvim-tree/nvim-web-devicons" 
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons'
    },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true,
        -- use opts = {} for passing setup options
        -- this is equalent to setup({}) function
    }
})