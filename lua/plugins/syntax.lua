return {
  'mfussenegger/nvim-lint',
  'mhartington/formatter.nvim',
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = {
            -- required by treesitter
            "c",
            "lua",
            "vim",
            "vimdoc",
            "query",
            -- others
            "elixir",
            "go",
            "heex",
            "html",
            "javascript",
            "rust",
          },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
  },
}
