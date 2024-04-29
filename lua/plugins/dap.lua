return {
  {
        'mfussenegger/nvim-dap',
        dependencies = {
        {
          "williamboman/mason.nvim",
          opts = function(_, opts)
            opts.ensure_installed = opts.ensure_installed or {}
            vim.list_extend(opts.ensure_installed, { "delve" })
          end,
        },
    },
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {"mfussenegger/nvim-dap"},
  },
  {
    'leoluz/nvim-dap-go',
    config = function()
      require('dap-go').setup()
    end,
  },
}
