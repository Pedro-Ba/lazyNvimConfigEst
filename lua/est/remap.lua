vim.g.mapleader = "\\"
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--lsp remaps
vim.keymap.set("n", '<leader>lf', function()
    vim.lsp.buf.format({ async = true })
end)

vim.keymap.set("n", '<leader>lr', function()
    vim.lsp.buf.rename()
end)

vim.keymap.set("n", "<leader>a", function()
    vim.lsp.buf.code_action()
end)
--lsp remaps
