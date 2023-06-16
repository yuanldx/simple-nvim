--设置mapleader
vim.g.mapleader=" "
--禁用netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- 设置终端编码格式为 utf-8
vim.opt.termencoding = "utf-8"
--设置行号和相对行号
vim.opt.number=true
vim.opt.relativenumber=true
--开启语法高亮
vim.opt.syntax = "enable"
--高亮所在行
vim.opt.cursorline=true
--自动换行
vim.opt.wrap=true
--显示光标位置
vim.opt.ruler=true
--边输入边搜索
vim.opt.incsearch=true
--开启搜索匹配高亮
vim.opt.hlsearch=true
--搜素时自动判断是否需要大小写
vim.opt.smartcase=true
--允许鼠标
vim.opt.mouse='a'
--tab设置为2个空格
vim.opt.tabstop=2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
-- 新行对齐当前行，tab转换为空格
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
-- << >> 缩进时移动的长度
vim.opt.shiftwidth = 2
-- 设置自动折叠
vim.opt.smartindent = true
-- 显示空白字符
vim.opt.list = true
--开启真彩
vim.opt.termguicolors = true
-- 使用jk移动光标时，上下方保留8行
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
