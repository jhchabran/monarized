return function(c, s, cs)
    -- 'folke/whick-key-nvim'
    return {
        {'WhichKey', c.cyan, c.none, s.bold},
        {'WhichKeyGroup', c.fg1, c.none, s.bold},
        {'WhichKeySeparator', c.fade1},
        {'WhichKeyDesc', c.fg1},
        {'WhichKeyFloat', c.none, c.bg1},
        {'WhichKeyValue', c.fg1},
    }
end
