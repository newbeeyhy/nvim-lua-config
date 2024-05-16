vim.g.encoding = "UTF-8"
vim.o.fileencoding = "utf-8"	-- 编码方式 utf8
						
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8			-- jkhl 移动时光标周围保留8行

vim.wo.number = true			-- 显示行号

vim.wo.relativenumber = true	-- 使用相对行号

vim.wo.cursorline = true 		-- 高亮所在行

vim.wo.signcolumn = "yes"		-- 显示左侧图标指示列

vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftround = true			-- 缩进字符

vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4			-- >> << 时移动长度

vim.o.expandtab = true
vim.bo.expandtab = true			-- 空格替代tab

vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true		-- 新行对齐当前行

vim.o.ignorecase = true
vim.o.smartcase = true			-- 搜索大小写不敏感，除非包含大写

vim.o.hlsearch = false			-- 搜索不要高亮

vim.o.incsearch = true

vim.o.cmdheight = 1 			-- 命令模式行高

vim.o.autoread = true
vim.bo.autoread = true 			-- 自动加载外部修改

vim.wo.wrap = false				-- 禁止折行

vim.o.whichwrap = "<,>,[,]"		-- 光标在行首尾时<Left><Right>可以跳到下一行

vim.o.hidden = true				-- 允许隐藏被修改过的buffer

vim.o.mouse = "a"				-- 鼠标支持

vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false			-- 禁止创建备份文件

vim.o.updatetime = 300			-- smaller updatetime
 
vim.o.timeoutlen = 500
 
vim.o.splitbelow = true
vim.o.splitright = true

-- vim.o.background = "dark"
-- vim.o.termguicolors = true
-- vim.opt.termguicolors = true	-- 样式

vim.o.list = false				
 
vim.o.wildmenu = true
 
vim.o.pumheight = 10  			-- 补全显示10行

vim.o.shortmess = vim.o.shortmess .. "c"

vim.o.clipboard = "unnamedplus"

vim.o.listchars = "space:·,tab:>-"							-- 不可见字符的显示，这里只把空格显示为一个点

vim.g.completeopt = "menu,menuone,noselect,noinsert"		-- 自动补全不自动选中