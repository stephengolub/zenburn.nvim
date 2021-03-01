--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is lua file, vim will append your file to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsl = lush.hsl

local colors = {
    Boolean = { fg=hsl("#dca3a3"), },
    Character = { fg=hsl("#dca3a3"), gui="bold", },
    Comment = { fg= hsl("#7f9f7f"), },
    Conditional = { fg= hsl("#f0dfaf"), gui="bold", },
    Constant = { fg= hsl("#dca3a3"), gui="bold", },
    Cursor = { fg= hsl("#000d18"), bg= hsl("#8faf9f"), gui="bold", },
    Debug = { fg= hsl("#bca3a3"), gui="bold", },
    Define = { fg= hsl("#ffcfaf"), gui="bold", },
    Delimiter = { fg= hsl("#8f8f8f"), },
    DiffAdd = { fg= hsl("#709080"), bg= hsl("#313c36"), gui="bold", },
    DiffChange = { bg= hsl("#333333"), },
    DiffDelete = { fg= hsl("#333333"), bg= hsl("#464646"), },
    DiffText = { fg= hsl("#ecbcbc"), bg= hsl("#41363c"), gui="bold", },
    Directory = { fg= hsl("#9fafaf"), gui="bold", },
    ErrorMsg = { fg= hsl("#80d4aa"), bg= hsl("#2f2f2f"), gui="bold", },
    Exception = { fg= hsl("#c3bf9f"), gui="bold", },
    Float = { fg= hsl("#c0bed1"), },
    FoldColumn = { fg= hsl("#93b3a3"), bg= hsl("#3f4040"), },
    Folded = { fg= hsl("#93b3a3"), bg= hsl("#3f4040"), },
    Function = { fg= hsl("#efef8f"), },
    Identifier = { fg= hsl("#efdcbc"), },
    IncSearch = { fg= hsl("#f8f893"), bg= hsl("#385f38"), },
    Keyword = { fg= hsl("#f0dfaf"), gui="bold", },
    Macro = { fg= hsl("#ffcfaf"), gui="bold", },
    ModeMsg = { fg= hsl("#ffcfaf"), gui=nil },
    MoreMsg = { fg= hsl("#ffffff"), gui="bold", },
    Number = { fg= hsl("#8cd0d3"), },
    Operator = { fg= hsl("#f0efd0"), },
    PmenuSbar = { bg= hsl("#2e3330"), fg= hsl("#000000"), },
    PmenuThumb = { bg= hsl("#a0afa0"), fg= hsl("#040404"), },
    PreCondit = { fg= hsl("#dfaf8f"), gui="bold", },
    PreProc = { fg= hsl("#ffcfaf"), gui="bold", },
    Question = { fg= hsl("#ffffff"), gui="bold", },
    Repeat = { fg= hsl("#ffd7a7"), gui="bold", },
    Search = { fg= hsl("#ffffe0"), bg= hsl("#284f28"), },
    SignColumn = { fg= hsl("#9fafaf"), gui="bold", },
    SpecialChar = { fg= hsl("#dca3a3"), gui="bold", },
    SpecialComment = { fg= hsl("#82a282"), gui="bold", },
    Special = { fg= hsl("#cfbfaf"), },
    SpecialKey = { fg= hsl("#9ece9e"), },
    Statement = { fg= hsl("#e3ceab"), gui=nil },
    StatusLine = { fg= hsl("#313633"), bg= hsl("#ccdc90"), },
    StatusLineNC = { fg= hsl("#2e3330"), bg= hsl("#88b090"), },
    StorageClass = { fg= hsl("#c3bf9f"), gui="bold", },
    String = { fg= hsl("#cc9393"), },
    Structure = { fg= hsl("#efefaf"), gui="bold", },
    Tag = { fg= hsl("#e89393"), gui="bold", },
    Title = { fg= hsl("#efefef"), gui="bold", },
    Todo = { fg= hsl("#dfdfdf"), bg=nil, gui="bold", },
    Typedef = { fg= hsl("#dfe4cf"), gui="bold", },
    Type = { fg= hsl("#dfdfbf"), gui="bold", },
    Underlined = { fg= hsl("#dcdccc"), gui="underline" },
    VertSplit = { fg= hsl("#2e3330"), bg= hsl("#688060"), },
    VisualNOS = { fg= hsl("#333333"), bg= hsl("#f18c96"), gui="bold,underline" },
    WarningMsg = { fg= hsl("#ffffff"), bg= hsl("#333333"), gui="bold", },
    WildMenu = { fg= hsl("#cbecd0"), bg= hsl("#2c302d"), gui="underline" },

    -- spellchecking, always "bright" term background
    SpellBad = { guisp= hsl("#bc6c4c"), fg= hsl("#dc8c6c"), },
    SpellCap = { guisp= hsl("#6c6c9c"), fg= hsl("#8c8cbc"), },
    SpellRare = { guisp= hsl("#bc6c9c"), fg= hsl("#bc8cbc"), },
    SpellLocal = { guisp= hsl("#7cac7c"), fg= hsl("#9ccc9c"), },
}

