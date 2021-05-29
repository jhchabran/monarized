return function(c, s, cs)
    -- 'folke/whick-key-nvim'
    return {
        {'WhichKey', c.cyan, c.none, s.bold},
        {'WhichKeyGroup', c.base2, c.none, s.bold},
        {'WhichKeySeparator', c.base1:dark()},
        {'WhichKeyDesc', c.base2},
        {'WhichKeyFloat', c.none, c.base02},
        {'WhichKeyValue', c.base2},
    }
end
