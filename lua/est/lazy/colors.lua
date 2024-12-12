return {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    dependencies = {
        { "rose-pine/neovim", name = "rose-pine" },
        "AlexvZyl/nordic.nvim",
 --       "scottmckendry/cyberdream.nvim",
        "rebelot/kanagawa.nvim",
        "folke/tokyonight.nvim"
    },
    config = function()
        vim.cmd.colorscheme('kanagawa')
    end
}