if vim.g.zenburn_italic_Comment then
    colors.Comment.gui="italic"
end

if vim.g.zenburn_high_Contrast then
    colors.Normal = { fg = hsl("#dcdccc"), bg = hsl("#1f1f1f"), }
    colors.Conceal = { fg = hsl("#8f8f8f"), bg = hsl("#333333"), }
    colors.ColorColumn = { bg = hsl("#33332f"), }
    if vim.g.zenburn_disable_bold_CursorBars then
        if vim.g.zenburn_unified_CursorColumn then
            colors.CursorColumn = { bg =hsl("#121212"), }
        else
            colors.CursorColumn = { bg =hsl("#2b2b2b"), }
        end
        colors.CursorLine = { bg = hsl("#121212"), }
    else
        if vim.g.zenburn_unified_CursorColumn then
            colors.CursorColumn = { bg = hsl("#121212"), gui = "bold", }
        else
            colors.CursorColumn = { bg = hsl("#2b2b2b"), gui = "bold", }
        end
        colors.CursorLine = { bg = hsl("#121212"), gui = "bold", }
    end
    colors.CursorLineNr = { fg = hsl("#f2f3bb"), bg = hsl("#161616"), }
    colors.FoldColumn = { bg = hsl("#161616"), gui = "bold", }
    colors.Folded = { bg = hsl("#161616"), gui = "bold", }

    if vim.g.zenburn_subdued_LineNr then
        colors.LineNr = { fg = hsl("#424242"), bg = hsl("#1b1b1b"), }
    else
        colors.LineNr = { fg = hsl("#9fafaf"), bg = hsl("#161616"), }
    end

    colors.NonText = { fg= hsl("#404040"), gui="bold", }
    colors.Pmenu = { bg= hsl("#242424"), fg= hsl("#ccccbc"), }
    colors.PmenuSel = { bg= hsl("#353a37"), fg= hsl("#ccdc90"), gui="bold", }
    colors.MatchParen = { fg= hsl("#f0f0c0"), bg= hsl("#383838"), gui="bold", }
    colors.SignColumn = { bg= hsl("#181818"), }
    colors.SpecialKey = { bg= hsl("#242424"), }
    colors.TabLine = { fg= hsl("#88b090"), bg= hsl("#313633"), gui=nil, }
    colors.TabLineSel = { fg= hsl("#ccd990"), bg= hsl("#222222"), }
    colors.TabLineFill = { fg= hsl("#88b090"), bg= hsl("#313633"), gui=nil, }
else
    colors.Normal = { fg = hsl("#dcdccc"), bg = hsl("#1f1f1f")}
    colors.Conceal = { fg = hsl("#8f8f8f"), bg = hsl("#484848")}
    colors.ColorColumn = { bg = hsl("#484848") }
    colors.CursorLine = { bg = hsl("#434443") }
    colors.CursorLineNr = { bg = hsl("#262626"), fg = hsl("#d2d39b") }
    if vim.g.zenburn_unified_CursorColumn then
        colors.CursorColumn = { bg= hsl("#434343"), }
    else
        colors.CursorColumn = { bg= hsl("#4f4f4f"), }
    end
    colors.FoldColumn = { bg= hsl("#333333"), }
    colors.Folded = { bg= hsl("#333333"), }
    if vim.g.zenburn_subdued_LineNr then
        colors.LineNr = { fg= hsl("#5d6262"), bg = hsl("#353535"), }
    else
        colors.LineNr = { fg= hsl("#9fafaf"), bg = hsl("#262626"), }
    end
    colors.NonText = { fg= hsl("#5b605e"), gui="bold", }
    colors.Pmenu = { bg= hsl("#2c2e2e"), fg= hsl("#9f9f9f"), }
    colors.PmenuSel = { bg= hsl("#242424"), fg= hsl("#d0d0a0"), gui="bold", }
    colors.MatchParen = { fg= hsl("#b2b2a0"), bg= hsl("#2e2e2e"), gui="bold", }
    colors.SignColumn = { bg= hsl("#343434"), }
    colors.SpecialKey = { bg= hsl("#444444"), }
    colors.TabLine = { fg= hsl("#d0d0b8"), bg= hsl("#222222"), gui=nil, }
    colors.TabLineSel = { fg= hsl("#f0f0b0"), bg= hsl("#333333"), gui="bold", }
    colors.TabLineFill = { fg= hsl("#dccdcc"), bg= hsl("#101010"), gui=nil, }

    colors.StatusLine = { }
