return function(c, s, cs)
    return {
        --- Editor---
        {'ColorColumn', c.none, c.bg1},
        {'Cursor', c.bg0, c.accent1},
        {'CursorLine', c.none, c.bg1},
        {'Error', c.fg0, c.red},
        {'iCursor', c.bg0, c.fg0},
        {'LineNr', c.fade0},
        {'MatchParen', c.cyan, c.fade0},
        {'NonText', c.bg1},
        {'Normal', c.fg1, c.bg0},
        {'PMenu', c.fg0, c.bg1},
        {'PmenuSbar', c.fg0, c.bg1},
        {'PMenuSel', c.bg1, c.hl1, s.bold},
        {'PmenuThumb', c.accent1, c.fade0},
        {'SpecialKey', c.fade0},
        {'SpellBad', c.red, c.none, cs.underline},
        {'SpellCap', c.yellow, c.none, cs.underline},
        {'SpellLocal', c.fade1, c.none, cs.underline},
        {'SpellRare', c.fg0, c.none, cs.underline},
        {'Visual', c.bg0, c.hl1},
        {'VisualNOS', c.none, c.bg1},
        {'VertSplit', c.bg0},
        {'VisualNC', c.none, c.bg1},
        {'NormalNC', c.fade1, c.none},
        {'NormalFloat', c.fade1, c.bg1},
        {'RedrawDebugNormal', c.bg0, c.fg0},
        {'RedrawDebugClear', c.fg0, c.yellow},
        {'RedrawDebugComposed', c.fg0, c.green},
        {'RedrawDebugRecompose', c.fg0, c.red},
        -- --- Neovim ---
        {'healthError', c.red, c.bg0},
        {'healthSuccess', c.green, c.bg0},
        {'healthWarning', c.yellow, c.bg0},
        {'TermCursorNC', c.none, c.bg0},
        {'NvimInternalError', c.red, c.red},
        -- --- Gutter ---
        {'CursorColumn', c.none, c.bg0},
        {'CursorLineNr', c.fg0, c.bg0},
        {'Folded', c.fade0, c.bg0, s.bold},
        {'FoldColumn', c.fade0, c.bg0},
        {'SignColumn', c.bg0, c.bg0},
        -- -- Navigation ---
        {'Directory', c.cyan},
        -- --- Prompt/Status ---
        {'EndOfBuffer', c.bg0},
        {'ErrorMsg', c.fg0, c.red},
        {'ModeMsg', c.fg0},
        {'MoreMsg', c.cyan},
        {'Question', c.fg0},
        {'StatusLine', c.green, c.bg1},
        {'StatusLineNC', c.fade1, c.bg1},
        {'StatusLineTerm', c.cyan, c.fade0},
        {'StatusLineTermNC', c.fg0, c.bg0},
        {'WarningMsg', c.bg0, c.yellow},
        {'WildMenu', c.cyan, c.bg0},
        -- --- Search ---
        {'IncSearch', c.bg0, c.hl0, s.underline},
        {'Search', c.bg0, c.hl1},
        -- --- Tabs ---
        {'TabLine', c.fade1, c.bg0},
        {'TabLineFill', c.fade1, c.bg0},
        {'TabLineSel', c.yellow, c.bg1},
        -- --- Window ---
        {'Title', c.fg0, c.none, s.bold},
        {'FloatBorder', c.fade1, c.none},
        -- --- Others ---
        {'qffilename', c.yellow, c.none, s.none},
        {'Whitespace', c.fg0} -- idk
    }
end
