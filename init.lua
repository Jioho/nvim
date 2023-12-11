require('config.defaults')
require('config.keymaps')
require('utils.index')
require('config.plugins')

if vim.g.vscode then
	_G.vscode = require('vscode-neovim')
	require('config.vscode-settings')
	-- Optional plugin
	-- vim.cmd [[source $HOME/.config/nvim/vscode/easymotion-config.vim]]
else
end


-- -- 在 copy 后高亮
-- vim.api.nvim_create_autocmd({ "TextYankPost" }, {
-- 	pattern = { "*" },
-- 	callback = function()
-- 		vim.highlight.on_yank({
-- 			timeout = 300,
-- 		})
-- 	end,
-- })

-- -- keybindings
-- vim.g.mapleader = " "
-- local opt = { noremap = true, silent = true }
-- vim.keymap.set("n", "<C-l>", "<C-w>l", opt)
-- vim.keymap.set("n", "<C-h>", "<C-w>h", opt)
-- vim.keymap.set("n", "<C-j>", "<C-w>j", opt)
-- vim.keymap.set("n", "<C-k>", "<C-w>k", opt)
-- vim.keymap.set("n", "<Leader>v", "<C-w>v", opt)
-- vim.keymap.set("n", "<Leader>s", "<C-w>s", opt)
-- vim.keymap.set("i", "jk", "<Esc>", opt)

-- -- https://www.reddit.com/r/vim/comments/2k4cbr/problem_with_gj_and_gk/
-- vim.keymap.set("n", "j", [[v:count ? 'j' : 'gj']], { noremap = true, expr = true })
-- vim.keymap.set("n", "k", [[v:count ? 'k' : 'gk']], { noremap = true, expr = true })



-- vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
-- vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
-- vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
-- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)
