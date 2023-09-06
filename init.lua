-- Require my own lua directory; most configuration is found within ~/.configs/nvim/lua/dwm
require("dwm")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

---- [ Custom Configurations ]----
-- Turn on syntax highlighting
vim.opt.syntax = "on"

-- Turn on relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Configure tab settings
vim.opt.tabstop = 8
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false

-- Configure search settings
vim.cmd [[set ignorecase]]
vim.cmd [[set smartcase]]
vim.cmd [[set incsearch]]
vim.cmd [[set hlsearch]]
vim.cmd [[highlight Search    ctermfg=White  ctermbg=Black  cterm=bold]]
vim.cmd [[highlight IncSearch    ctermfg=White  ctermbg=Red    cterm=bold]]

-- Enable filetype detection, plugins, and auto-indent
vim.cmd [[filetype plugin indent on]]
vim.cmd [[set wildmode=longest,list,full]]
vim.cmd [[set mouse=a]]
-- Set the window title to be the file name, if applicable
vim.cmd [[set title]]

-- Configure split settings
vim.cmd [[set fillchars+=vert:\│]]
vim.cmd [[set splitbelow splitright]]

-- Mute the annoying bell sound
vim.cmd [[set vb t_vb=d()]]

-- Turn off inline error/help messages; Covered by lsp_lines
vim.diagnostic.config({virtual_text = false})

-- Configure folding
vim.opt.foldcolumn = '3'
vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 99

----[ Neomake Configuration ]----
-- When writing a buffer (no delay), and on normal mode changes (after 750ms).
--vim.cmd [[call neomake#configure#automake('nrwi', 500)]]

