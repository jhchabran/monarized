return function(c, s, cs)
    -- lukas-reineke/indent-blankline.nvim
    return {
        {'IndentBlanklineChar', c.fade1},
        {'IndentBlanklineSpaceChar', c.fade1},
        {'IndentBlanklineSpaceCharBlankline', c.fg0},
        {'IndentBlanklineContextChar', c.bg1}
    }
end
