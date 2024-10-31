vim.g.mapleader = ' '

local keymap = vim.keymap

vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true, silent = true })

keymap.set('n', ';', ':')

-- window management
keymap.set('n', '<leader>sv', '<C-w>v') -- split vertical
keymap.set('n', '<leader>sh', '<C-w>s') -- split horizontal
keymap.set('n', '<leader>se', '<C-w>=') -- make windows equal size
keymap.set('n', '<leader>sx', ':close<CR>') -- close curr

keymap.set('n', '<leader>to', ':tabnew<CR>') -- open new tab
keymap.set('n', '<leader>tx', ':tabclose<CR>') -- close curr tab
keymap.set('n', '<leader>tn', ':tabn<CR>') -- next tab
keymap.set('n', '<leader>tp', ':tabnew<CR>') -- prev tab

-- oil
vim.api.nvim_set_keymap('n', '<leader>oi', "<cmd>lua require('oil').toggle_float(require('oil').get_current_dir())<CR>", { noremap = true, silent = true })
