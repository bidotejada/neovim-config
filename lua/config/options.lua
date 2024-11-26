local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.mouse = 'a'
opt.showmode = false
opt.clipboard = 'unnamedplus'
opt.breakindent = true
opt.undofile = true
opt.ignorecase = true
opt.smartcase = true
opt.signcolumn = 'yes'
opt.updatetime = 200
opt.timeoutlen = 300
opt.splitright = true
opt.splitbelow = true
opt.list = true
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
opt.inccommand = 'split'
opt.cursorline = true
opt.scrolloff = 4

-- github.com/hendrikmi/neovim-kickstart-config
opt.wrap = false -- Display lines as one long line (default: true)
opt.linebreak = true -- Companion to wrap, don't split words (default: false)
opt.autoindent = true -- Copy indent from current line when starting new one (default: true)
opt.shiftwidth = 2 -- The number of spaces inserted for each indentation (default: 8)
opt.tabstop = 2 -- Insert n spaces for a tab (default: 8)
opt.softtabstop = 2 -- Number of spaces that a tab counts for while performing editing operations (default: 0)
opt.expandtab = true -- Convert tabs to spaces (default: false)
opt.sidescrolloff = 8 -- Minimal number of screen columns either side of cursor if wrap is `false` (default: 0)
opt.hlsearch = true -- Set highlight on search (default: true)
opt.termguicolors = true -- Set termguicolors to enable highlight groups (default: false)
opt.whichwrap = 'bs<>[]hl' -- Which "horizontal" keys are allowed to travel to prev/next line (default: 'b,s')
opt.numberwidth = 4 -- Set number column width to 2 {default 4} (default: 4)
opt.smartindent = true -- Make indenting smarter again (default: false)
opt.showtabline = 2 -- Always show tabs (default: 1)
opt.backspace = 'indent,eol,start' -- Allow backspace on (default: 'indent,eol,start')
opt.pumheight = 10 -- Pop up menu height (default: 0)
opt.conceallevel = 0 -- So that `` is visible in markdown files (default: 1)
opt.fileencoding = 'utf-8' -- The encoding written to a file (default: 'utf-8')
opt.cmdheight = 1 -- More space in the Neovim command line for displaying messages (default: 1)
opt.swapfile = false -- Creates a swapfile (default: true)
opt.backup = false -- Creates a backup file (default: false)
opt.writebackup = false -- If a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited (default: true)
opt.completeopt = 'menu,menuone,noselect' -- Set completeopt to have a better completion experience (default: 'menu,preview')
opt.shortmess:append 'c' -- Don't give |ins-completion-menu| messages (default: does not include 'c')
opt.iskeyword:append '-' -- Hyphenated words recognized by searches (default: does not include '-')
opt.formatoptions:remove { 'c', 'r', 'o' } -- Don't insert the current comment leader automatically for auto-wrapping comments using 'textwidth', hitting <Enter> in insert mode, or hitting 'o' or 'O' in normal mode. (default: 'croql')
opt.runtimepath:remove '/usr/share/vim/vimfiles' -- Separate Vim plugins from Neovim in case Vim still in use (default: includes this path if Vim is installed)

-- github.com/ThePrimeagen/neovimrc
opt.incsearch = true
opt.colorcolumn = '80'

opt.fillchars = {
  foldopen = '',
  foldclose = '',
  fold = ' ',
  foldsep = ' ',
  diff = '╱',
  eob = ' ',
}
opt.sessionoptions = { 'buffers', 'curdir', 'tabpages', 'winsize', 'help', 'globals', 'skiprtp', 'folds' }
if vim.fn.has 'nvim-0.10' == 1 then
  opt.smoothscroll = true
  opt.foldexpr = "v:lua.require'lazyvim.util'.ui.foldexpr()"
  opt.foldmethod = 'expr'
  opt.foldtext = ''
else
  opt.foldmethod = 'indent'
  opt.foldtext = "v:lua.require'lazyvim.util'.ui.foldtext()"
end
-- Fix markdown indentation settings
vim.g.markdown_recommended_style = 0

-- vim: ts=2 sts=2 sw=2 et
