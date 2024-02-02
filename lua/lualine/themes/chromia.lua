local C = require "chromia.colors"

local chromia = {}

chromia.normal = {
    a = { bg = C.orange, fg = C.black0, gui = "bold" },
    b = { bg = C.gray1, fg = C.white1 },
    c = { bg = C.bg_statusline, fg = C.white0 },
}

chromia.insert = {
    a = { bg = C.green, fg = C.black0, gui = "bold" },
    b = { bg = C.gray1, fg = C.white1 },
    c = { bg = C.bg_statusline, fg = C.white0 },
}

chromia.command = {
    a = { bg = C.cyan.bright, fg = C.black0, gui = "bold" },
    b = { bg = C.gray1, fg = C.white1 },
    c = { bg = C.bg_statusline, fg = C.white0 },
}

chromia.visual = {
    a = { bg = C.red.bright, fg = C.black0, gui = "bold" },
    b = { bg = C.gray1, fg = C.white1 },
    c = { bg = C.bg_statusline, fg = C.white0 },
}

chromia.replace = {
    a = { bg = C.magenta.bright, fg = C.black0, gui = "bold" },
    b = { bg = C.gray1, fg = C.white1 },
    c = { bg = C.bg_statusline, fg = C.white0 },
}

chromia.terminal = {
    a = { bg = C.blue2, fg = C.black0, gui = "bold" },
    b = { bg = C.gray1, fg = C.white1 },
    c = { bg = C.bg_statusline, fg = C.white0 },
}

chromia.inactive = {
    a = { bg = C.gray2, fg = C.black0, gui = "bold" },
    b = { bg = C.gray1, fg = C.white1 },
    c = { bg = C.bg_statusline, fg = C.white0 },
}

return chromia
