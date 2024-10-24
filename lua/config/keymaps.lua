local keymap = vim.keymap

-- Directory Navigation
keymap.set("n", "<leader>m", ":NvimTreeFocus<CR>", { noremap = true, silent = true})
keymap.set("n", "<leader>f", ":NvimTreeToggle<CR>", { noremap = true, silent = true})
keymap.set("n", "<leader>ca", ":NvimTreeCollapse<CR>", { noremap = true, silent = true})
keymap.set("n", "<leader>cb", ":NvimTreeCollapseKeepBuffers<CR>", { noremap = true, silent = true})

-- Pane and Window Navigation
keymap.set("n", "<C-h>", "<C-w>h", opts) -- Navigate Left
keymap.set("n", "<C-j>", "<C-w>j", opts) -- Navigate Down
keymap.set("n", "<C-k>", "<C-w>k", opts) -- Navigate Up
keymap.set("n", "<C-l>", "<C-w>l", opts) -- Navigate Right

--Window Management
keymap.set("n", "<leader>sv", ":vsplit<CR>", opts) -- Split Vertically
keymap.set("n", "<leader>sh", ":split<CR>", opts) -- Split Horizontally
--keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", opts) -- Toggle Minimise

-- Indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Commenting
vim.api.nvim_set_keymap("n", "<C-/>", "gcc", { noremap = false })
vim.api.nvim_set_keymap("v", "<C-/>", "gcc", { noremap = false })
