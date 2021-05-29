return function(c, s, cs)
    -- 'lewis6991/gitsigns.nvim'
    return {
        {'GitSignsAdd', c.green, c.base03},
        {'GitSignsChange', c.yellow, c.base03},
        {'GitSignsDelete', c.red, c.base03}
    }
end
