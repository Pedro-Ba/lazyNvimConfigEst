return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/nvim-cmp",
--      "hrsh7th/cmp-path",
        "hrsh7th/cmp-nvim-lsp-signature-help",
    },

    config = function()
        local cmp = require("cmp")
        local cmp_lsp = require("cmp_nvim_lsp")
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed =  {
                "lua_ls",
            },
            handlers =  {
                function(server_name)
                    require("lspconfig")[server_name].setup({})
                end
            },
        })
        local cmp_select = { behavior = cmp.SelectBehavior.Select }
        cmp.setup({
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered()
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
                ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
                ['<CR>'] = cmp.mapping.confirm({ select = true }),
                ["<C-Space>"] = cmp.mapping.complete(),
            }),
            sources = {
                { name = 'nvim_lsp' },
                { name = 'path' },
                { name = 'nvim_lsp_signature_help' }
            }
        })
    end
}
