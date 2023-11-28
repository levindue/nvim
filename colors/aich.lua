local palette = {
    bg     = "#1D1D1D",
    fg     = "#EFEFE2",
    base   = "#1A1A20",
    green  = "#A4FAB5",
    blue   = "#65E1E2",
    red    = "#FE8D86",
    yellow = "#FEFf86",
    purple = "#DEADE6",
    grey   = "#727272",
}

local p = palette

local function hl(x, y)
    vim.api.nvim_set_hl(0, x, y)
end

hl("Normal", { bg = p.bg, fg = p.fg })

-- Filler lines (~) after the end of the buffer.
hl('EndOfBuffer', { bg = p.base_100, fg = inv_300 })
hl('MatchParen', { bg = p.inv_800, fg = base_100 })
hl('LineNr', { fg = p.inv_400 }) -- Line number column, gutter.
hl('LineNrAbove', { link = 'LineNr' })
hl('LineNrBelow', { link = 'LineNr' })
-- Where linting and errors popup.
hl('SignColumn', { bg = p.base_300 })
hl('ColorColumn', { bg = p.base_400 })
-- Syntax that is being affected by concealment.
hl('Conceal', {})
-- Directories in NetRW.
hl('Directory', { fg = p.blue })
-- Directories in NetRW.
hl('netrwExe', { fg = p.green })
-- The 'showmode' message (e.g., '-- INSERT --') uses this.
hl('ModeMsg', { fg = p.fg })
-- Area for messages and cmdline, `/` and `:`.
hl('MsgArea', { bg = p.base_900, fg = inv_900 })
hl('MsgSeparator', { bg = p.base_900, fg = inv_900 })
hl('MoreMsg', { link = 'ModeMsg' }) -- |more-prompt|
-- The non-selected entries of a completion menu, normal item.
hl('Pmenu', { bg = p.base_600, fg = inv_800 })
hl('PmenuSel', { bg = p.base_900, fg = inv_900, blend = 0 }) -- Selected item.
hl('PmenuSbar', { bg = p.base_800 }) -- Scrollbar
hl('PmenuThumb', { bg = p.inv_700 }) -- Thumb of the scrollbar.
hl('Question', { link = 'ModeMsg' }) -- |hit-enter| prompt and yes/no questions.
-- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
hl('QuickFixLine', { bg = p.orange, fg = base, nocombine = true })
-- Any special symbol, sometimes it could be {} curly braces/brackets and also `NOTE:`
-- SpecialChar SpecialComment
hl('Special', { fg = p.orange, undercurl = false })
-- Unprintable characters: Text displayed differently from what it really is. But not 'listchars' whitespace.
hl('SpecialKey', { link = 'red' })
hl('Visual', { bg = p.blue, fg = p.base, reverse = false, nocombine = true }) -- Visual mode selection.
-- Visual mode selection when vim is "Not Owning the Selection".
hl('VisualNOS', { link = 'Visual' })
hl('Whitespace', { fg = p.base }) -- Listchars.
hl('NonText', { link = 'Comment' }) -- Used in showbreak, listchars and virtualtext.
hl('VertSplit', { fg = p.inv_800 }) -- Used for splits, also used for completion menus
hl('WinSeperator', { link = 'VertSplit' }) -- Separators between window splits.
hl('WinBar', { link = 'VertSplit' }) -- Separators between window splits.
hl('WinBarNC', { link = 'VertSplit' }) -- Separators between window splits.

-- hlgr search
hl('Search', { bg = p.green, fg = p.green }) -- Last search patterns
-- Current search pattern when searching with / and with :s///
hl('IncSearch', { bg = p.green, fg = p.base })
hl('CurSearch', { bg = p.green, fg = p.base }) -- Current search match under the cursor
-- :substitute or :s///gc replacement text highlighting
hl('Substitute', { bg = p.yellow, fg = p.base })

