--NVIM config
vim.wo.number = true  
vim.wo.wrap = false
vim.opt.relativenumber = true
vim.opt.smartindent = true
vim.o.guifont = "Terminess Nerd Font Mono:h15:#e-antialias:b"
vim.g.have_nerd_font = true
--NEOVIDE config
require("config.neovide")
--LAZY plugins
require("config.lazy")
--LSP server
require'lspconfig'.pyright.setup{}