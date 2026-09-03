vim.pack.add({
    "https://github.com/nvim-treesitter/nvim-treesitter",
    {
        src = "https://github.com/bluz71/vim-moonfly-colors",
        name = "moonfly"
    },
    {
        src = "https://github.com/aserowy/tmux.nvim",
        name = "tmux.nvim"
    },

    "https://github.com/nvim-neo-tree/neo-tree.nvim",
    "https://github.com/nvim-lua/plenary.nvim",
    "https://github.com/MunifTanjim/nui.nvim",
    "https://github.com/nvim-tree/nvim-web-devicons",

    "https://github.com/folke/which-key.nvim",
})

require("nvim-treesitter").setup({})
require("neo-tree").setup({})
require("which-key").setup({
    event = 'VimEnter',
    opts = {
        delay = 0,
        icons = {
            mappings = vim.g.have_nerd_font

        }
    }
})
require("tmux").setup({})
vim.cmd.colorscheme("moonfly")
