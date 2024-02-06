local M = {}

M.load_groups = function(colors, config)
    local groups = {
        Boolean = {
            fg = colors.purple.two,
            bold = config.options.keyword_style.bold,
            italic = config.options.keyword_style.italic,
        },
        Character = { fg = colors.yellow.one },
        ColorColumn = { bg = colors.black.two },
        Comment = { fg = colors.gray.five, italic = config.options.comment_style.italic },
        Conceal = { fg = colors.white.one },
        Conditional = { fg = colors.orange.two },
        Constant = { fg = colors.red.two },
        Cursor = { fg = colors.yellow.one, bg = colors.black.one },
        CursorColumn = { fg = "NONE", bg = "NONE" },
        CursorLine = { bg = colors.black.one },
        CursorLineNr = { fg = colors.white.one, bg = colors.blue.two, bold = true },

        Debug = { fg = colors.white.one },
        Define = { fg = colors.blue.one },
        Delimiter = { fg = colors.gray.two },
        DiffAdd = { fg = colors.green.one },
        DiffAdded = { fg = colors.green.one },
        DiffChange = { fg = colors.orange.two },
        DiffDelete = { fg = colors.red.two },
        DiffRemoved = { fg = colors.red.two },
        DiffText = { fg = colors.white.one },
        DiffFile = { fg = colors.pink.one },
        DiffIndexLine = { fg = colors.gray.three },

        -- EndOfBuffer = { fg = colors.bg },
        Error = { fg = colors.red.two, bg = colors.black.one, bold = true },
        ErrorMsg = { fg = colors.gray.one, bg = colors.red.two, bold = true },
        Exception = { fg = colors.white.one },

        Float = { fg = colors.orange.one, bg = colors.white.one },
        FloatBorder = { fg = colors.purple.one, bg = colors.black.one },
        FloatTitle = { fg = colors.orange.three, bg = colors.black.one, bold = true },
        FoldColumn = { fg = colors.gray.five, bg = colors.black.one },
        Folded = { fg = colors.white.one, bg = colors.gray.five },
        Function = {
            fg = colors.purple.one,
            bold = config.options.function_style.bold,
            italic = config.options.function_style.italic,
        },

        Identifier = { fg = colors.white.one },
        Ignore = { fg = colors.gray.two },
        IncSearch = { fg = colors.black.one, bg = colors.orange.one },
        Include = { fg = colors.blue.one },

        Keyword = { fg = colors.orange.two },

        Label = { fg = colors.red.two },
        LineNr = { fg = colors.black.five, bg = "NONE" },

        Macro = { fg = colors.blue.one },
        MatchParen = { fg = colors.white.one, bg = colors.black.one },
        MatchParenCur = { underline = true },
        MatchWord = { underline = true },
        MatchWordCur = { underline = true },
        ModeMsg = { fg = colors.white.one, bg = colors.black.one },
        MoreMsg = { fg = colors.orange.one },
        MsgArea = { fg = colors.white.one, bg = colors.black.one },
        MsgSeparator = { fg = colors.white.one, bg = colors.black.one },

        NonText = { fg = colors.gray.five, italic = config.options.comment_style.italic },
        Normal = { fg = colors.white.one, bg = colors.black.one },
        NormalFloat = { bg = colors.black.one },
        NormalNC = { fg = colors.white.one, bg = colors.black.one },
        Number = { fg = colors.orange.one },

        Operator = { fg = colors.white.one },
        Pmenu = { fg = colors.white.one, bg = colors.black.one },
        PmenuSbar = { bg = colors.gray.three },
        PmenuSel = { fg = colors.black.one, bg = colors.black.one },
        PmenuThumb = { bg = colors.orange.one },
        PreCondit = { fg = colors.blue.one },
        PreProc = { fg = colors.blue.one },

        Question = { fg = colors.green.one },
        QuickFixLine = { fg = colors.orange.three },

        Repeat = { fg = colors.red.two },

        Search = { fg = colors.gray.two, bg = colors.orange.one },
        SignColumn = { bg = "NONE" },
        Special = { fg = colors.blue.one },
        SpecialChar = { fg = colors.blue.one },
        SpecialComment = { fg = colors.pink.one },
        SpecialKey = { fg = colors.gray.five, bold = true },
        SpellBad = { fg = colors.red.two, underline = true },
        SpellCap = { fg = colors.orange.two, underline = true },
        SpellLocal = { fg = colors.green.two, underline = true },
        SpellRare = { fg = colors.pink.one, underline = true },
        Statement = { fg = colors.red.two },
        StatusLine = { fg = colors.white.one, bg = colors.black.one },
        StatusLineNC = { fg = colors.black.four, bg = colors.black.two },
        StatusLineSeparator = { fg = colors.black.four },
        StatusLineTerm = { fg = colors.green.one, bg = colors.black.one },
        StatusLineTermNC = { fg = colors.black.four, bg = colors.black.one },
        StorageClass = { fg = colors.blue_type },
        String = { fg = colors.green.one },
        Structure = { fg = colors.red.two },
        Substitute = { fg = colors.black.one, bg = colors.red.two },

        TabLine = { fg = colors.white.one, bg = colors.black.four },
        TabLineFill = { fg = colors.white.one },
        TabLineSel = { fg = colors.white.one },
        Tag = { fg = colors.blue.one },
        TermCursor = { fg = colors.black.one, bg = colors.white.one },
        TermCursorNC = { fg = colors.white.one, bg = colors.black.two },
        Title = { fg = colors.purple.one, bold = true },
        Todo = { fg = colors.black.one, bg = colors.yellow.one, bold = true },
        Type = { fg = colors.yellow.one },
        Typedef = { fg = colors.yellow.one },

        Variable = { fg = colors.white.one },
        VertSplit = { fg = colors.black.two },
        Visual = { fg = "NONE", bg = colors.black.five, bold = true },
        VisualNOS = { fg = "NONE", bg = colors.black.five, bold = true },

        WarningMsg = { fg = colors.yellow.one },
        Whitespace = { fg = colors.gray.four },
        WildMenu = { fg = colors.white.one, bg = colors.black.four },
        WinSeparator = { bg = colors.black.one, fg = colors.black.two },
        lCursor = { fg = colors.black.one, bg = colors.white.one },

        --[[ -- Markdown ]]
        --[[ markdownBold = { fg = colors.white, style = "bold" }, ]]
        --[[ markdownCode = { fg = colors.orange }, ]]
        --[[ markdownCodeBlock = { fg = colors.orange }, ]]
        --[[ markdownUrl = { fg = colors.pink, style = "underline" }, ]]
        --[[ markdownCodeError = { fg = colors.red_err }, ]]
        --[[ markdownH1 = { fg = colors.white }, ]]
        --[[ markdownH2 = { fg = colors.white }, ]]
        --[[ markdownH3 = { fg = colors.white }, ]]
        --[[ markdownH4 = { fg = colors.white }, ]]
        --[[ markdownH5 = { fg = colors.white }, ]]
        --[[ markdownH6 = { fg = colors.white }, ]]
        --[[ markdownId = { fg = colors.pink }, ]]
        --[[ markdownItalic = { gf = colors.white, style = "italic" }, ]]
        --[[ markdownLinkText = { fg = colors.white }, ]]
        --[[ markdownRule = { fg = colors.accent }, ]]
        --[[ markdownListMarker = { fg = colors.red_key_w }, ]]
        --[[ markdownHeadingDelimiter = { fg = colors.white }, ]]
        --[[ markdownHeadingRule = { fg = colors.accent }, ]]
        --[[ markdownUrlTitleDelimiter = { fg = colors.white }, ]]
        --[[ markdownCodeSpecial = { fg = colors.orange }, ]]
        --[[ markdownCodeDelimiter = { fg = colors.green }, ]]
        --[[ markdownBlockquote = { fg = colors.accent }, ]]
        --[[ markdownIdDeclaration = { fg = colors.white }, ]]
        --[[ markdownIdDelimiter = { fg = colors.gray2 }, ]]
        --[[ markdownLinkDelimiter = { fg = colors.gray2 }, ]]
        --[[ markdownOrderedListMarker = { fg = colors.red_key_w }, ]]
        ["@annotation"] = { fg = colors.yellow.one },
        ["@attribute"] = { fg = colors.white.one },
        ["@boolean"] = {
            fg = colors.pink.one,
            italic = config.options.boolean_style.italic,
            bold = config.options.boolean_style.bold,
        },
        ["@character"] = { fg = colors.yellow.one },
        ["@character.special"] = { fg = colors.yellow.one },
        ["@comment"] = {
            fg = colors.comment,
            italic = config.options.comment_style.italic,
            bold = config.options.comment_style.bold,
        },
        ["@conditional"] = { fg = colors.red.two },
        ["@constant.builtin"] = { fg = colors.purple.one },
        ["@constant.macro"] = { fg = colors.red.one },
        ["@constant"] = { fg = colors.red.one },
        ["@constructor"] = { fg = colors.white.one },
        ["@text.emphasis"] = { italic = true },
        ["@error"] = { fg = colors.red.two, bold = true },
        ["@exception"] = { fg = colors.red.two },
        ["@field"] = { fg = colors.white.one },
        ["@float"] = { fg = colors.pink.one },
        ["@function.builtin"] = { fg = colors.purple.one },
        ["@function.macro"] = { fg = colors.purple.one },
        ["@function"] = { fg = colors.purple.one },
        ["@function.call"] = { fg = colors.green.two },
        ["@include"] = { fg = colors.red.two },
        ["@keyword"] = {
            fg = colors.orange.one,
            bold = config.options.keyword_style.bold,
            italic = config.options.keyword_style.italic,
        },
        ["@keyword.function"] = {
            fg = colors.orange.three,
            bold = config.options.function_style.bold,
            italic = config.options.function_style.italic,
        },
        ["@keyword.operator"] = {
            fg = colors.orange.three,
            bold = config.options.operator_style.bold,
            italic = config.options.operator_style.italic,
        },
        ["@keyword.return"] = {
            fg = colors.orange.three,
            bold = config.options.keyword_style.bold,
            italic = config.options.keyword_style.italic,
        },
        ["@none"] = { fg = "NONE" },
        ["@label"] = { fg = colors.pink.one },
        ["@text.literal"] = { fg = colors.green.one },
        ["@method"] = { fg = colors.green.two },
        ["@method.call"] = { fg = colors.green.two },
        ["@namespace"] = { fg = colors.purple.one },
        ["@number"] = { fg = colors.pink.one },
        ["@operator"] = { fg = colors.white.one },
        ["@parameter"] = { fg = colors.white.one },
        ["@parameter.reference"] = { fg = colors.white.one },
        ["@preproc"] = { fg = colors.red.two },
        ["@property"] = { fg = colors.purple.one },
        ["@punctuation.bracket"] = { fg = colors.gray.four },
        ["@punctuation.delimiter"] = { fg = colors.gray.four },
        ["@punctuation.special"] = { fg = colors.gray.four },
        ["@repeat"] = { fg = colors.red.two },
        ["@storageclass"] = { fg = colors.blue.one },
        ["@string"] = { fg = colors.green.one },
        ["@string.escape"] = { fg = colors.boolean },
        ["@string.regex"] = { fg = colors.yellow.one },
        ["@text.strong"] = { fg = colors.yellow.one },
        ["@symbol"] = { fg = colors.white.one },
        ["@tag"] = { fg = colors.red.two },
        ["@tag.delimiter"] = { fg = colors.gray.four },
        ["@text"] = { fg = colors.fg },
        ["@text.title"] = { fg = colors.white.one, bold = true },
        ["@type"] = { fg = colors.yellow.one },
        ["@type.builtin"] = { fg = colors.red.two },
        ["@type.definition"] = { fg = colors.red.two },
        ["@todo"] = { fg = colors.orange.one, bold = true },
        ["@type.qualifier"] = { fg = colors.red.two },
        ["@text.uri"] = { fg = colors.yellow.one, underline = true },
        ["@text.underline"] = { underline = true },
        ["@variable"] = { fg = colors.white.one },
        ["@variable.builtin"] = { fg = colors.pink.one },
        ["@define"] = { fg = colors.red.two },

        ["@lsp.type.rell-module.rell"] = { link = "@namespace" },
        ["@lsp.type.rell-annotation.rell"] = { link = "@namespace" },
        ["@lsp.type.rell-namespace.rell"] = { link = "@namespace" },
        ["@lsp.type.rell-type.rell"] = { link = "@type" },
        ["@lsp.type.rell-enum.rell"] = { link = "@lsp.type.enum" },
        ["@lsp.type.rell-enum_value.rell"] = { link = "@lsp.type.enumMember" },
        ["@lsp.type.rell-struct.rell"] = { link = "@type" },
        ["@lsp.type.rell-struct_attr_val.rell"] = { link = "@property" },
        ["@lsp.type.rell-struct_attr_var.rell"] = { link = "@property" },
        ["@lsp.type.rell-tuple_attr.rell"] = { link = "@parameter" },
        ["@lsp.type.rell-entity.rell"] = { link = "@type" },
        ["@lsp.type.rell-object.rell"] = { link = "@type" },
        ["@lsp.type.rell-entity_attr_normal_val.rell"] = { link = "@tag.attribute" },
        ["@lsp.type.rell-entity_attr_normal_var.rell"] = { link = "@tag.attribute" },
        ["@lsp.type.rell-entity_attr_keyindex_val.rell"] = { link = "@property" },
        ["@lsp.type.rell-entity_attr_keyindex_var.rell"] = { link = "@property" },
        ["@lsp.type.rell-function.rell"] = { link = "@function" },
        ["@lsp.type.rell-extendable_function.rell"] = { link = "@function.macro" },
        ["@lsp.type.rell-operation.rell"] = { link = "@function" },
        ["@lsp.type.rell-query.rell"] = { link = "@function" },
        ["@lsp.type.rell-named_argument.rell"] = { link = "@parameter" },
        ["@lsp.type.rell-global_constant.rell"] = { link = "@constant" },
        ["@lsp.type.rell-local_val.rell"] = { link = "@variable" },
        ["@lsp.type.rell-local_var.rell"] = { link = "@variable" },
        ["@lsp.type.rell-at_alias.rell"] = { link = "@type" },
        ["@lsp.type.rell-default.rell"] = { link = "@namespace" },

        LspReferenceText = { bg = colors.white.one },
        LspReferenceRead = { bg = colors.white.one },
        LspReferenceWrite = { bg = colors.white.one },
        DiagnosticError = { fg = colors.red.two },
        DiagnosticWarn = { fg = colors.orange.three },
        DiagnosticInfo = { fg = colors.blue.one },
        DiagnosticHint = { fg = colors.green.one },
        DiagnosticVirtualTextError = { bg = colors.black.one, fg = colors.red.two, bold = true },
        DiagnosticVirtualTextWarn = { bg = colors.black.one, fg = colors.orange.three },
        DiagnosticVirtualTextWarning = { bg = colors.black.one, fg = colors.orange.three },
        DiagnosticVirtualTextInfo = { bg = colors.black.one, fg = colors.blue.one },
        DiagnosticVirtualTextHint = { bg = colors.black.one, fg = colors.green.one },
        DiagnosticUnderlineError = { undercurl = true, sp = colors.red.two },
        DiagnosticUnderlineWarn = { undercurl = true, sp = colors.orange.three },
        DiagnosticUnderlineInfo = { undercurl = true, sp = colors.blue.one },
        DiagnosticUnderlineHint = { undercurl = true, sp = colors.green.one },
        DiagnosticText = { bg = colors.black.one },
        LspSignatureActiveParameter = { bg = colors.black.one, bold = true },
        LspCodeLens = { fg = colors.gray.five },
        LspInfoBorder = { link = "FloatBorder" },

        BufferCurrent = { fg = colors.white.one, bg = colors.gray.five },
        BufferCurrentIndex = { fg = colors.white.one, bg = colors.black.one },
        BufferCurrentMod = { fg = colors.yellow.one, bg = colors.black.one },
        BufferCurrentSign = { fg = colors.blue.one, bg = colors.black.one },
        BufferCurrentTarget = { fg = colors.red.two, bg = colors.black.one, bold = true },
        BufferInactive = { fg = colors.gray.five, bg = colors.dark },
        BufferInactiveIndex = { fg = colors.gray.five, bg = colors.dark },
        BufferInactiveMod = { fg = colors.yellow.one, bg = colors.dark },
        BufferInactiveSign = { fg = colors.gray.five, bg = colors.dark },
        BufferInactiveTarget = { fg = colors.red.two, bg = colors.dark, bold = true },
        BufferVisible = { fg = colors.white.one, bg = colors.black.one },
        BufferVisibleIndex = { fg = colors.white.one, bg = colors.black.one },
        BufferVisibleMod = { fg = colors.yellow.one, bg = colors.black.one },
        BufferVisibleSign = { fg = colors.green.one, bg = colors.black.one },
        BufferVisibleTarget = { fg = colors.red.two, bg = colors.black.one, bold = true },
        BufferLineFill = { fg = colors.white.one, bg = colors.dark, bold = true },
        BufferLineSeparator = { fg = colors.white.one, bg = colors.black.one },
        BufferLineTab = { fg = colors.white.one, bg = colors.black.one },
        BufferLineModifiedVisible = { fg = colors.white.one, bg = colors.black.one },
        BufferLineDuplicate = { fg = colors.white.one, bg = colors.black.one },
        BufferLineDuplicateVisible = { fg = colors.white.one, bg = colors.black.one },
        BufferLineCloseButtonVisible = { fg = colors.white.one, bg = colors.black.one },
        BufferLineCloseButton = { fg = colors.white.one, bg = colors.black.one },
        BufferLineModified = { fg = colors.white.one, bg = colors.black.one },
        BufferLineBufferVisible = { fg = colors.white.one, bg = colors.black.one },
        BufferLineBackground = { fg = colors.white.one, bg = colors.black.one },

        WhichKey = { fg = colors.blue.one },
        WhichKeySeperator = { fg = colors.red.one },
        WhichKeyGroup = { fg = colors.pink.one },
        WhichKeyDesc = { fg = colors.white.one },
        WhichKeyFloat = { bg = colors.black.two },

        GitSignsAdd = { fg = colors.green.one, bg = colors.black.one },
        GitSignsChange = { fg = colors.orange.two, bg = colors.black.one },
        GitSignsDelete = { fg = colors.red.one, bg = colors.black.one },

        NvimTreeNormal = { fg = colors.white.one, bg = colors.black.one },
        NvimTreeNormalNC = { fg = colors.white.one, bg = colors.black.one },
        NvimTreeFolderName = { fg = colors.blue.one },
        NvimTreeOpenedFolderName = { fg = colors.blue.one },
        NvimTreeEmptyFolderName = { fg = colors.blue.one },
        NvimTreeFolderIcon = { fg = colors.yellow.one },
        NvimTreeSpecialFile = { fg = colors.pink.two },
        NvimTreeRootFolder = { fg = colors.gray.four },
        NvimTreeGitDirty = { fg = colors.gray.four },
        NvimTreeGitNew = { fg = colors.gray.four },
        NvimTreeGitDeleted = { fg = colors.gray.four },
        NvimTreeGitStaged = { fg = colors.gray.four },
        NvimTreeIndentMarker = { fg = colors.gray.four },
        NvimTreeWinSeparator = { fg = colors.black.one, bg = colors.black.one },
        NvimTreeCursorLine = { bg = colors.gray.five },
        NvimTreeCursor = { bg = "NONE", fg = "NONE" },
        NvimTreeSymlink = { fg = colors.blue.two },

        NeoTreeCursorLine = { bg = colors.gray.six },
        NeoTreeDirectoryIcon = { fg = colors.yellow.one },
        NeoTreeRootName = { fg = colors.gray.four },
        NeoTreeFileName = { fg = colors.white.one, bg = colors.black.one },
        NeoTreeFileIcon = { fg = colors.blue.one },
        NeoTreeFileNameOpened = { fg = colors.white.one },
        NeoTreeIndentMarker = { fg = colors.gray.four },
        NeoTreeGitAdded = { fg = colors.green.one },
        NeoTreeGitConflict = { fg = colors.purple.two },
        NeoTreeGitModified = { fg = colors.gray.five },
        NeoTreeGitUntracked = { fg = colors.white.one },
        NeoTreeNormal = { fg = colors.white.one, bg = colors.black.three },
        NeoTreeNormalNC = { fg = colors.white.one, bg = colors.black.one },
        NeoTreeSymbolicLinkTarget = { fg = colors.blue.two },

        IndentBlanklineChar = { fg = colors.gray.five },
        IndentBlanklineContextChar = { fg = colors.gray.five },
        IndentBlanklineContextStart = { sp = colors.white.one, underline = true },

        WinBar = { bg = colors.black.one },
        WinBarNC = { bg = colors.black.one },

        TelescopeNormal = { bg = colors.black.two },
        TelescopeTitle = { bg = colors.purple.two, fg = colors.black.two, bold = true },
        TelescopeBorder = { fg = colors.black.two, bg = colors.black.two },

        TelescopePromptNormal = { bg = colors.black.three },
        TelescopePromptTitle = { bg = colors.orange.two, fg = colors.black.three, bold = true },
        TelescopePromptBorder = { bg = colors.black.three, fg = colors.black.three },
        TelescopePromptPrefix = { bg = colors.black.three, fg = colors.orange.two },

        TelescopeResultsNormal = { bg = colors.black.five },
        TelescopeResultsBorder = { bg = colors.black.five, fg = colors.black.five },
        TelescopeResultsTitle = { bg = colors.orange.two, fg = colors.black.five, bold = true },

        TelescopePreviewNormal = { bg = colors.black.five },
        TelescopePreviewTitle = { bg = colors.pink.two, fg = colors.black.five, bold = true },
        TelescopePreviewBorder = { bg = colors.black.five, fg = colors.black.five },
        TelescopePreviewLine = { bg = colors.black.five },

        TelescopeSelection = { bg = colors.purple.one, fg = colors.black.four, italic = true },
        TelescopeSelectionCaret = { fg = colors.purple.one, bg = colors.black.four, bold = true },

        TelescopeMultiIcon = { fg = colors.yellow.one, bg = colors.black.four, bold = true },
        TelescopeMultiSelection = { bg = colors.black.four },

        NoiceLspProgressTitle = { fg = colors.yellow.one, bg = colors.black.one, bold = true },
        NoiceLspProgressClient = { fg = colors.gray.five, bg = colors.black.one },
        NoiceLspProgressSpinner = { fg = colors.purple.one, bg = colors.black.one },

        NoiceFormatProgressDone = { bg = colors.green.one, fg = colors.black.two },
        NoiceFormatProgressTodo = { bg = colors.black.four, fg = colors.gray.five },

        NoiceCmdline = { bg = colors.black.three, fg = colors.white.one },
        NoiceCmdlineIcon = { bg = colors.black.three, fg = colors.purple.one },
        NoiceCmdlineIconSearch = { bg = colors.black.three, fg = colors.purple.one },

        NoicePopupmeu = { bg = colors.black.two, fg = colors.white.one },
        NoicePopupBorder = { fg = colors.black.two, bg = colors.black.two },

        NoiceCmdlinePopup = { fg = colors.black.two, bg = colors.black.two },
        NoiceCmdlinePopupBorder = { fg = colors.black.two, bg = colors.black.two },
        NoiceCmdlinePopupBorderSearch = { fg = colors.purple.one, bg = colors.black.two },
        NoiceConfirm = { bg = colors.black.two, fg = colors.white.one },

        CmpItemAbbrDeprecated = { fg = colors.gray.five },
        CmpItemAbbrMatch = { fg = colors.blue.one, bold = true },
        CmpItemAbbrMatchFuzzy = { link = "CmpItemAbbrMatch" },

        CmpItemKindField = { link = "@field" },
        CmpItemKindProperty = { link = "@proprty" },
        CmpItemKindEvent = { link = "Type" },

        CmpItemKindText = { fg = colors.gray.five },
        CmpItemKindEnum = { link = "Type" },
        CmpItemKindKeyword = { link = "Keyword" },

        CmpItemKindConstant = { link = "Constant" },
        CmpItemKindConstructor = { link = "Function" },
        CmpItemKindReference = { fg = colors.purple.one },

        CmpItemKindFunction = { link = "Function" },
        CmpItemKindStruct = { link = "Type" },
        CmpItemKindClass = { link = "Type" },
        CmpItemKindModule = { fg = colors.yellow.one },
        CmpItemKindOperator = { link = "Operator" },

        CmpItemKindVariable = { fg = colors.purple.one },
        CmpItemKindFile = { fg = colors.blue.one },

        CmpItemKindUnit = { link = "Constant" },
        CmpItemKindSnippet = { fg = colors.blue.one },
        CmpItemKindFolder = { fg = colors.yellow.two },

        CmpItemKindMethod = { link = "Function" },
        CmpItemKindValue = { link = "Constant" },
        CmpItemKindEnumMember = { link = "Type" },

        CmpItemKindInterface = { link = "Type" },
        CmpItemKindColor = { link = "Constant" },
        CmpItemKindTypeParameter = { link = "Type" },

        CmpItemKindTabNine = { fg = colors.red.two },
        CmpItemKindCopilot = { fg = colors.red.two },

        SagaBorder = { bg = colors.black.one, fg = colors.purple.one },
        SagaNormal = { bg = colors.black.one },

        HoverBorder = { link = "FloatBorder" },
        HoverNormal = { link = "NormalFloat" },

        RenameNormal = { bg = colors.black.one, fg = colors.purple.one },
        RenameBorder = { link = "FloatBorder" },

        DiagnosticPos = { fg = colors.white.one },
        DiagnosticWord = { fg = colors.white.one },
        DiagnosticSource = { fg = colors.gray.five },
        DiagnosticNormal = { link = "NormalFloat" },
        DiagnosticShowNormal = { link = "NormalFloat" },
        DiagnosticShowBorder = { link = "FloatBorder" },
        DiagnosticBorder = { link = "FloatBorder" },
    }
    return groups
end

return M