-- hlgr spell
-- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
hl('SpellBad', { undercurl = true })
-- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
hl('SpellCap', { link = 'SpellBad' })
-- Word that is recognized by the spellchecker as one that is used in another region.
-- |spell| Combined with the highlighting used otherwise.
hl('SpellLocal', { link = 'SpellBad' })
-- Word that is recognized by the spellchecker as one that is hardly ever used.
-- |spell| Combined with the highlighting used otherwise.
hl('SpellRare', { link = 'SpellBad' })

-- hl('TabLine', {}) -- Tab pages line, not active tab page label.
-- hl('TabLineFill', {}) -- TabLineFill	Tab pages line, where there are no labels.
-- hl('TabLineSel', {}) -- Tab pages line, active tab page label.
-- hl('WildMenu', {}) -- Current match in 'wildmenu' completion.
-- hl('WinBar', {}) -- Window bar of current window.
-- hl('WinBarNC', {}) -- Window bar of not-current windows.
-- Current font, background and foreground colors of the menus.
-- Also used for the toolbar.  Applicable highlight arguments: font, guibg, guifg.
hl('Menu', { fg = p.red })
-- Current background and foreground of the main window's scrollbars.  Applicable highlight arguments: guibg, guifg.
hl('Scrollbar', { bg = p.base })
-- Current font, background and foreground of the tooltips.  Applicable highlight arguments: font, guibg, guifg.
hl('Tooltip', { link = 'Menu' })
-- Parameters of a function.
hl('@parameter', { fg = p.blue })
-- Object and struct fields.
hl('@lsp.type.parameter', { link = '@parameter' })
-- References to parameters of a function. I don't know where this is applied
hl('@parameter.reference', { link = '@parameter' })
hl('@preproc', { fg = p.purple }) -- Preprocessor #if, #else, #endif, etc.
hl('@lsp.type.property', { link = '@field' }) -- Object and struct fields.
hl('@lsp.type.class', { fg = p.purple }) -- Object and struct fields.
hl('@lsp.type.interface', { link = '@lsp.type.class' }) -- Object and struct fields.
hl('@field', { fg = p.blue }) -- Object and struct fields.
hl('@property', { link = '@field' })
-- hl('@lsp.type.property', { link = '@property' })
-- hl('@lsp.type.property.lua', { fg = p.clr_sky }) -- Object and struct fields.

-- hlgr float numbers hlgr floating numbers
hl('Float', { fg = p.green }) -- A floating point constant: 2.3e10
hl('@float', { link = 'Float' }) -- Floating-point number literals.

-- hlgr floating windows hlgr floating pans
hl('FloatBorder', { bg = p.base, fg = inv_600 })
hl('NormalFloat', { bg = p.bg })
hl('FloatTitle', { bg = p.base, fg = inv_800 })

hl('Delimiter', { fg = p.green }) -- . and ,
hl('@punctuation.bracket', { link = 'Delimiter' }) -- () {}
hl('@punctuation.bracket.svelte', { fg = p.purple }) -- () Brackets, braces, parentheses, etc.
-- Punctuation delimiters: Periods, commas, semicolons, etc.
hl('@punctuation.delimiter', { link = 'Delimiter' })
hl('@lsp.typemod.variable.definition', { link = '@punctuation.delimiter' })
-- Punctuation delimiters: Periods, commas, semicolons, etc.
hl('@punctuation.delimiter.markdown_inline', { fg = p.purple_mid })
hl('@text.literal', { link = '@punctuation.delimiter.markdown_inline' })

-- Special punctuation that doesn't fit into the previous categories.
hl('@punctuation.special', { fg = p.green_mid })
hl('StorageClass', { fg = p.orange_mid })
-- Keywords that affect how a variable is stored: `static`, `comptime`, `extern`, etc. This variable doesn't work
hl('@storageclass', { link = 'StorageClass' })

-- hlgr cursor
hl('CursorColumn', { bg = p.base_800 })
hl('CursorLine', { bg = p.base_800 })
hl('CursorLineNr', { fg = p.inv_800, bg = base_800 }) -- Current position on gutter.
hl('CursorLineSign', { link = 'CursorLineNr' })
hl('CursorLineFold', { bg = p.base_800 })

