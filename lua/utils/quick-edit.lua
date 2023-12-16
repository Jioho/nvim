local keyword = '<++>'
function SearchAndReplace()
  vim.fn.search(keyword, 'w')
  vim.api.nvim_command(':let @a=""\n') -- 清空寄存器 a 的内容
  -- vim.api.nvim_command('normal! "_c4l')  -- 进入编辑模式并删除 4 个字符
  -- vim.api.nvim_command('startinsert')
end

-- 插入文本函数
function InsertText(mode)
  vim.api.nvim_command('normal! ' .. mode .. keyword)
end

vim.api.nvim_set_keymap('n', '<leader>a', [[:lua InsertText('a')<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>o', [[:lua InsertText('o')<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>c', [[:lua SearchAndReplace()<CR>"_c4l]], { noremap = true, silent = true })
