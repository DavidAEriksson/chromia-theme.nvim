package.loaded["chromia"] = nil
package.loaded["chromia.colors"] = nil
package.loaded["chromia.colors.chromia"] = nil
package.loaded["chromia.colors.groups"] = nil
package.loaded["chromia.colors.init"] = nil
package.loaded["chromia.config"] = nil
package.loaded["chromia.init"] = nil
package.loaded["chromia.theme"] = nil
package.loaded["chromia.utils"] = nil
package.loaded["chromia.lualine.themes.chromia"] = nil
vim.api.nvim_set_keymap("n", ",r", ":luafile colors/chromia.lua<CR>", {})
vim.api.nvim_set_keymap("n", ",s", ":colorscheme nordic<CR>", {})
local chromia = require "chromia"
chromia.setup { theme = "chromia" }
chromia.load()
