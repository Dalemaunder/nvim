-- Set Leader key
vim.g.mapleader = '\\'
-- Toggle NerdTree
vim.keymap.set ("n", "<Leader>t", ":NvimTreeToggle<CR>")
-- Clear search highlighting
vim.cmd [[nnoremap <nowait><silent> <F1> :noh<CR>]]

-- Toggle pastetoggle
vim.cmd [[set pastetoggle=<F2>]]

-- Move lines up and down in Visual mode
vim.cmd [[vnoremap <silent> <s-J> :m '>+1<CR>gv]]
vim.cmd [[vnoremap <silent> <s-K> :m '<-2<CR>gv]]

-- Indent selected lines in Visual Mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Sane split navigation
vim.keymap.set ("n", "<C-J>", "<C-W><C-J>")
vim.keymap.set ("n", "<C-K>", "<C-W><C-K>")
vim.keymap.set ("n", "<C-L>", "<C-W><C-L>")
vim.keymap.set ("n", "<C-H>", "<C-W><C-H>")

-- Pane resizing
vim.keymap.set ("n", "<Leader>h", ":vertical resize -2<CR>")
vim.keymap.set ("n", "<Leader>l", ":vertical resize +2<CR>")
vim.keymap.set ("n", "<Leader>j", ":horizontal resize -2<CR>")
vim.keymap.set ("n", "<Leader>k", ":horizontal resize +2<CR>")

-- Split creation
vim.keymap.set ("n", "<Leader>h", ":split<CR>")
vim.keymap.set ("n", "<Leader>v", ":vsplit<CR>")

