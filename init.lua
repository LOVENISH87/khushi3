-- bootstrap lazy, LazyVim and your plugins
require("config.lazy")


require("lazy").setup({
    {
        "brianhuster/autosave.nvim",
        event="InsertEnter",
        opts = {} -- Configuration here
    },
})
require("config.keymaps")

-- Select all mapping
vim.api.nvim_set_keymap("n", "<C-a>", "ggVG", { noremap = true, silent = true })

local opts = { noremap = true, silent = true }

-- Normal mode: delete one word backward
vim.api.nvim_set_keymap('n', '<C-BS>', 'db', opts)

-- Insert mode: delete one word backward
vim.api.nvim_set_keymap('i', '<C-BS>', '<C-W>', opts)



vim.opt.mouse = "a"
vim.opt.scroll = 5
vim.opt.smoothscroll = true

