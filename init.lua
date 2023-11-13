local set = vim.o
set.number = true
set.clipboard = "unnamed"
set.relativenumber = true
set.termguicolors = false
set.tabstop = 2
set.smarttab = true
set.scrolloff = 6
set.ignorecase = true
set.smartcase = true

-- 在 copy 后高亮
vim.api.nvim_create_autocmd({ "TextYankPost" }, {
	pattern = { "*" },
	callback = function()
		vim.highlight.on_yank({
			timeout = 300,
		})
	end,
})

-- keybindings 
local opt = { noremap = true, silent = true }
vim.g.mapleader = " "
vim.keymap.set("n", "<C-l>", "<C-w>l", opt)
vim.keymap.set("n", "<C-h>", "<C-w>h", opt)
vim.keymap.set("n", "<C-j>", "<C-w>j", opt)
vim.keymap.set("n", "<C-k>", "<C-w>k", opt)
vim.keymap.set("n", "<Leader>v", "<C-w>v", opt)
vim.keymap.set("n", "<Leader>s", "<C-w>s", opt)
vim.keymap.set("i", "jk", "<Esc>", opt)

-- https://www.reddit.com/r/vim/comments/2k4cbr/problem_with_gj_and_gk/
vim.keymap.set("n", "j", [[v:count ? 'j' : 'gj']], { noremap = true, expr = true })
vim.keymap.set("n", "k", [[v:count ? 'k' : 'gk']], { noremap = true, expr = true })


-- lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({
{
    "2nthony/vitesse.nvim",
    dependencies = {
      "tjdevries/colorbuddy.nvim"
    },
  },
   {
  "folke/persistence.nvim",
  event = "BufReadPre", -- this will only start session saving when an actual file was opened
  },
    {
      cmd="Telescope",
      'nvim-telescope/telescope.nvim', tag = '0.1.4',
      dependencies = { 'nvim-lua/plenary.nvim' },
      keys = {
	{ "<leader>p", ":Telescope find_files<CR>", desc = "find files" },
	{ "<leader>P", ":Telescope live_grep<CR>", desc = "grep file" },
	{ "<leader>rs", ":Telescope resume<CR>", desc = "resume" },
	{ "<leader>q", ":Telescope oldfiles<CR>", desc = "oldfiles" },
      },
      config = function()
	require('telescope').setup{
	
	defaults = {
	   file_ignore_patterns = { "node_modules" }
	 }
	}

      end
    },
{
    "williamboman/mason.nvim",
    event = "VeryLazy",
    config = function()
	    require("mason").setup()
	end
},
{
	  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
},
{
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true },
  config = function()
				require('lualine').setup {
           options = { theme = 'codedark' } 
				}
	end
}

})



