local mode_nv = { "n", "x" }
local mode_v = { "v" }
local mode_i = { "i" }
local mode_nvi = { "n", "x", "i" }


local mappings = {
  { from = '<C-j>', to = 'workbench.action.navigateDown',  mode = mode_nv },
  { from = '<C-k>', to = 'workbench.action.navigateUp',    mode = mode_nv },
  { from = '<C-h>', to = 'workbench.action.navigateLeft',  mode = mode_nv },
  { from = '<C-l>', to = 'workbench.action.navigateRight', mode = mode_nv },
  -- { from = '<C-b>', to = 'workbench.action.toggleSidebarVisibility', mode = mode_nvi },
}

-- vim.api.nvim_set_keymap('n', '<C-w>_', [[:lua require('vscode-neovim').call('workbench.action.toggleEditorWidths')<CR>]],
--   { noremap = true, silent = true })

-- vim.api.nvim_set_keymap('n', '<Space>', [[:lua require('vscode-neovim').call('whichkey.show')<CR>]],
--   { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('x', '<Space>', [[:lua require('vscode-neovim').call('whichkey.show')<CR>]],
--   { noremap = true, silent = true })

for _, mapping in ipairs(mappings) do
  -- vim.api.nvim_set_keymap(mapping.mode or "n", mapping.from,
  --   [[:lua vscode.call(']] .. mapping.to .. [[')<CR>]],
  --   { noremap = true, silent = true })
  vim.keymap.set(mapping.mode or "n", mapping.from,
    [[:lua vscode.call(']] .. mapping.to .. [[')<CR>]],
    { noremap = true, silent = true })
end
