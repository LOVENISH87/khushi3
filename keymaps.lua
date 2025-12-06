-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
--
-- 
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Normal mode: Select All
map("n", "<C-a>", "ggVG", opts)

-- Normal mode: Copy all (yank entire buffer)
map("n", "<C-c>", "ggVGy", opts)

-- Normal mode: Delete current line
--map("n", "<C-d>", "dd", opts)

-- Normal mode: Shift + Arrow to start selection
--map("n", "<S-Left>", "v<Left>", opts)
--map("n", "<S-Right>", "v<Right>", opts)
--map("n", "<S-Up>", "v<Up>", opts)
--map("n", "<S-Down>", "v<Down>", opts)

--M Visual mode: Shift + Arrow to extend selection
--map("v", "<S-Left>", "<Left>", opts)
--map("v", "<S-Right>", "<Right>", opts)
--map("v", "<S-Up>", "<Up>", opts)
--map("v", "<S-Down>", "<Down>", opts)
--
--

vim.keymap.set("n", "<LeftMouse>", function()
  vim.cmd("normal! gv")
  vim.cmd("startinsert")
end, { silent = true })
