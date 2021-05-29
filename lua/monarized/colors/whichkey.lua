return function(c, s, cs)
    -- 'folke/whick-key-nvim'
    return {
        {'WhichKey', c.violet},
        {'WhichKeyGroup', c.blue},
        {'WhichKeySeparator', c.base3},
        {'WhichKeyDesc', c.base2},
        {'WhichKeyFloat', c.none, c.base03:light(.05)},
        {'WhichKeyValue', c.base2},
    }
end
