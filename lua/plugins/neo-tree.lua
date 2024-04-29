return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    config = function()
        require("neo-tree").setup({
            filesystem = {
                use_libuv_file_watcher = true,
                follow_current_file = {
                    enabled = true,
                }
            }
        })
        
        vim.keymap.set('n', '<leader>ee', '<cmd>Neotree toggle right reveal<CR>', { desc = 'toggle neotree'} )
    end
}