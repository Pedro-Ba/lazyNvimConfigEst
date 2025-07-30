return {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    lazy = false,
    priority = 1000,
    dependencies = {
        "AlexvZyl/nordic.nvim",
--      "catppuccin/nvim",
 --       "scottmckendry/cyberdream.nvim",
        "folke/tokyonight.nvim"
    },
    config = function()
        vim.cmd.colorscheme('kanagawa')
    end
}
