return {
  "williamboman/mosan.nvim",
  cmd = "Mason",
  event = "BufReadPre",
  config {
    ui = {
      icons = {
        package_installed = "✓",
        package_pending = "➜",
        package_uninstalled = "✗",
      }
    }
  }
}
