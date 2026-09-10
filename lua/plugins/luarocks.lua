return {
 "vhyrro/luarocks.nvim",
 priority = 1001, -- this plugin needs to run before anything else
 init = function()
  local vendor = vim.fn.stdpath("data") .. "/lazy/luarocks.nvim/.rocks/share/lua/5.1/luarocks/vendor/dkjson.lua"
  if vim.uv.fs_stat(vendor) then
   package.preload["dkjson"] = function()
    return dofile(vendor)
   end
  end
 end,
 opts = {
  rocks = { "magick" },
 },
}
