return function(c, s, cs)
    return {
        {'DiffAdd', c.green, c.bg1},
        {'DiffChange', c.yellow, c.bg1},
        {'DiffDelete', c.red, c.bg1},
        {'DiffText', c.red, c.bg1}
    }
end
