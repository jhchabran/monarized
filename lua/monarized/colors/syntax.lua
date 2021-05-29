local utils = require('monarized.utils')

return function(c, s, cs)
    local attributes = {
        'TSAnnotation', 'TSAttribute', -- TS
        'luametatableevents', 'luametatablearithmetic',
        'luametatableequivalence' -- lua
    }
    local numbers = {
        'TSBoolean', 'TSFloat', 'TSNumber', -- TS
        'Boolean', 'Float', 'Number' -- VL
    }
    local comments = {
        'TSComment', -- TS
        'Comment', -- VL
        'manFooter', -- man
        'rustCommentLine', 'rustCommentBlock', -- rust
        'vimCommentTitle', 'vimCommentLine' -- vim
    }
    local constructors = {
        'TSConstructor' -- TS
    }
    local conditionals = {
        'TSConditional', -- TS
        'Conditional', 'PreCondit', -- VL
        'cPreCondit', 'cPreConditMatch' -- C/C++
    }
    local constants = {
        'TSConstant', -- TS
        'Constant', -- VL
        'cConstant', 'cppConstant' -- C/C++
    }
    local defines = {
        'TSConstMacro', -- TS
        'Define', 'Macro' -- VL
    }
    local exceptions = {
        'TSException', -- TS
        'Exception' -- VL
    }
    local fields = {
        'TSField', 'TSProperty', 'TSTag', -- TS
        'Tag' -- VL
    }
    local functions = {
        'TSFunction', 'TSFuncMacro', 'TSMethod', -- TS
        'Function', -- VL
        'pythonfunction', -- python
        'vimFunction', 'vimUserFunc' -- vim
    }
    local includes = {
        'TSInclude', -- TS
        'Include', 'PreProc', -- VL
        'cInclude', -- C/C++
        'pythonimport', -- python
        'rustExternCrate' -- rust
    }
    local keywords = {
        'TSKeyword', 'TSKeywordFunction', -- TS
        'Keyword', 'Statement', -- VL
        'cStatement', 'cppStatement', 'cppModifier', 'cppAccess', -- C/C++
        'pythonstatement', 'pythonkeyword', -- python
        'rustDeriveTrait', -- rust
        'luastatement', 'luakeyword', 'luamykeyword', 'luafunctioncall',
        'luaspecialfunction', -- lua
        'vimCommand', 'vimnotfunc' -- vim
    }
    local labels = {
        'TSLabel', -- TS
        'Label' -- VL
    }
    local namespaces = {
        'TSNamespace', -- TS
        'pythonModule' -- python
    }
    local nones = {
        'TSNone', -- VL
        'pythonnone' -- python
    }
    local operators = {
        'TSOperator', -- TS
        'Operator', -- VL
        'cOperator', 'cppOperator', -- C/C++
        'pythonoperator' -- python
    }
    local parameters = {
        'TSParameter', 'TSParameterReference', -- TS
        'pythonparam' -- python
    }
    local properties = {
        'TSProperty' -- TS
    }
    local punctuations = {
        'TSPunctDelimiter', 'TSPunctBracket', 'TSPunctSpecial',
        'TSTagDelimiter', -- TS
        'Delimiter', -- VL
        'vimparensep', 'vimsep', 'vimbracket', -- vim
        'shCmdParenRegion', 'shCmdSubRegion' -- sh
    }
    local repeats = {
        'TSRepeat', -- TS
        'Repeat' -- VL
    }
    local strings = {
        'TSCharacter', 'TSString', -- TS
        'Character', 'String', -- VL
        'cString', 'cCppString', -- C/C++
        'pythonstringdelimiter', 'pythonbytes', 'pythonrawbytes',
        'pythonbytescontent' -- python
    }
    local strings_specials = {
        'TSStringRegex', 'TSStriingEscape', -- TS
        'SpecialChar', -- VL
        'cSpecialCharacter', -- C/C++
        'pythonescape' -- python
    }
    local symbols = {
        'TSSymbol', -- TS
        'Special', 'SpecialComment', -- VL
        'cSpecial', -- C/C++
        'pythonsymbol', -- python
        'rustCommentLineDoc', 'rustCommentBlockDoc' -- rust
    }
    local texts = {
        'TSText', 'TSStrong', 'TSEmphais', 'TSUnderline', 'TSStrike', 'TSTitle',
        'TSLiteral', -- TS
        'Text', -- VL
        'manTitle' -- man
    }
    local uris = {
        'TSURI' -- TS
    }
    local types = {
        'TSType', 'TSTypeBuildin', -- TS
        'Type', 'StorageClass', 'Structure', 'Typedef', -- VL
        'cType', 'cStorageClass', 'cStructure', 'cppType', 'cppStorageClass',
        'cppStructure', -- C/C++
        'pythonclass', -- python
        'vimlet' -- vim
    }
    local variables = {
        'TSVariable', -- TS
        'Identifier', -- VL
        'pythonselfarg', -- python
        'rustIdentifier', -- rust
        'vimmapmodkey', 'vimnotation', 'vimfuncvar', 'vimvar', -- vim
        'shDerefSimple', 'shDerefVar' -- sh
    }
    local builtins = { -- such as self. in python
        'TSConstBuiltin', 'TSFuncBuiltin', 'TSVariableBuiltin', -- TS
        'pythonbuiltin', 'pythonself', -- python
        'vimmap' -- vim
    }
    local notes = {
        'TSNote', -- TS
        'Todo', -- VL
        'cTODO' -- C/C++
    }
    local warnings = {
        'TSWarning', -- TS
        'Debug' -- VL
    }
    local dangers = {
        'TSDanger' -- TS
    }
    local errors = {
        'TSError', -- TS
        'Error', -- VL
        'rustCommentLineDocError', 'rustCommentBlockDocError' -- rust
    }
    local groups = {
        {attributes, c.blue},
        {numbers, c.base2},
        {comments, c.blue:light()},
        {constructors, c.base3, c.none, cs.italic}, -- in C++ variable->constructors() \\ TS docs unclear
        {conditionals, c.base3, c.none, cs.italic},
        {constants, c.base3},
        {defines, c.blue},
        {exceptions, c.blue},
        {fields, c.base2, c.none},
        {functions, c.base2, c.none, cs.italic},
        {includes, c.blue},
        {keywords, c.base3, c.none, cs.bold},
        {labels, c.base3, c.none, cs.italic},
        {namespaces, c.base3, c.none, cs.italic},
        {nones, c.base3},
        {operators, c.base3},
        {parameters, c.base3, c.none, cs.italic},
        {properties, c.base3},
        {punctuations, c.base3},
        {repeats, c.base3, c.none, cs.italic},
        {strings, c.base2},
        {strings_specials, c.base2},
        {symbols, c.base3},
        {texts, c.base2},
        {uris, c.base2},
        {types, c.base3},
        {variables, c.base3},
        {builtins, c.base3, c.none, cs.italic},
        {notes, c.base2},
        {warnings, c.yellow},
        {dangers, c.yellow},
        {errors, c.red}

    }

    local highlights = {}

    -- Apply grouping to each color group
    for _, group in ipairs(groups) do
        highlights = utils.merge({
            highlights,
            utils.highlight_to_groups({group[2], group[3], group[4]})(group[1])
        })
    end

    return highlights
end
