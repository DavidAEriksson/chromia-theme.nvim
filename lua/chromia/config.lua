local config = {}

local defaults = {
    custom_colors = {},
    function_style = {
        bold = true,
        italic = true,
    },
    keyword_style = {
        bold = true,
        italic = true,
    },
    string_style = {
        bold = false,
        italic = true,
    },
    comment_style = {
        bold = false,
        italic = true,
    },
    boolean_style = {
        bold = true,
        italic = true,
    },
    operator_style = {
        bold = true,
        italic = true,
    },
}

config.options = {}

function config.set_options(opts)
    config.options = vim.tbl_deep_extend("force", config.options, opts or {})
end

config.set_options(defaults)

return config
