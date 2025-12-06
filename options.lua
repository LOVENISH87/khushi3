-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
--
-- Trackpad scroll improvements
local opt = vim.opt

-- Enable mouse (trackpad scrolling works)
opt.mouse = "a"

-- Scroll speed
opt.scroll = 5

-- Enable Neovim's smooth scrolling
opt.smoothscroll = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false

