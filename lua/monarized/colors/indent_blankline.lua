return function(c, s, cs)
    -- lukas-reineke/indent-blankline.nvim
    return {
        {'IndentBlanklineChar', c.base1},
        {'IndentBlanklineSpaceChar', c.base1},
        {'IndentBlanklineSpaceCharBlankline', c.base3},
        {'IndentBlanklineContextChar', c.base02}
    }
end
