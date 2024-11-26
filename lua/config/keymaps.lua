local map = vim.keymap.set
-- Clear search with <esc>
map({ 'i', 'n' }, '<esc>', '<cmd>noh<cr><esc>', { desc = 'Escape and Clear hlsearch' })

map('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

--  See `:help wincmd` for a list of all window commands
map('n', '<M-Left>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<M-Right>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('n', '<M-Down>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('n', '<M-Up>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- save file
map({ 'i', 'x', 'n', 's' }, '<C-s>', '<cmd>w<cr><esc>', { desc = 'Save File' })

-- save file without auto-formatting
map('n', '<leader>sn', '<cmd>noautocmd w <CR>', { noremap = true, silent = true })

-- quit file
map('n', '<C-q>', '<cmd> q <CR>', { noremap = true, silent = true })

-- quit
map('n', '<leader>qq', '<cmd>qa<cr>', { desc = 'Quit All' })

-- delete single character without copying into register
map('n', 'x', '"_x', { noremap = true, silent = true })

-- Vertical scroll and center
map('n', '<C-d>', '<C-d>zz', { noremap = true, silent = true })
map('n', '<C-u>', '<C-u>zz', { noremap = true, silent = true })

-- Find and center
map('n', 'n', 'nzzzv', { noremap = true, silent = true })
map('n', 'N', 'Nzzzv', { noremap = true, silent = true })

-- Resize with arrows
map('n', '<C-Up>', ':resize -2<CR>', { noremap = true, silent = true })
map('n', '<C-Down>', ':resize +2<CR>', { noremap = true, silent = true })
map('n', '<C-Left>', ':vertical resize -2<CR>', { noremap = true, silent = true })
map('n', '<C-Right>', ':vertical resize +2<CR>', { noremap = true, silent = true })

-- Buffers
map('n', '<Tab>', ':bnext<CR>', { noremap = true, silent = true })
map('n', '<S-Tab>', ':bprevious<CR>', { noremap = true, silent = true })
map('n', '<leader>x', ':bdelete!<CR>', { noremap = true, silent = true }) -- close buffer
map('n', '<leader>b', '<cmd> enew <CR>', { noremap = true, silent = true }) -- new buffer

-- Window management
map('n', '<leader>v', '<C-w>v', { noremap = true, silent = true }) -- split window vertically
map('n', '<leader>h', '<C-w>s', { noremap = true, silent = true }) -- split window horizontally
map('n', '<leader>se', '<C-w>=', { noremap = true, silent = true }) -- make split windows equal width & height
map('n', '<leader>xs', ':close<CR>', { noremap = true, silent = true }) -- close current split window

-- Tabs
map('n', '<leader>to', ':tabnew<CR>', { noremap = true, silent = true }) -- open new tab
map('n', '<leader>tx', ':tabclose<CR>', { noremap = true, silent = true }) -- close current tab
map('n', '<leader>tn', ':tabn<CR>', { noremap = true, silent = true }) --  go to next tab
map('n', '<leader>tp', ':tabp<CR>', { noremap = true, silent = true }) --  go to previous tab

-- Toggle line wrapping
map('n', '<leader>lw', '<cmd>set wrap!<CR>', { noremap = true, silent = true, desc = 'togge [L]ine [W]rap' })
map('n', '<leader>ln', '<cmd>set nu!<bar>set rnu!<CR>', { noremap = true, silent = true, desc = 'togge [L]ine [N]umbers' })
map('n', '<leader>X', '<cmd>!chmod +x %<CR>', { noremap = true, silent = true, desc = 'make e[X]ecutable' })
map('i', '<C-c>', '<Esc>')
map('i', 'jk', '<Esc>')
map('i', 'kj', '<Esc>')

-- Stay in indent mode
map('v', '<', '<gv', { noremap = true, silent = true })
map('v', '>', '>gv', { noremap = true, silent = true })

-- Keep last yanked when pasting
map('v', 'p', '"_dP', { noremap = true, silent = true })

-- Diagnostic keymaps
map('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
map('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
map('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
map('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- lazy
map('n', '<leader>l', '<cmd>Lazy<cr>', { desc = 'Lazy' })

-- vim: ts=2 sts=2 sw=2 et
