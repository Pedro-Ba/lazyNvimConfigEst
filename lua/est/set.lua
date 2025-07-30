vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
-- vim.opt.expandtab = true

vim.opt.scrolloff = 8

vim.opt.listchars = { tab = '┨─' , eol = '↴' }
vim.opt.list = true

vim.api.nvim_create_augroup("RetabSettings", {clear = true })
vim.api.nvim_create_autocmd("BufReadPost", {
    group = "RetabSettings",
    pattern = "*",
    callback = function ()
        vim.opt_local.expandtab = false
        vim.cmd("retab! 4")
    end
})
vim.api.nvim_create_autocmd("BufWritePre", {
    group = "RetabSettings",
    pattern = "*",
    callback = function ()
        vim.opt_local.expandtab = true 
        vim.cmd("retab! 4")
    end
})
vim.api.nvim_create_autocmd("BufWritePost", {
    group = "RetabSettings",
    pattern = "*",
    callback = function ()
        vim.opt_local.expandtab =false
        vim.cmd("retab! 4")
    end
})
