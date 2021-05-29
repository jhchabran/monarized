return function(c, s, cs)
    return {
        --- Editor---
        {'ColorColumn', c.none, c.base02},
        {'Cursor', c.base03, c.orange},
        {'CursorLine', c.none, c.base02},
        {'Error', c.base3, c.red},
        {'iCursor', c.base03, c.base2},
        {'LineNr', c.base01},
        {'MatchParen', c.cyan, c.base01},
        {'NonText', c.base02},
        {'Normal', c.base2, c.base03},
        {'PMenu', c.base2, c.base02},
        {'PmenuSbar', c.base2, c.base02},
        {'PMenuSel', c.cyan, c.base01, s.bold},
        {'PmenuThumb', c.cyan, c.base01},
        {'SpecialKey', c.base01},
        {'SpellBad', c.red, c.none, cs.underline},
        {'SpellCap', c.yellow, c.none, cs.underline},
        {'SpellLocal', c.base1, c.none, cs.underline},
        {'SpellRare', c.base2, c.none, cs.underline},
        {'Visual', c.none, c.base02},
        {'VisualNOS', c.none, c.base02},
        {'VertSplit', c.base03},
        {'VisualNC', c.none, c.base02},
        {'NormalNC', c.base2, c.none},
        {'NormalFloat', c.base1, c.base03},
        {'RedrawDebugNormal', c.base03, c.base2},
        {'RedrawDebugClear', c.base2, c.yellow},
        {'RedrawDebugComposed', c.base2, c.green},
        {'RedrawDebugRecompose', c.base2, c.red},
        --- Neovim ---
        {'healthError', c.red, c.base03},
        {'healthSuccess', c.green, c.base03},
        {'healthWarning', c.yellow, c.base03},
        {'TermCursorNC', c.none, c.base03},
        {'NvimInternalError', c.red, c.red},
        --- Gutter ---
        {'CursorColumn', c.none, c.base03},
        {'CursorLineNr', c.base2, c.base03},
        {'Folded', c.base01, c.base03, s.bold},
        {'FoldColumn', c.base01, c.base03},
        {'SignColumn', c.base03, c.base03},
        -- Navigation ---
        {'Directory', c.cyan},
        --- Prompt/Status ---
        {'EndOfBuffer', c.base03},
        {'ErrorMsg', c.base2, c.red},
        {'ModeMsg', c.base2},
        {'MoreMsg', c.cyan},
        {'Question', c.base2},
        {'StatusLine', c.cyan, c.base01},
        {'StatusLineNC', c.base2, c.base03},
        {'StatusLineTerm', c.cyan, c.base01},
        {'StatusLineTermNC', c.base2, c.base03},
        {'WarningMsg', c.base03, c.yellow},
        {'WildMenu', c.cyan, c.base03},
        --- Search ---
        {'IncSearch', c.base2, c.base030, s.underline},
        {'Search', c.base03, c.cyan},
        --- Tabs ---
        {'TabLine', c.base2, c.base03},
        {'TabLineFill', c.base2, c.base03},
        {'TabLineSel', c.cyan, c.base01},
        --- Window ---
        {'Title', c.base2, c.none, s.bold},
        --- Others ---
        {'qffilename', c.yellow, c.none, s.none},
        {'Whitespace', c.base2} -- idk
    }
end
