return function(c, s, cs)
    -- 'lewis6991/gitsigns.nvim'
    return {
        {'GitSignsAdd', c.green, c.bg0},
        {'GitSignsChange', c.yellow, c.bg0},
        {'GitSignsDelete', c.red, c.bg0}
    }
end
