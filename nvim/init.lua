vim.g.neovide_scale_factor = 1
vim.g.neovide_transparency = 0.7
vim.g.neovide_background_color = "#240f16"

vim.wo.number = true  
vim.wo.wrap = false
vim.opt.relativenumber = true
vim.opt.smartindent = true
vim.o.guifont = "Terminess Nerd Font Mono:h15:#e-antialias:b"
-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
