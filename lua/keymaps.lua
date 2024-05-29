vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}

-----------------
-- Normal mode --
-----------------

-- Resize with arrows
-- delta: 2 lines
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- alt + m 打开或关闭文件浏览器
vim.keymap.set("n", "<A-m>", ":NvimTreeToggle<CR>", opts) 

-- Telescope
-- 查找文件
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", opts)
-- 全局搜索
vim.keymap.set("n", "<leader>lg", ":Telescope live_grep<CR>", opts)

-- 标签操作
vim.api.nvim_set_keymap("n", "<leader>1", ":BufferLineGoToBuffer 1<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>2", ":BufferLineGoToBuffer 2<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>3", ":BufferLineGoToBuffer 3<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>4", ":BufferLineGoToBuffer 4<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>5", ":BufferLineGoToBuffer 5<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>6", ":BufferLineGoToBuffer 6<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>7", ":BufferLineGoToBuffer 7<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>8", ":BufferLineGoToBuffer 8<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>9", ":BufferLineGoToBuffer 9<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-l>", ":BufferLineCycleNext<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-h>", ":BufferLineCyclePrev<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>bg", ":BufferLinePick<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>c", ":bdelete %<CR>", opts)

-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)