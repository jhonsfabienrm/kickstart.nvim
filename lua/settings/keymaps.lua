local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.keymap.set

-- Remap tab as leader key
keymap('', '<Tab>', 'Nop', opts)
vim.g.mapleader = '\t'
vim.g.maplocalleader = '\t'

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- Keymaps
keymap('n', '<Esc>', '<cmd>nohlsearch<CR>')
keymap('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
keymap('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
keymap('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
keymap('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
keymap('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

--  Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
keymap('n', '<C-h>', '<C-w>h', { desc = 'Move focus to the left window' })
keymap('n', '<C-l>', '<C-w>l', { desc = 'Move focus to the right window' })
keymap('n', '<C-j>', '<C-w>j', { desc = 'Move focus to the lower window' })
keymap('n', '<C-k>', '<C-w>k', { desc = 'Move focus to the upper window' })

-- Resize with arrows
keymap('n', '<C-Up>', ':resize -2<CR>', opts)
keymap('n', '<C-Down>', ':resize +2<CR>', opts)
keymap('n', '<C-Left>', ':vertical resize -2<CR>', opts)
keymap('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- Navigate buffers
keymap('n', '<S-l>', ':bnext<CR>', opts)
keymap('n', '<S-h>', ':bprevious<CR>', opts)
keymap('n', '<S-c>', ':bdelete<CR>', opts)

-- Move text up and down
keymap('n', '<A-j>', ':m .+1<CR>==', opts)
keymap('n', '<A-k>', ':m .-2<CR>==', opts)

-- Visual --
-- Stay in indent mode
keymap('v', '<', '<gv^', opts)
keymap('v', '>', '>gv^', opts)

-- Move text up and down
keymap('v', '<A-j>', ":m '>+1<CR>gv=gv", opts)
keymap('v', '<A-k>', ":m '<-2<CR>gv=gv", opts)
keymap('v', 'p', '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap('x', 'J', ":m '>+1<CR>gv=gv", opts)
keymap('x', 'K', ":m '<-2<CR>gv=gv", opts)
keymap('x', '<A-j>', ":m '>+1<CR>gv=gv", opts)
keymap('x', '<A-k>', ":m '<-2<CR>gv=gv", opts)

-- Nvim-tree toggle
keymap('n', '\\', ':NvimTreeToggle<CR>', opts)
