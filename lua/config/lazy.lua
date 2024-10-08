-- Bootstrap lazy.nvim
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
require('config.globals')
require('config.options')
require('config.keymaps')

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPluigin = 1

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Setup lazy.nvim
require("lazy").setup('plugins')
require("nvim-tree").setup()

local opts = {
  defaults = { lazy = true },
  rtp = { disabled_plugins = {
    "gzip",
    "matchit",
    "matchparen",
    "netrw",
    "netrwPlugin",
    "tarPlugin",
    "tohtml",
    "tutor",
    "zipPlugin",
  }
}
}