-- hlgr folds
hl('FoldColumn', { bg = p.base_400, fg = inv_500 }) -- Column besides gutter.
hl('Folded', { fg = p.base_100, bg = inv_500 }) -- Folded lines.

-- hlgr statusline
hl('WinBar', { bg = p.base_500, fg = inv_700 })
hl('StatusLine', { bg = p.base_500, fg = inv_700 })
hl('StatusLineNC', { link = 'EndOfBuffer' })
hl('WinBarNC', { link = 'EndOfBuffer' })

-- hlgr loops hlgr for hlgr while
hl('Repeat', { fg = p.purple })
hl('@repeat', { link = 'Repeat' })

-- hlgr types int, long, char, etcp.
hl('Type', { fg = p.blue })
hl('Typedef', { link = 'Type' })
hl('@type.builtin', { link = 'Type' }) -- Built-in types: `i32` in Rust.
hl('@type.builtin.c', { fg = p.purple }) -- Built-in types: `i32` in Rust.
hl('@type.definition', { fg = p.blue }) -- Type definitions, e.g. `typedef` in C.
-- Qualifiers on types, e.g. `const` or `volatile` in C or `mut` in Rust.
hl('@type.qualifier', { fg = p.blue })
hl('@type', { link = '@lsp.type.class' })
-- hl('@type', { link = 'Constant' }) -- Type (and class) definitions and annotations.

-- hl('@symbol', { fg = 'red', bg = 'blue' }) -- Identifiers referring to symbols or atoms.
-- hl('@none', { undercurl = true })
-- Variable names that don't fit into other categories, like `vim` in vim.api.
-- @variable
hl('Identifier', { fg = p.yellow })

-- Variable ames defined by the language: `this` or `self` in Javascript and Python.
hl('@variable.builtin', { link = '@constant.builtin' })
-- Variable names defined by the language: `this` or `self` in Javascript and Python.
hl('@variable.builtin.python', { fg = p.green })

-- Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.
hl('@attribute', { fg = p.red })

-- hlgr booleans
hl('Boolean', { fg = p.orange })
hl('@boolean', { link = 'Boolean' }) -- Boolean literals: `True` and `False` in Python.

-- hlgr strings
-- @string
hl('String', { fg = p.yellow })
hl('@string.regex', { fg = p.orange }) -- Regular expression literals.
-- Escape characters within a string: `\n`, `\t`, etc.
hl('@string.escape', { fg = p.orange })
-- Strings with special meaning that don't fit into the previous categories.

-- hlgr numbers
hl('Number', { fg = p.orange })
hl('@number', { link = 'Number' }) -- Numeric literals that don't fit into other categories.

-- hlgr constants
hl('Constant', { fg = p.blue })
-- Constants identifiers. These might not be semantically constant.
-- E.g. uppercase variables in Python and emmylua annotations in lua
hl('@constant', { link = "Constant" })
-- built-in constant values: `nil` in Lua, undefined and null in Javascript.
hl('@constant.builtin', { link = "Constant" })
hl('@constant.macro', { fg = p.purple }) -- Constants defined by macros: `NULL` in C.
hl('@lsp.type.macro', { fg = p.purple }) -- Constants defined by macros: `NULL` in C.
-- Numeric literals that don't fit into other categories.
hl('@lsp.type.enumMember', { link = "Constant" })

-- hlgr if statements if else switch
hl('Conditional', { fg = p.purple }) -- if, then, else, endif, switch, etc.
-- Keywords related to conditionals: `if`, `when`, `cond`, etc.
hl('@conditional', { link = 'Conditional' })

hl('Error', { fg = p.red }) -- Any erroneous construct
hl('ErrorMsg', { link = 'Error' }) -- Error messages in the cmdline
-- Syntax/parser errors. This might highlight large sections of code while the
-- user is typing still incomplete code, use a sensible highlight.
hl('@error', { link = 'ErrorMsg' })
hl('WarningMsg', { fg = p.yellow }) -- Warning messages.