end

if vim.g.zenburn_transparent then
    colors.Normal.ctermbg=0
    colors.Normal.bg=hsl("#000000")
    colors.Statement = { }
    colors.Title = { }
    colors.Todo = { }
    colors.Underlined = { }
    colors.DiffAdd = { }
    colors.DiffText = { }
    colors.ErrorMsg = { }
end

if vim.g.zenburn_old_Visual then
    if vim.g.zenburn_alternate_Visual then
        -- Visual with more contrast, thanks to Steve Hall & Cream posse
        -- gui=nil fixes weird highlight problem in at least GVim 7.0.66, thanks to Kurt Maier
        colors.Visual = { fg= hsl("#000000"), bg= hsl("#71d3b4"), gui=nil,  }
        colors.VisualNOS = { fg= hsl("#000000"), bg= hsl("#71d3b4"), gui=nil,  }
    else
        -- use default visual
        colors.Visual = { fg= hsl("#233323"), bg= hsl("#71d3b4"), gui=nil,  }
        colors.VisualNOS = { fg= hsl("#233323"), bg= hsl("#71d3b4"), gui=nil,  }
    end
else
    -- new Visual style
    if vim.g.zenburn_alternate_Visual then
        -- brighter than the high/low contrast options below
        colors.Visual = { bg= hsl("#304a3d"),  }
        colors.VisualNos = { bg= hsl("#304a3d"),  }
    elseif vim.g.zenburn_high_Contrast then
        colors.Visual = { bg= hsl("#0f0f0f"),  }
        colors.VisualNOS = { bg= hsl("#0f0f0f"),  }
    else
        -- low contrast
        colors.Visual = { bg= hsl("#2f2f2f"),  }
        colors.VisualNOS = { bg= hsl("#2f2f2f"),  }
    end
end

if vim.g.zenburn_alternate_Error then
    -- use more jumpy Error
    colors.Error = { fg= hsl("#e37170"), bg= hsl("#664040"), gui="bold", }
else
    -- default is something more zenburn-compatible
    colors.Error = { fg= hsl("#e37170"), bg= hsl("#3d3535"), gui="bold", }
end

if vim.g.zenburn_alternate_Include then
    -- original setting
    colors.Include = { fg= hsl("#ffcfaf"), gui="bold", }
else
    -- new, less contrasted one
    colors.Include = { fg= hsl("#dfaf8f"), gui="bold", }
end

if vim.g.zenburn_disable_Label_underline then
    colors.Label = { fg= hsl("#dfcfaf"),                         }
else
    colors.Label = { fg= hsl("#dfcfaf"), gui="underline", }
end

if vim.g.zenburn_color_also_Ignore then
    -- color the Ignore groups
    -- note: if you get strange coloring for your files, turn this off (unlet)
    if vim.g.zenburn_high_Contrast then
        colors.Ignore = { }
    else
        colors.Ignore = { fg= hsl("#545a4f"),  }
    end
end

