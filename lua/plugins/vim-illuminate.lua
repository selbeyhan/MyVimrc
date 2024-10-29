return {
  "RRethy/vim-illuminate",
  lazy = false,
  config = function()
    require('illuminate').configure({})
  end
}
-- If there is multiple instances of a variable/word, they are highlighted
