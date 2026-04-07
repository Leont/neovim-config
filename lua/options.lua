require "nvchad.options"

-- add yours here!

local o = vim.o
o.cursorlineopt = 'both' -- to enable cursorline!
o.expandtab = false
o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4
o.ignorecase = false
o.number = false
o.whichwrap = '[]hl,b,s'

local api = vim.api

api.nvim_create_autocmd('BufRead', {
	pattern = "Changes",
	callback = function()
		o.expandtab = true
	end,
})
