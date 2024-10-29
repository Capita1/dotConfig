--NVIM config
vim.wo.number = true  
vim.wo.wrap = false
vim.opt.relativenumber = true
vim.opt.smartindent = true
vim.o.guifont = "Terminess Nerd Font Mono:h15:#e-antialias:b"
--NEOVIDE config
vim.g.neovide_scale_factor = 1
vim.g.neovide_transparency = 0.5
vim.g.neovide_background_color = "#000000"
--LAZY plugins
require("config.lazy")
--LSP server
require'lspconfig'.pyright.setup{}