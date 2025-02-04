local keymap = vim.keymap

-- Directory Navigation
keymap.set("n", "<leader>m", ":NvimTreeFocus<CR>", { noremap = true, silent = true})
keymap.set("n", "<leader>F", ":NvimTreeToggle<CR>", { noremap = true, silent = true})
keymap.set("n", "<leader>ca", ":NvimTreeCollapse<CR>", { noremap = true, silent = true})
keymap.set("n", "<leader>cb", ":NvimTreeCollapseKeepBuffers<CR>", { noremap = true, silent = true})
keymap.set("i", "jk", "<esc>") 

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

-- Deleting
keymap.set("n", "Q", "\"_\"", { noremap = true, silent = true})

-- Terminal
keymap.set("n", "<leader>t", ":terminal<CR>", { noremap = true, silent = true})
keymap.set("n", "<leader>T", ":split<CR> :terminal<CR> :resize 10<CR>", { noremap = true, silent = true})
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-N>", { noremap = true, silent = true })

