-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')

-- [[ Basic Keymaps ]]
-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- [[ Personal Mappings ]]

-- Save File
vim.keymap.set({ 'n', 'v', 'i' }, '<C-s>', '<ESC><cmd> w <CR>', { noremap = true, desc = 'Save Files' })
vim.keymap.set({ 'n', 'v', 'i' }, '<C-S>', '<ESC><cmd> wa <CR>', { noremap = true, desc = 'Save Files' })
vim.keymap.set('n', '<leader>ww', '<ESC><cmd> w <CR>', { noremap = true, desc = 'Save Files' })

-- Navigation
vim.keymap.set('n', '<C-d>', '<C-d>zz', { noremap = true, desc = 'Scroll Down & Center' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { noremap = true, desc = 'Scroll Up & Center' })
vim.keymap.set('n', '<A-h>', '_', { noremap = true, desc = 'Start of Line' })
vim.keymap.set('n', '<A-j>', '}zz', { noremap = true, desc = 'Next blankline' })
vim.keymap.set('n', '<A-k>', '{zz', { noremap = true, desc = 'Previous blankline' })
vim.keymap.set('n', '<A-l>', '$', { noremap = true, desc = 'End of Line' })
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { noremap = true, desc = 'Move line down' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { noremap = true, desc = 'Move line up' })

-- Spell Check
vim.keymap.set('n', '<leader>-z=', 'z=', { noremap = true, desc = 'Spell: Show Suggestions' })
vim.keymap.set('n', '<leader>-za', 'zg', { noremap = true, desc = 'Spell: Add to Dictionary' })
vim.keymap.set('n', '<leader>-zT', function()
  ---@diagnostic disable-next-line: param-type-mismatch
  vim.opt_local.spell = not (vim.opt_local.spell:get())
  print('spell local: ' .. tostring(vim.o.spell))
end, { noremap = true, desc = 'Toggle spell check (Local)' })
vim.keymap.set('n', '<leader>-zt', function()
  ---@diagnostic disable-next-line: param-type-mismatch
  vim.opt.spell = not (vim.opt.spell:get())
  print('spell global: ' .. tostring(vim.o.spell))
end, { noremap = true, desc = 'Toggle spell check (Global)' })

-- Actions & Misc
vim.keymap.set('n', '<leader>gg', '<cmd> LazyGit <CR>', { noremap = true, desc = 'Open LazyGit' })
vim.keymap.set('n', '<leader>-ol', '<cmd> Lazy <CR>', { noremap = true, desc = 'Open Lazy' })
vim.keymap.set('v', 'p', '"_dP', { noremap = true })
vim.keymap.set('n', '<leader>K', vim.lsp.buf.hover, { noremap = true, desc = 'LSP: Hover' })
vim.keymap.set('n', '<leader>ch', vim.lsp.buf.signature_help, { noremap = true, desc = 'LSP: Signature Help' })
vim.keymap.set({ 'n', 'v' }, '<leader>fm', '<cmd> Format <CR>', { noremap = true })
vim.keymap.set({ 'n', 'v' }, '<leader>cf', '<cmd> EslintFixAll <CR>', { noremap = true })
vim.keymap.set('n', '<leader>tm', '<cmd> term <CR> i', { noremap = true })
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { noremap = true })

-- Windows
vim.keymap.set('n', '<leader>v', '<cmd> vsp <CR>', { noremap = true, desc = 'Split Vertical' })
vim.keymap.set('n', '<leader>s', '<cmd> sp <CR>', { noremap = true, desc = 'Split Horizontal' })
vim.keymap.set('n', '<leader>e', '<cmd> Neotree action=focus <CR>', { noremap = true, desc = 'Neotree Focus' })
vim.keymap.set('n', '<C-n>', '<cmd> Neotree toggle <CR>', { noremap = true, desc = 'Neotree Toggle' })
vim.keymap.set('n', '<S-tab>', '<cmd> bprevious <CR>', { noremap = true, desc = 'Previous buffer' })
vim.keymap.set('n', '<tab>', '<cmd> bnext <CR>', { noremap = true, desc = 'Next buffer' })
vim.keymap.set('n', '<leader>x', '<cmd> BufDel <CR>', { noremap = true, desc = 'Close buffer' })
vim.keymap.set('n', '<leader>X', '<cmd> BufDelOthers <CR>', { noremap = true, desc = 'Close other buffer' })
vim.keymap.set('n', '<C-Right>', '<cmd> vertical resize +5 <CR>', { noremap = true, desc = 'Increase vertical split' })
vim.keymap.set('n', '<C-Left>', '<cmd> vertical resize -5 <CR>', { noremap = true, desc = 'Decrease vertical split' })
vim.keymap.set('n', '<C-Up>', '<cmd> horizontal resize -5 <CR>', { noremap = true, desc = 'Decrease horizontal split' })
vim.keymap.set('n', '<C-Down>', '<cmd> horizontal resize +5 <CR>', { noremap = true, desc = 'Increase horizontal split' })

-- Panes
vim.keymap.set('n', '<leader>h', '<C-w>h', { noremap = true, desc = 'Move to left pane' })
vim.keymap.set('n', '<leader>j', '<C-w>j', { noremap = true, desc = 'Move to below pane' })
vim.keymap.set('n', '<leader>k', '<C-w>k', { noremap = true, desc = 'Move to top pane' })
vim.keymap.set('n', '<leader>l', '<C-w>l', { noremap = true, desc = 'Move to right pane' })
vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true, desc = 'Move to left pane' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true, desc = 'Move to below pane' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true, desc = 'Move to top pane' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true, desc = 'Move to right pane' })
vim.keymap.set('n', '<leader>q', '<C-w>q', { noremap = true, desc = 'Close pane' })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>ce', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>cq', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- [[ Telescope ]]
-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>fg', require('telescope.builtin').git_files, { desc = 'Search Git Files' })
vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, { desc = 'Search Files' })
vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, { desc = 'Search Help' })
vim.keymap.set('n', '<leader>fw', require('telescope.builtin').grep_string, { desc = 'Search current W]ord' })
vim.keymap.set('n', '<leader>fa', require('telescope.builtin').live_grep, { desc = 'Search by Grep' })
vim.keymap.set('n', '<leader>fd', require('telescope.builtin').diagnostics, { desc = 'Search Diagnostics' })
vim.keymap.set('n', '<leader>fr', require('telescope.builtin').oldfiles, { desc = 'Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = 'Find existing buffers' })
vim.keymap.set('n', '<leader>fi', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Find in current buffer' })

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})
