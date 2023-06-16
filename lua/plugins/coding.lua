return{
  ---treesitter美化
  {
    'nvim-treesitter/nvim-treesitter',
    event = {"BufReadPre","BufNewFile"},
    config=function()
      require'nvim-treesitter.configs'.setup {
        ensure_installed = { "c", "lua", "vim", "vimdoc",},
        highlight = {enable = true,additional_vim_regex_highlighting = true,},
        indent = {enable = true},
        incremental_selection = {
            enable = true,
            keymaps = {
              init_selection = "gnn",
              node_incremental = "grn",
              scope_incremental = "grc",
              node_decremental = "grm",
            },
          },
      }
    end,
  },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {} -- this is equalent to setup({}) function
  },
  --注释键
  {
    'numToStr/Comment.nvim',
    event ="InsertEnter",
    config = function()
        require('Comment').setup()
    end
  },
  ----为了周围添加更换符号  
  {
--    surr*ound_words             ysiw)           (surround_words)
--    *make strings               ys$"            "make strings"
--    [delete ar*ound me!]        ds]             delete around me!
--    remove <b>HTML t*ags</b>    dst             remove HTML tags
--    'change quot*es'            cs'"            "change quotes"
--    <b>or tag* types</b>        csth1<CR>       <h1>or tag types</h1>
--    delete(functi*on calls)     dsf             function calls
    "kylechui/nvim-surround",
    version = "*",
    event = "InsertEnter",
    config = function()
        require("nvim-surround").setup({
        })
    end
  },
}
