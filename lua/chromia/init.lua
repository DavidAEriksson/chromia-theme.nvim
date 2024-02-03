local utils = require "chromia.utils"
local config = require "chromia.config"

local M = {}

function M.setup(options)
    config.set_options(options)
    M.load()
end

function M.load()
    local colors = require("chromia.colors").load()
    utils.load(colors)
end

return M
