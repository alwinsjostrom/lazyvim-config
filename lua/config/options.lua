-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Disable autoformat on save
vim.g.autoformat = false

-- Indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

-- Git diff/conflicts
vim.opt.fillchars:append({ diff = "╱" })
vim.opt.diffopt:append("linematch:60")
vim.opt.list = true
-- vim.opt.listchars = { tab = "→ ", trail = "·", nbsp = "␣", space = "·" }
