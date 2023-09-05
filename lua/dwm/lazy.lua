-- Define the location of lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Install if not found
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
	"git",
	"clone",
	"--filter=blob:none",
	"https://github.com/folke/lazy.nvim.git",
	"--branch=stable", --  stable release
	lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Plugin installation specification
require("lazy").setup({
    'tpope/vim-sensible',

    -- LSP config
    --'neovim/nvim-lspconfig', -- Configurations for Nvim LSP
    --'simrat39/rust-tools.nvim', -- Rust LSP configuration
    --'neomake/neomake', -- Linting
    {
	'VonHeikemen/lsp-zero.nvim',
	branch = 'v2.x',
	dependencies = {
	    -- LSP Support
	    {'neovim/nvim-lspconfig'},             -- Required
	    {'williamboman/mason.nvim'},           -- Optional
	    {'williamboman/mason-lspconfig.nvim'}, -- Optional

	    -- Autocompletion
	    {'hrsh7th/nvim-cmp'},     -- Required
	    {'hrsh7th/cmp-nvim-lsp'}, -- Required
	    {'L3MON4D3/LuaSnip'},     -- Required
	}
    },
    'ErichDonGubler/lsp_lines.nvim', -- Errors/Messages

    -- Visual tools
    'unblevable/quick-scope', -- Plugin to highlight fastest jumps to words
    'brenoprata10/nvim-highlight-colors', -- Inline hex colour codes previw
    'nvim-tree/nvim-tree.lua', -- File explorer plugin
    'nvim-tree/nvim-web-devicons', -- Text icons
    'lewis6991/gitsigns.nvim', -- Git-related text icons
    'nvim-lualine/lualine.nvim', -- Bottom-of-screen status bar
    {'nvim-treesitter/nvim-treesitter', build = ":TSUpdate"}, -- Code highlighting
    'petertriho/nvim-scrollbar', -- Right-side scrollbar for filesize context

    -- Search
    {'nvim-telescope/telescope.nvim', tag = '0.1.2', dependencies = { 'nvim-lua/plenary.nvim' }}, -- Fuzzy Finder
    'theprimeagen/harpoon', -- Mark navigation

    -- Themes
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    {'rebelot/kanagawa.nvim', lazy=true},
})

---[ Plugin requires ]---
require("nvim-tree").setup()
require("scrollbar").setup()
require("gitsigns").setup()
require("nvim-highlight-colors").setup()
require("lualine").setup({
    options = {
	theme = "catppuccin"
    }
})

require("lsp_lines").setup()
require("lualine").setup()
require("catppuccin").setup({
    integrations = {
	gitsigns = true,
	nvimtree = true,
	treesitter = true,
    }
})
