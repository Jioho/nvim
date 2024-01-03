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
  -- {
  --   "unblevable/quick-scope",
  --   event = "VeryLazy",
  --   init = function()
  --     vim.g.qs_highlight_on_keys = { 'f', 'F', 't', 'T' }
  --   end,
  --   config = function() -- 禁用默认高亮
  --     vim.cmd([[highlight QuickScopePrimary guifg='#6699cc' gui=underline ctermfg=155 cterm=underline]])
  --     vim.cmd([[highlight QuickScopeSecondary guifg='#a074c4' gui=underline ctermfg=81 cterm=underline]])
  --   end
  -- },
  -- {
  --   "easymotion/vim-easymotion",
  --   config = function()
  --     vim.keymap.set({ "x", "n" }, '<leader>f', '<Plug>(easymotion-bd-f)', {})
  --   end
  -- },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    keys = {
      { "f",         mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "<leader>f", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "F",         mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "t",         mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "T",         mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    },
  },
  -- {
  --   "mg979/vim-visual-multi",
  --   event = "VeryLazy"
  -- },
  -- vscode plugins
  {
    'vscode-neovim/vscode-multi-cursor.nvim',
    event = 'VeryLazy',
    cond = not not vim.g.vscode,
    init = function()
      require("vscode-multi-cursor").setup({
        default_mappings = true
      })

      vim.keymap.set('n', '<C-d>', 'mciw*<Cmd>nohl<CR>', { remap = true })
      vim.keymap.set({ "i" }, "<C-d>", function()
        require("vscode-multi-cursor").addSelectionToNextFindMatch()
      end)
    end
  }
})