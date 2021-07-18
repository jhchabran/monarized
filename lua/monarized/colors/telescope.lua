return function(c, s, cs)
    -- 'nvim-telescope/telescope.nvim'
    return {
        {'TelescopeBorder', c.fade0},
        {'TelescopeNormal', c.fg1},
        {'TelescopePromptPrefix', c.accent1},
        {'TelescopeSelection', c.bg1, c.hl1, s.bold},
        {'TelescopeMatching', c.bg1, c.hl0, }
    }
end
