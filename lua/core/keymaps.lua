-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<M-Left>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<M-Right>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<M-Down>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<M-Up>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- github.com/hendrikmi/neovim-kickstart-config
-- save file
vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', { noremap = true, silent = true })

-- save file without auto-formatting
vim.keymap.set('n', '<leader>sn', '<cmd>noautocmd w <CR>', { noremap = true, silent = true })

-- quit file
vim.keymap.set('n', '<C-q>', '<cmd> q <CR>', { noremap = true, silent = true })

-- delete single character without copying into register
vim.keymap.set('n', 'x', '"_x', { noremap = true, silent = true })

-- Vertical scroll and center
vim.keymap.set('n', '<C-d>', '<C-d>zz', { noremap = true, silent = true })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { noremap = true, silent = true })

-- Find and center
vim.keymap.set('n', 'n', 'nzzzv', { noremap = true, silent = true })
vim.keymap.set('n', 'N', 'Nzzzv', { noremap = true, silent = true })

-- Resize with arrows
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', { noremap = true, silent = true })

-- Buffers
vim.keymap.set('n', '<Tab>', ':bnext<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>x', ':bdelete!<CR>', { noremap = true, silent = true }) -- close buffer
vim.keymap.set('n', '<leader>b', '<cmd> enew <CR>', { noremap = true, silent = true }) -- new buffer

-- Window management
vim.keymap.set('n', '<leader>v', '<C-w>v', { noremap = true, silent = true }) -- split window vertically
vim.keymap.set('n', '<leader>h', '<C-w>s', { noremap = true, silent = true }) -- split window horizontally
vim.keymap.set('n', '<leader>se', '<C-w>=', { noremap = true, silent = true }) -- make split windows equal width & height
vim.keymap.set('n', '<leader>xs', ':close<CR>', { noremap = true, silent = true }) -- close current split window

-- Tabs
vim.keymap.set('n', '<leader>to', ':tabnew<CR>', { noremap = true, silent = true }) -- open new tab
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>', { noremap = true, silent = true }) -- close current tab
vim.keymap.set('n', '<leader>tn', ':tabn<CR>', { noremap = true, silent = true }) --  go to next tab
vim.keymap.set('n', '<leader>tp', ':tabp<CR>', { noremap = true, silent = true }) --  go to previous tab

-- Toggle line wrapping
vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ln', '<cmd>set nu!<bar>set rnu!<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>X', '<cmd>!chmod +x %<CR>', { silent = true })
vim.keymap.set('i', '<C-c>', '<Esc>')
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('i', 'kj', '<Esc>')

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
