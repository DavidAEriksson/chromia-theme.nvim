local util = require "chromia.util"
local theme = require "chromia.theme"

vim.o.background = "dark"
vim.g.colors_name = "chromia"

util.load(theme)
