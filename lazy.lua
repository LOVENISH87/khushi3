local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
       { import = "lazyvim.plugins.extras.lang.json" },
    { import = "lazyvim.plugins.extras.lang.typescript" },
{ import = "lazyvim.plugins.extras.formatting.prettier" },

       { import = "lazyvim.plugins.extras.lang.tailwind" },
    { import = "plugins" },
    {
      "numToStr/Comment.nvim",
      config = function()
        require("Comment").setup()
      end
    },
        {
      "karb94/neoscroll.nvim",
      config = function()
        require("neoscroll").setup({
          easing_function = "quadratic",
          hide_cursor = true,
          stop_eof = true,
          respect_scrolloff = false,
          cursor_scrolls_alone = true,
          horiz_scroll = false
        })
      end
    },
  },

  defaults = {
    lazy = false,
    version = false,
  },

  install = { colorscheme = { "tokyonight", "habamax" } },

  checker = {
    enabled = true,
    notify = false,
  },

  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})

-- ❗ LOAD SHIFTSELECT AFTER LAZY SETUP
require("config.shiftselect").setup()
