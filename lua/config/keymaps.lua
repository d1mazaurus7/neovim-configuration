--- Keymaps.lua 
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

--- Leader (space)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--- Keymaps

--- Write
map("n", "<leader>w", "<cmd>w<cr>", { desc = "Save" })
map("n", "<leader>W", "<cmd>w!<cr>", { desc = "Save!" })

--- Quit
map("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit" })
map("n", "<leader>Q", "<cmd>q!<cr>", { desc = "Quit!" })

--- Tabs
map("n", "<A-t>", "<cmd>tabnew<cr>", { desc = "New tab" })

--- ToggleTerm (terminal)
map("n", "<leader>t", "<cmd>ToggleTerm direction=float<cr>", { desc =  "Terminal" })

--- Nerd font icons 
map("n", "<leader>i", "<cmd>Nerdy list<CR>", { desc = "Nerd fonts icons list" })
map("n", "<leader>iR", "<cmd>Nerdy recents<CR>", { desc = "Nerd fonts icons recent list" })

--- Nvim-tree (explorer)
map("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { desc = "Explorer" })


map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', { desc = "Move previous tab"})
map('n', '<A-.>', '<Cmd>BufferNext<CR>', { desc = "Move next tab" })

map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>')
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>')
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>')
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>')
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>')
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>')
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>')
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>')
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>')
map('n', '<A-0>', '<Cmd>BufferLast<CR>')

vim.keymap.set("n", "<A-t>", function()
  vim.cmd("tabnew")
  require("nvim-tree.api").tree.open()
end, { desc = "вкладка + дерево" })
