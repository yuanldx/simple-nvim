return{
  {"williamboman/mason.nvim",
   event ="VeryLazy",
   build = ":MasonUpdate",
  config=function()
    require("mason").setup({
      ui = {
          icons = {
              package_installed = "✓",
              package_pending = "➜",
              package_uninstalled = "✗"
          }
      }
    })
  end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    event={"BufReadPost","BufNewFile"},
    dependencies="neovim/nvim-lspconfig",
    config=function()

      require("mason-lspconfig").setup {
        ensure_installed = { "lua_ls", "rust_analyzer","pyright","html","clangd","cssls","tsserver","emmet_ls"}
      }

      local servers= { "lua_ls", "pyright","html","clangd","cssls","tsserver","emmet_ls"}
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require('lspconfig')
      for _, server in ipairs(servers) do
        lspconfig[server].setup({
          capabilities = capabilities
          })
      end
  end
  }
}
