local keyword = '<++>'

function SearchPlusPlus()
  vim.fn.search(keyword, 'w')
end

-- replaced
local execReplace = '<Esc>:lua SearchPlusPlus()<CR>"_c4l'
vim.api.nvim_set_keymap('n', '<leader><leader>r', execReplace, { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<leader><leader>r', execReplace, { noremap = true, silent = true })

-- insert
vim.api.nvim_set_keymap('n', '<leader>a', 'a' .. keyword, { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<leader>a', keyword, { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>o', 'o' .. keyword, { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<leader>o', '<Esc>o' .. keyword, { noremap = true, silent = true })
