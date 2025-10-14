return {
  "nvim-tree/nvim-tree.lua",
  lazy = false,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("nvim-tree").setup({
      filters = {
        dotfiles = false,
        git_ignored = false, -- show files from .gitignore
      },
      git = {
        enable = true,       -- keep git status icons
        -- ignore = false,   -- <— only for very old nvim-tree; leave commented
      },
      view = {
        adaptive_size = true,
        width = 10,
      },
      hijack_netrw = true,
      disable_netrw = true,
      update_focused_file = {
        enable = true,
        update_root = false,
      },
    })

    -- Optional: quick toggle for .gitignore filter
    vim.keymap.set("n", "<leader>gi", function()
      require("nvim-tree.api").tree.toggle_gitignore_filter()
    end, { desc = "NvimTree: Toggle .gitignore filter" })
  end,
}
