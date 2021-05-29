return function(c, s, cs)
    -- 'nvim-telescope/telescope.nvim'
    return {
        {'TelescopeBorder', c.base3},
        {'TelescopeNormal', c.base1},
        {'TelescopePromptPrefix', c.base1},
        {'TelescopeSelection', c.base01, c.base02, s.bold},
        {'TelescopeMatching', c.base01, c.base02}
    }
end
