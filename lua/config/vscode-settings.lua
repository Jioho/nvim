
-- Better Navigation
vim.api.nvim_set_keymap('n', '<C-j>', [[:lua require('vscode-neovim').call('workbench.action.navigateDown')<CR>]],
  { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<C-j>', [[:lua require('vscode-neovim').call('workbench.action.navigateDown')<CR>]],
  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', [[:lua require('vscode-neovim').call('workbench.action.navigateUp')<CR>]],
  { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<C-k>', [[:lua require('vscode-neovim').call('workbench.action.navigateUp')<CR>]],
  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-h>', [[:lua require('vscode-neovim').call('workbench.action.navigateLeft')<CR>]],
  { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<C-h>', [[:lua require('vscode-neovim').call('workbench.action.navigateLeft')<CR>]],
  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', [[:lua require('vscode-neovim').call('workbench.action.navigateRight')<CR>]],
  { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<C-l>', [[:lua require('vscode-neovim').call('workbench.action.navigateRight')<CR>]],
  { noremap = true, silent = true })

-- vim.api.nvim_set_keymap('n', '<C-w>_', [[:lua require('vscode-neovim').call('workbench.action.toggleEditorWidths')<CR>]],
--   { noremap = true, silent = true })

-- vim.api.nvim_set_keymap('n', '<Space>', [[:lua require('vscode-neovim').call('whichkey.show')<CR>]],
--   { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('x', '<Space>', [[:lua require('vscode-neovim').call('whichkey.show')<CR>]],
--   { noremap = true, silent = true })