-- hlgr todo
hl('Todo', { fg = p.green, bold = true })
hl('@todo', { link = 'Todo' }) -- TODO(santiagogonzalez-dev): Test.
hl('@text.todo', { link = 'Todo' })
hl('@text.todo.comment', { link = 'Todo' })

hl('@text', { fg = p.inv_600 })
-- NOTE: INUPPERCASE: -- The italic = true affects @todo for some reason
hl('@text.note', { fg = p.blue })
-- Text representation of a warning note. This affecs @todo hl group for some reason
hl('@text.warning', { link = 'Todo' })
hl('@text.danger', { link = 'WarningMsg' }) -- FIXME Text representation of a danger note.
-- FIXME Text representation of a danger note.
hl('@text.strong', { bold = true, fg = p.yellow })
-- FIXME Text representation of a danger note.
hl('@text.emphasis', { italic = true, fg = p.green })
-- FIXME Text representation of a danger note.
hl('@text.strike', { strikethrough = true, fg = p.blue })

-- TODO(santiagogonzalez-dev): Fix this, where it's being used I don't know. Debugging statements.
-- hl('TSDebug', {})
hl('@define', { fg = p.blue }) -- Preprocessor #define statements.
hl('@tag', { fg = p.purple }) -- Tags like HTML tag names.
hl('@tag.attribute', { fg = p.blue }) -- HTML attributes
hl('@tag.delimiter', { fg = p.blue }) -- Tag delimiters like `<` `>` `/`.
-- hl('TSStrong', {}) -- Text to be represented in bold.
-- hl('TSEmphasis', {}) -- Text to be represented with emphasis.
-- hl('TSUnderline', {}) -- Text to be represented with an underline.
-- hl('TSStrike', { link = 'Title' }) -- Strikethrough text.
-- Titles for output from ":set all", ":autocmd", also plugins use it for some windows.
hl('Title', { fg = p.orange })
hl('@text.title', { link = 'Title' }) -- Text that is part of a title.
-- hl('TSLiteral', {}) -- Literal or verbatim text.
-- hl('TSURI', {}) -- URIs like hyperlinks or email addresses.
-- hl('TSMath', {}) -- Math environments like LaTeX's `$ ... $`.
-- Help pages: Footnotes, text references, citations, etc.
hl('@text.reference', { fg = p.red })
-- hl('TSEnvironment', {}) -- Text environments of markup languages.
-- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.
-- hl('TSEnvironmentName', {})

-- hlgr zsh
hl('zshSubst', { fg = p.red })
hl('zshDeref', { fg = p.red })
hl('zshString', { link = 'String' })
hl('zshShortDeref', { link = 'Constant' })
hl('zshPreProc', { link = 'Comment' })
hl('zshTypes', { link = 'zshKeyword' })

-- hlgr errors hlgr try hlgr throw
hl('Exception', { bg = p.purple, fg = p.fg }) -- try, catch, throw
-- Exception related keywords: `try`, `except`, `finally` in Python.
hl('@exception', { link = 'Exception' })

-- hlgr functions
hl('Function', { fg = p.green }) -- Function name (also: methods for classes)
hl('@function', { link = 'Function' }) -- Function definitions.
-- Macro defined functions (calls and definitions): each `macro_rules` in Rust.
hl('@function.macro', { fg = p.purple })
hl('@function.call', { fg = p.blue }) -- Function calls.
hl('@function.builtin', { fg = p.purple }) -- Built-in functions: `print` in Lua.

-- import { ... } from '...' or from ... import ... or #include in C
hl('Include', { fg = p.green })
-- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.
hl('@include', { link = 'Include' })

