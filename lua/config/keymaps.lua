local map=vim.api.nvim_set_keymap
local opt={noremap=true,silent=true}

--改esc按键为jk
map("i","jk","<esc>",opt)

--设置lazy
map("n","<leader>lz","<cmd>Lazy<Cr>",opt)

--适合退出快捷键
map("n","<leader>qq","<cmd>w<Cr><cmd>source<Cr><cmd>q<Cr>",opt)
--窗口分割和
map("n","<leader>|",":vsp<Cr>",opt)
map("n","<leader>-",":sp<Cr>",opt)

--关闭窗口
map("n","<leader>wc","<C-w>c",opt)
map("n","<leader>wo",":only<Cr>",opt)

--移动窗口
map("n","<leader>h","<C-w>h",opt)
map("n","<leader>j","<C-w>j",opt)
map("n","<leader>k","<C-w>k",opt)
map("n","<leader>l","<C-w>l",opt)

--调整窗口大小
map("n", "<A-Up>", "<cmd>resize +2<cr>",opt)
map("n", "<A-Down>", "<cmd>resize -2<cr>",opt)
map("n", "<A-Left>", "<cmd>vertical resize -2<cr>",opt)
map("n", "<A-Right>", "<cmd>vertical resize +2<cr>",opt)

--各模式下移动行
map("n", "<A-j>", "<cmd>m .+1<cr>==",opt)
map("n", "<A-k>", "<cmd>m .-2<cr>==",opt)
map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi",opt)
map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi",opt)
map("v", "<A-j>", ":m '>+1<cr>gv=gv",opt)
map("v", "<A-k>", ":m '<-2<cr>gv=gv",opt)

--快捷键锁进行
map("v", "<", "<gv",opt)
map("v", ">", ">gv",opt)

--bufferline设置
  --1.根据buffer上字母标记选择要关闭的单个buffer
map("n","<leader>bc","<cmd>BufferLinePickClose<Cr>",opt)
--2.关闭除当前外所有buffeer
map("n","<leader>bo","<cmd>BufferLineCloseLeft<Cr><md>BufferLineCloseRight<Cr>",opt)
--3.设置向当前buffer的下一个buffer移动边移h 
map("n","<leader>bn","<cmd>BufferLineCycleNext<Cr>",opt)
--3.设置向当前buffer的上一个buffer边移动 
map("n","<leader>bp","<cmd>BufferLineCyclePrev<Cr>",opt)

--设置终端
map("t","<Esc>","<C-\\><C-n>",opt)
-- Lua
map("n", "<leader>xx", "<cmd>TroubleToggle<cr>",opt)
map("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>",opt)
map("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>",opt)
map("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>",opt)
map("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",opt)
map("n", "gR", "<cmd>TroubleToggle lsp_references<cr>",opt)
















