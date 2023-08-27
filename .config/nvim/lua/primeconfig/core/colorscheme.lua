-- setting colorscheme
-- vim.cmd("colorscheme oxocarbon")
-- vim.cmd.colorscheme("oxocarbon")
vim.cmd.colorscheme("rose-pine")
-- making it transparent

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
