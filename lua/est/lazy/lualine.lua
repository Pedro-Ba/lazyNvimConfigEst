return {
    "nvim-lualine/lualine.nvim",
    config = function()
        require("lualine").setup({
            options = {
                icons_enabled = false,
 --               theme = 'catppuccin',
                ignore_focus = {},
                always_divide_middle = true,
                globalstatus = true,
                refresh = {
                    statusline = 1000,
                    tabline = 1000,
                    winbar = 1000,
                }
            },
            sections = {
                lualine_a = { 'mode' },
                lualine_b = { 'branch', 'diff', 'diagnostics' },
                lualine_c = { 'filename' },
                lualine_x = { 'encoding', 'fileformat', 'filetype' },
                lualine_y = { 'progress' },
                lualine_z = { 'location' }
            },
            inactive_sections = {
                lualine_c = { 'filename' },
                lualine_x = { 'location' },
            },
            extensions = { "nvim-tree" },
        })
    end
}