-- hlgr keywords
hl('Keyword', { fg = p.purple }) -- Any other keyword
hl('@keyword', { link = 'Keyword' }) -- Keywords that don't fit into other categories.
-- hl('@keyword.svelte', { fg = p.red2 }) -- Keywords that don't fit into other categories.
-- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
hl('@keyword.function', { fg = p.purple, italic = true })
-- Unary and binary operators that are English words: `and`, `or` in Python and Lua; `sizeof` in C.
hl('@keyword.operator', { fg = p.purple })
hl('@keyword.return', { fg = p.purple }) -- Keywords like `return` and `yield`.

hl('Label', { fg = p.green }) -- case, default, etc.
-- GOTO labels: `label:` in C, and `::label::` in Lua, and *thing* in help pages or the name of codeblocks in lua.
hl('@label', { link = 'Label' })

hl('Method', { fg = p.blue })
hl('@method', { link = 'Method' }) -- Method definitions.
hl('@method.call', { link = 'Method' }) -- Method calls.

hl('Macro', { fg = p.blue })

-- will override Special colors, so we just link to it since in most cases
-- constructors calls and definitions start with a capital letter.
hl('@constructor', { fg = p.yellow, bold = true }) -- Object and struct fields.
hl('@constructor.lua', {}) -- Object and struct fields.
hl('@namespace', { fg = p.green }) -- identifiers referring to modules and namespaces.

hl('Character', { fg = p.purple }) -- A character constant: 'c', '\n'
hl('@character', { link = 'Character' }) -- Character literals: `'a'` in C and .
hl('@character.special', { link = 'Special' }) -- Special characters.

hl('Statement', { fg = p.green }) -- the = and == and any statement.

hl('Operator', { fg = p.blue }) -- "sizeof", "+", "*"
-- = or ==, binary or unary operators: `+`, and also `->` and `*` in C.
hl('@operator', { link = 'Operator' })
-- hl('@operator.svelte', { fg = p.clr_green_70 })

-- comments
hl('Comment', { fg = p.grey, italic = true })
hl('@comment', { link = 'Comment' })
hl('@spell.comment', {})
hl('@lsp.type.comment', { link = 'Comment' })
hl('@lsp.type.comment.lua', {})

hl('DiffAdd', { fg = p.blue })
hl('DiffChange', { fg = p.green })
hl('DiffDelete', { fg = p.red })
hl('DiffText', { fg = p.fg })

-- rest of semantic tokens
hl('@lsp.mod.deprecated', { strikethrough = true })

-- css
hl('@operator.css', { fg = p.purple })
hl('@field.css', { fg = p.green })
hl('@function.css', { fg = p.green })
hl('@type.definition.css', { fg = p.orange })

-- lsp 
hl('DiagnosticError', { fg = p.red })
hl('DiagnosticHint', { fg = p.blue })
hl('DiagnosticInfo', { fg = p.purple })
hl('DiagnosticWarn', { fg = p.yellow })
-- TODO
hl('DiagnosticVirtualTextError', { bg = p.bg_red, fg = red_mid })
hl('DiagnosticVirtualTextHint', { bg = p.bg_blue, fg = blue })
hl('DiagnosticVirtualTextInfo', { bg = p.bg_purple, fg = purple_mid })
hl('DiagnosticVirtualTextWarn', { bg = p.bg_yellow, fg = yellow })
hl('DiagnosticUnderlineError', { undercurl = true, sp = p.red })
hl('DiagnosticUnderlineHint', { undercurl = true, sp = p.blue })
hl('DiagnosticUnderlineInfo', { undercurl = true, sp = p.purple })
hl('DiagnosticUnderlineWarn', { undercurl = true, sp = p.yellow })

-- When you call a function or use a method/class
hl('LspReferenceRead', { fg = p.base, bg = p.fg })
hl('LspReferenceText', { link = 'LspReferenceRead' })
hl('LspReferenceWrite', { link = 'LspReferenceRead' })
hl('LspInlayHint', { fg = p.fg })

-- mini.pick
hl("MiniPickNormal", { bg = p.bg, fg = p.fg })
hl("MiniPickMatchCurrent", { bg = p.green, fg = p.base })
