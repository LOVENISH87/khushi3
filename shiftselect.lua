local M = {}

function M.setup()
  local map = vim.api.nvim_set_keymap
  local opts = { noremap = true, silent = true }

  -- Normal mode: Shift selects
  map("n", "<S-Left>", "v<Left>", opts)
  map("n", "<S-Right>", "v<Right>", opts)
  map("n", "<S-Up>", "v<Up>", opts)
  map("n", "<S-Down>", "v<Down>", opts)

  -- Visual mode: shift extends selection
  map("v", "<S-Left>", "<Left>", opts)
  map("v", "<S-Right>", "<Right>", opts)
  map("v", "<S-Up>", "<Up>", opts)
  map("v", "<S-Down>", "<Down>", opts)
end

return M
