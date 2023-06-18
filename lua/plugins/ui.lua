return{
  --设置主题
  { "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000 ,
  config=function()
    vim.cmd.colorscheme "catppuccin"
  end,
},
  --设置目录树
  {
    'nvim-tree/nvim-tree.lua',
    dependencies='nvim-tree/nvim-web-devicons',
    keys={
      {"<leader>e","<cmd>NvimTreeToggle<Cr>",desc="open or close the NvimTree"},
    },
    config=function()
      require("nvim-tree").setup({
        sort_by = "case_sensitive",
        view = {
          width = 25,
        },
        renderer = {
          group_empty = true,
        },
        filters = {
          dotfiles = true,
        },
      })
    end,
  },
  --设置底部tab
  {
    'nvim-lualine/lualine.nvim',
    event = {"BufReadPost","BufNewFile"},
    dependencies = 'nvim-tree/nvim-web-devicons',
    config=function()
      require('lualine').setup({options = { theme = 'catppuccin' },})
    end,
  },
  --bufferline 设置
  {
    'akinsho/bufferline.nvim',
    version = "*",
    event = {"BufReadPost","BufNewFile"},
    dependencies = 'nvim-tree/nvim-web-devicons',
    config=function()
      require("bufferline").setup{
        options={
          offsets = {
            {
              filetype = "NvimTree",
              text = "File Explorer",
              text_align = "left",
              separator = true
            }
          },
        },
        }
    end,
  },
  {
     'goolord/alpha-nvim',
    event = "VimEnter",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
     config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
  }
}
