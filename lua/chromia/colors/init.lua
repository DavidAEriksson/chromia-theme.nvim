local M = {}

local chromia = require "chromia.colors.chromia"

M.load = function()
    local theme = require("chromia.config").options.theme
    if not theme then
        theme = vim.o.background
    end

    -- This will enable theme toggling in the future
    -- when there are more sub-themes
    if theme == "chromia" then
        return chromia
    end
end

return M
