return {
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    dependencies = {
      {'neovim/nvim-lspconfig'},
      {
        'williamboman/mason.nvim',
        config = function()
          require('mason').setup({})
        end,
      },
      {
        'williamboman/mason-lspconfig.nvim',
        config = function()
          require('mason-lspconfig').setup({
            ensure_installed = {},
            handlers = {
              function(server_name)
                require('lspconfig')[server_name].setup({})
              end,
            },
          })
        end
      },
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/nvim-cmp'},
      {'L3MON4D3/LuaSnip'},
    },
    config = function()
      local lsp_zero = require('lsp-zero')
      lsp_zero.on_attach(function(client, bufnr)
        -- see :help lsp-zero-keybindings
        -- to learn the available actions
        lsp_zero.default_keymaps({buffer = bufnr})
      end)
    end
  }
}