local theme = lush(function()
    if vim.zenburn_force_dark_Background then
        vim.background = "dark"
    end

    return {
        -- The following are all the Neovim default highlight groups from
        -- docs as of 0.5.0-812, to aid your theme creation. Your themes should
        -- probably style all of these at a bare minimum.
        --
        -- Referenced/linked groups must come before being referenced/lined,
        -- so the order shown ((mostly) alphabetical) is likely
        -- not the order you will end up with.
        --
        -- You can uncomment these and leave them empty to disable any
        -- styling for that group (meaning they mostly get styled as Normal)
        -- or leave them commented to apply vims default colouring or linking.

        ColorColumn  { colors.ColorColumn }, -- used for the columns set with 'colorcolumn'
        Conceal      { colors.Conceal }, -- placeholder characters substituted for concealed text (see 'conceallevel')
        Cursor       { colors.Cursor }, -- character under the cursor
        -- lCursor      { colors.lCursor }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
        -- CursorIM     { colors.CursorIM }, -- like Cursor, but used when in IME mode |CursorIM|
        CursorColumn { colors.CursorColumn }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
        CursorLine   { colors.CursorLine }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR fg) is not set.
        Directory    { colors.Directory }, -- directory names (and other special names in listings)
        DiffAdd      { colors.DiffAdd }, -- diff mode: Added line |diff.txt|
        DiffChange   { colors.DiffChange }, -- diff mode: Changed line |diff.txt|
        DiffDelete   { colors.DiffDelete }, -- diff mode: Deleted line |diff.txt|
        DiffText     { colors.DiffText }, -- diff mode: Changed text within a changed line |diff.txt|
        EndOfBuffer  { colors.EndOfBuffer }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
        TermCursor   { colors.TermCursor }, -- cursor in a focused terminal
        TermCursorNC { colors.TermCursorNC }, -- cursor in an unfocused terminal
        ErrorMsg     { colors.ErrorMsg }, -- error messages on the command line
        VertSplit    { colors.VertSplit }, -- the column separating vertically split windows
        Folded       { colors.Folded }, -- line used for closed folds
        FoldColumn   { colors.FoldColumn }, -- 'foldcolumn'
        SignColumn   { colors.SignColumn }, -- column where |signs| are displayed
        IncSearch    { colors.IncSearch }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
        Substitute   { colors.Substitute }, -- |:substitute| replacement text highlighting
        LineNr       { colors.LineNr }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
        CursorLineNr { colors.CursorLineNr }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
        MatchParen   { colors.MatchParen }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
        ModeMsg      { colors.ModeMsg }, -- 'showmode' message (e.g., "-- INSERT -- ")
        MsgArea      { colors.MsgArea }, -- Area for messages and cmdline
        MsgSeparator { colors.MsgSeparator }, -- Separator for scrolled messages, `msgsep` flag of 'display'
        MoreMsg      { colors.MoreMsg }, -- |more-prompt|
        NonText      { colors.NonText }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
        -- Normal       {colors.normal}, -- normal text
        NormalFloat  { colors.NormalFloat }, -- Normal text in floating windows.
        NormalNC     { colors.NormalNC }, -- normal text in non-current windows
        Pmenu        { colors.Pmenu }, -- Popup menu: normal item.
        PmenuSel     { colors.PmenuSel }, -- Popup menu: selected item.
        PmenuSbar    { colors.PmenuSbar }, -- Popup menu: scrollbar.
        PmenuThumb   { colors.PmenuThumb }, -- Popup menu: Thumb of the scrollbar.
        Question     { colors.Question }, -- |hit-enter| prompt and yes/no questions
        QuickFixLine { colors.QuickFixLine }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
        Search       { colors.Search }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
        SpecialKey   { colors.SpecialKey }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace| SpellBad  Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.  SpellCap  Word that should start with a capital. |spell| Combined with the highlighting used otherwise.  SpellLocal  Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
        SpellRare    { colors.SpellRare }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
        StatusLine   { colors.StatusLine }, -- status line of current window
        StatusLineNC { colors.StatusLineNC }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
        TabLine      { colors.TabLine }, -- tab pages line, not active tab page label
        TabLineFill  { colors.TabLineFill }, -- tab pages line, where there are no labels
        TabLineSel   { colors.TabLineSel }, -- tab pages line, active tab page label
        Title        { colors.Title }, -- titles for output from ":set all", ":autocmd" etc.
        Visual       { colors.Visual }, -- Visual mode selection
        VisualNOS    { colors.VisualNOS }, -- Visual mode selection when vim is "Not Owning the Selection".
        WarningMsg   { colors.WarningMsg }, -- warning messages
        Whitespace   { colors.Whitespace }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
        WildMenu     { colors.WildMenu }, -- current match in 'wildmenu' completion

        -- These groups are not listed as default vim groups,
        -- but they are defacto standard group names for syntax highlighting.
        -- commented out groups should chain up to their "preferred" group by
        -- default,
        -- Uncomment and edit if you want more specific syntax highlighting.

        Constant       { colors.Constant }, -- (preferred) any constant
        String         { colors.String }, --   a string constant: "this is a string"
        Character      { colors.Character }, --  a character constant: 'c', '\n'
        Number         { colors.Number }, --   a number constant: 234, 0xff
        Boolean        { colors.Boolean }, --  a boolean constant: TRUE, false
        Float          { colors.Float }, --    a floating point constant: 2.3e10

        Identifier     { colors.Identifier }, -- (preferred) any variable name
        Function       { colors.Function }, -- function name (also: methods for classes)

        Statement      { colors.Statement }, -- (preferred) any statement
        Conditional    { colors.Conditional }, --  if, then, else, endif, switch, etc.
        Repeat         { colors.Repeat }, --   for, do, while, etc.
        Label          { colors.Label }, --    case, default, etc.
        Operator       { colors.Operator }, -- "sizeof", "+", "*", etc.
        Keyword        { colors.Keyword }, --  any other keyword
        Exception      { colors.Exception }, --  try, catch, throw

        PreProc        { colors.PreProc }, -- (preferred) generic Preprocessor
        Include        { colors.Include }, --  preprocessor #include
        Define         { colors.Define }, --   preprocessor #define
        Macro          { colors.Macro }, --    same as Define
        PreCondit      { colors.PreCondit }, --  preprocessor #if, #else, #endif, etc.

        Type           { colors.Type }, -- (preferred) int, long, char, etc.
        StorageClass   { colors.StorageClass }, -- static, register, volatile, etc.
        Structure      { colors.Structure }, --  struct, union, enum, etc.
        Typedef        { colors.Typedef }, --  A typedef

        Special        { colors.Special }, -- (preferred) any special symbol
        SpecialChar    { colors.SpecialChar }, --  special character in a constant
        Tag            { colors.Tag }, --    you can use CTRL-] on this
        Delimiter      { colors.Delimiter }, --  character that needs attention
        SpecialComment { colors.SpecialComment }, -- special things inside a comment
        Debug          { colors.Debug }, --    debugging statements

        Underlined { colors.Underlined }, -- (preferred) text that stands out, HTML links
        Bold       { colors.Bold },
        Italic     { colors.Italic },

        -- ("Ignore", below, may be invisible...)
        Ignore         { colors.Ignore }, -- (preferred) left blank, hidden  |hl-Ignore|

        Error          { colors.Error }, -- (preferred) any erroneous construct

        Todo           { colors.Todo }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

        -- These groups are for the native LSP client. Some other LSP clients may use
        -- these groups, or use their own. Consult your LSP client's documentation.

        -- LspDiagnosticsError               { colors.LspDiagnosticsError }, -- used for "Error" diagnostic virtual text
        -- LspDiagnosticsErrorSign           { colors.LspDiagnosticsErrorSign }, -- used for "Error" diagnostic signs in sign column
        -- LspDiagnosticsErrorFloating       { colors.LspDiagnosticsErrorFloating }, -- used for "Error" diagnostic messages in the diagnostics float
        -- LspDiagnosticsWarning             { colors.LspDiagnosticsWarning }, -- used for "Warning" diagnostic virtual text
        -- LspDiagnosticsWarningSign         { colors.LspDiagnosticsWarningSign }, -- used for "Warning" diagnostic signs in sign column
        -- LspDiagnosticsWarningFloating     { colors.LspDiagnosticsWarningFloating }, -- used for "Warning" diagnostic messages in the diagnostics float
        -- LspDiagnosticsInformation         { colors.LspDiagnosticsInformation }, -- used for "Information" diagnostic virtual text
        -- LspDiagnosticsInformationSign     { colors.LspDiagnosticsInformationSign }, -- used for "Information" signs in sign column
        -- LspDiagnosticsInformationFloating { colors.LspDiagnosticsInformationFloating }, -- used for "Information" diagnostic messages in the diagnostics float
        -- LspDiagnosticsHint                { colors.LspDiagnosticsHint }, -- used for "Hint" diagnostic virtual text
        -- LspDiagnosticsHintSign            { colors.LspDiagnosticsHintSign }, -- used for "Hint" diagnostic signs in sign column
        -- LspDiagnosticsHintFloating        { colors.LspDiagnosticsHintFloating }, -- used for "Hint" diagnostic messages in the diagnostics float
        -- LspReferenceText                  { colors.LspReferenceText }, -- used for highlighting "text" references
        -- LspReferenceRead                  { colors.LspReferenceRead }, -- used for highlighting "read" references
        -- LspReferenceWrite                 { colors.LspReferenceWrite }, -- used for highlighting "write" references

        -- These groups are for the neovim tree-sitter highlights.
        -- As of writing, tree-sitter support is a WIP, group names may change.
        -- By default, most of these groups link to an appropriate Vim group,
        -- TSError -> Error for example, so you do not have to define these unless
        -- you explicitly want to support Treesitter's improved syntax awareness.

        -- TSError              { colors.TSError }, -- For syntax/parser errors.
        -- TSPunctDelimiter     { colors.TSPunctDelimiter }, -- For delimiters ie: `.`
        -- TSPunctBracket       { colors.TSPunctBracket }, -- For brackets and parens.
        -- TSPunctSpecial       { colors.TSPunctSpecial }, -- For special punctutation that does not fall in the catagories before.
        -- TSConstant           { colors.TSConstant }, -- For constants
        -- TSConstBuiltin       { colors.TSConstBuiltin }, -- For constant that are built in the language: `nil` in Lua.
        -- TSConstMacro         { colors.TSConstMacro }, -- For constants that are defined by macros: `NULL` in C.
        -- TSString             { colors.TSString }, -- For strings.
        -- TSStringRegex        { colors.TSStringRegex }, -- For regexes.
        -- TSStringEscape       { colors.TSStringEscape }, -- For escape characters within a string.
        -- TSCharacter          { colors.TSCharacter }, -- For characters.
        -- TSNumber             { colors.TSNumber }, -- For integers.
        -- TSBoolean            { colors.TSBoolean }, -- For booleans.
        -- TSFloat              { colors.TSFloat }, -- For floats.
        -- TSFunction           { colors.TSFunction }, -- For function (calls and definitions).
        -- TSFuncBuiltin        { colors.TSFuncBuiltin }, -- For builtin functions: `table.insert` in Lua.
        -- TSFuncMacro          { colors.TSFuncMacro }, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
        -- TSParameter          { colors.TSParameter }, -- For parameters of a function.
        -- TSParameterReference { colors.TSParameterReference }, -- For references to parameters of a function.
        -- TSMethod             { colors.TSMethod }, -- For method calls and definitions.
        -- TSField              { colors.TSField }, -- For fields.
        -- TSProperty           { colors.TSProperty }, -- Same as `TSField`.
        -- TSConstructor        { colors.TSConstructor }, -- For constructor calls and definitions: `{ }` in Lua, and Java constructors.
        -- TSConditional        { colors.TSConditional }, -- For keywords related to conditionnals.
        -- TSRepeat             { colors.TSRepeat }, -- For keywords related to loops.
        -- TSLabel              { colors.TSLabel }, -- For labels: `label:` in C and `:label:` in Lua.
        -- TSOperator           { colors.TSOperator }, -- For any operator: `+`, but also `->` and `*` in C.
        -- TSKeyword            { colors.TSKeyword }, -- For keywords that don't fall in previous categories.
        -- TSKeywordFunction    { colors.TSKeywordFunction }, -- For keywords used to define a fuction.
        -- TSException          { colors.TSException }, -- For exception related keywords.
        -- TSType               { colors.TSType }, -- For types.
        -- TSTypeBuiltin        { colors.TSTypeBuiltin }, -- For builtin types (you guessed it, right ?).
        -- TSNamespace          { colors.TSNamespace }, -- For identifiers referring to modules and namespaces.
        -- TSInclude            { colors.TSInclude }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
        -- TSAnnotation         { colors.TSAnnotation }, -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
        -- TSText               { colors.TSText }, -- For strings considered text in a markup language.
        -- TSStrong             { colors.TSStrong }, -- For text to be represented with strong.
        -- TSEmphasis           { colors.TSEmphasis }, -- For text to be represented with emphasis.
        -- TSUnderline          { colors.TSUnderline }, -- For text to be represented with an underline.
        -- TSTitle              { colors.TSTitle }, -- Text that is part of a title.
        -- TSLiteral            { colors.TSLiteral }, -- Literal text.
        -- TSURI                { colors.TSURI }, -- Any URI like a link or email.
        -- TSVariable           { colors.TSVariable }, -- Any variable name that does not have another highlight.
        -- TSVariableBuiltin    { colors.TSVariableBuiltin }, -- Variable names that are defined by the languages, like `this` or `self`.
    }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
