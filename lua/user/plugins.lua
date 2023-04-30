-- autocommand that reloads neovim whenever this file gets saved
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]


-- make sure we can require packer before actually using it
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    print("unable to require packer")
    return
end

-- install plugins
return packer.startup(function()
  use 'wbthomason/packer.nvim' -- Package manager
  use { 'rose-pine/neovim', as = 'rose-pine'} -- Color Theme
  -- use { 'fratajczak/one-monokai-vim', as = 'one-monokai'}
  -- use { 'AhmedAbdulrahman/vim-aylin', as = 'aylin' }
  -- use { 'adrian5/oceanic-next-vim', as = 'oceanicnext' }

  -- Syntax
  use 'mfussenegger/nvim-lint'
  use 'mhartington/formatter.nvim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } -- Better syntax highlighting

  -- LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {                                      -- Optional
        'williamboman/mason.nvim',
        run = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      {'williamboman/mason-lspconfig.nvim'}, -- Optional
  
      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
    }
  }

  -- Fuzzy Finding
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Debugging
  use 'mfussenegger/nvim-dap'
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
  
  -- Language-specific
  -- Go
  use 'leoluz/nvim-dap-go'
  -- Rust
  use 'simrat39/rust-tools.nvim'


end)


