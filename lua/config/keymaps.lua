vim.g.mapleader = " "
local mode_nv = { "n", "v" }
local mode_v = { "v" }
local mode_i = { "i" }

local mappings = {
  { from = "jk",        to = "<Esc>",    mode = mode_i },
  -- window
  { from = "<C-l>",     to = "<C-w>l" },
  { from = "<C-h>",     to = "<C-w>h" },
  { from = "<C-j>",     to = "<C-w>j" },
  { from = "<C-k>",     to = "<C-w>k" },
  { from = "<Leader>v", to = "<C-w>v" },
  { from = "<Leader>s", to = "<C-w>s" },
  -- others
  { from = "<Leader>n", to = ":nohl<CR>" },
}

for _, mapping in ipairs(mappings) do
  vim.keymap.set(mapping.mode or "n", mapping.from, mapping.to, { noremap = true, silent = true })
end

-- https://www.reddit.com/r/vim/comments/2k4cbr/problem_with_gj_and_gk/
vim.keymap.set("n", "j", [[v:count ? 'j' : 'gj']], { noremap = true, expr = true })
vim.keymap.set("n", "k", [[v:count ? 'k' : 'gk']], { noremap = true, expr = true })
