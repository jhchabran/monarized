return function(c, s, cs)
    return {
        {'DiffAdd', c.green, c.base02},
        {'DiffChange', c.yellow, c.base02},
        {'DiffDelete', c.red, c.base02},
        {'DiffText', c.red, c.base02}
    }
end
