return function(c, s, cs)
    -- 'nvim-telescope/telescope.nvim'
    return {
        {'TelescopeBorder', c.base01},
        {'TelescopeNormal', c.base2},
        {'TelescopePromptPrefix', c.blue},
        {'TelescopeSelection', c.base2, c.orange:dark(), s.bold},
        {'TelescopeMatching', c.base2, c.orange:dark()}
    }
end
