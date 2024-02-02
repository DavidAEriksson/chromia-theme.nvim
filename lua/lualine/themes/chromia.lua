local C = require "chromia.colors"

local chromia = {}

chromia.normal = {
    a = { bg = C.orange, fg = C.black1, gui = "bold" },
    b = { bg = C.gray1, fg = C.white1 },
    c = { bg = C.dark, fg = C.fg },
}

chromia.insert = {
    a = { bg = C.diff_add, fg = C.black1, gui = "bold" },
    b = { bg = C.gray1, fg = C.white1 },
    c = { bg = C.dark, fg = C.fg },
}

chromia.command = {
    a = { bg = C.context, fg = C.black1, gui = "bold" },
    b = { bg = C.gray1, fg = C.white1 },
    c = { bg = C.dark, fg = C.fg },
}

chromia.visual = {
    a = { bg = C.red_err, fg = C.black1, gui = "bold" },
    b = { bg = C.gray1, fg = C.white1 },
    c = { bg = C.dark, fg = C.fg },
}

chromia.replace = {
    a = { bg = C.boolean, fg = C.black1, gui = "bold" },
    b = { bg = C.gray1, fg = C.white1 },
    c = { bg = C.dark, fg = C.fg },
}

chromia.terminal = {
    a = { bg = C.blue_type, fg = C.black1, gui = "bold" },
    b = { bg = C.gray1, fg = C.white1 },
    c = { bg = C.dark, fg = C.fg },
}

chromia.inactive = {
    a = { bg = C.gray2, fg = C.black0, gui = "bold" },
    b = { bg = C.gray1, fg = C.white1 },
    c = { bg = C.bg_statusline, fg = C.white0 },
}

return chromia
