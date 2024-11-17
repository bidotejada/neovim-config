-- Set leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Disable the spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- clear highlighted words
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('i', 'jk', '<ESC>', { noremap = true, silent = true, desc = 'exit insert mode' })
vim.keymap.set('i', 'kj', '<ESC>', { noremap = true, silent = true, desc = 'exit insert mode' })
vim.keymap.set('i', '<C-c>', '<ESC>', { noremap = true, silent = true, desc = 'exit insert mode' })

-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, { desc = 'format document' })

vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', { noremap = true, silent = true, desc = 'save file' })
vim.keymap.set('n', '<leader>so', '<cmd> so % <cr>', { noremap = true, silent = false, desc = 'source file' })
vim.keymap.set('n', '<leader>nf', '<cmd>noautocmd w <CR>', { noremap = true, silent = true, desc = 'save file without auto-formatting' })

vim.keymap.set('n', '<C-q>', '<cmd> q <CR>', { noremap = true, silent = true, desc = 'quit file' })
vim.keymap.set('n', 'x', '"_x', { noremap = true, silent = true, desc = 'delete single character without copying into register' })

-- Vertical scroll and center
vim.keymap.set('n', '<C-d>', '<C-d>zz', { noremap = true, silent = true })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { noremap = true, silent = true })
-- Find and center
vim.keymap.set('n', 'n', 'nzzzv', { noremap = true, silent = true })
vim.keymap.set('n', 'N', 'Nzzzv', { noremap = true, silent = true })

-- Resize with arrows
vim.keymap.set('n', '<C-Down>', ':resize -2<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-Up>', ':resize +2<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', { noremap = true, silent = true })

-- Buffers
vim.keymap.set('n', '<Tab>', ':bnext<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>x', ':bdelete!<CR>', { noremap = true, silent = true, desc = 'close buffer' })
vim.keymap.set('n', '<leader>b', '<cmd> enew <CR>', { noremap = true, silent = true, desc = 'new buffer' })
vim.keymap.set('n', '<leader>sa', '<cmd>wa<CR>', { desc = 'Save all buffers' })
vim.keymap.set('n', '<leader>bo', '<cmd>bufdo if bufnr("%") != bufnr("#") | bdelete | endif<CR>', { desc = 'Close other buffers' })

-- Window management
vim.keymap.set('n', '<leader>v', '<C-w>v', { noremap = true, silent = true, desc = 'split window vertically' })
vim.keymap.set('n', '<leader>h', '<C-w>s', { noremap = true, silent = true, desc = 'split window horizontally' })
vim.keymap.set('n', '<leader>se', '<C-w>=', { noremap = true, silent = true, desc = 'make split windows equal width & height' })
vim.keymap.set('n', '<leader>xs', ':close<CR>', { noremap = true, silent = true, desc = 'close current split' })

-- Navigate between splits
vim.keymap.set('n', '<M-Up>', ':wincmd k<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<M-Down>', ':wincmd j<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<M-Left>', ':wincmd h<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<M-Right>', ':wincmd l<CR>', { noremap = true, silent = true })

-- Tabs
vim.keymap.set('n', '<leader>to', ':tabnew<CR>', { noremap = true, silent = true, desc = 'open new tab' })
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>', { noremap = true, silent = true, desc = 'close current tab' })
vim.keymap.set('n', '<leader>tn', ':tabn<CR>', { noremap = true, silent = true, desc = 'go to next tab' })
vim.keymap.set('n', '<leader>tp', ':tabp<CR>', { noremap = true, silent = true, desc = 'go to previous tab' })

vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>', { noremap = true, silent = true, desc = 'toggle line wrap' })
vim.keymap.set('n', '<leader>ln', '<cmd>set number! <bar> set relativenumber!<CR>', { desc = 'Toggle line numbers' })
vim.keymap.set('n', '<leader>X', '<cmd>!chmod +x %<CR>', { silent = true, desc = 'make file executable' })

-- Stay in indent mode
vim.keymap.set('v', '<', '<gv', { noremap = true, silent = true })
vim.keymap.set('v', '>', '>gv', { noremap = true, silent = true })

-- Keep last yanked when pasting
vim.keymap.set('v', 'p', '"_dP', { noremap = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- toggle spell check
-- vim.keymap.set('n', '<leader>sp', '<cmd>set spell!<CR>', { desc = 'Toggle spell check' })
-- toggle netRW
-- vim.keymap.set("n", "<leader>ee", "<cmd>Ex<CR>")
