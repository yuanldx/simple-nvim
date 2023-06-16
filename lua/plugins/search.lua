return{
  'nvim-telescope/telescope.nvim', tag = '0.1.1',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys={
    {'<leader>ff','<cmd>Telescope find_files<cr>',desc='find_files'},
    {'<leader>fg','<cmd>Telescope live_grep<cr>',desc='live_grep'},
    {'<leader>fb','<cmd>Telescope buffers<cr>',desc="buffers"},
    {'<leader>fs','<cmd>Telescope grep_string<cr>',desc="grep_string"},
    {'<leader>fo','<cmd>Telescope oldfile<cr>',desc="oldfile"},
    {'<leader>fj','<cmd>Telescope jumplist<cr>',desc="jumplist"},
  },
}
