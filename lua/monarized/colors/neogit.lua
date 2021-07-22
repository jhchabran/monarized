return function(c, s, cs)
    -- 'TimUntersberger/neogit'
    return {
        {'NeogitDiffAddHighlight', c.green, c.bg1},
        {'NeogitDiffDeleteHighlight', c.red, c.bg1},
        {'NeogitDiffContextHighlight', c.fg1, c.bg1},
        {'NeogitHunkHeaderHighlight', c.yellow, c.bg1},
        {'NeogitHunkHeader', c.hl0, c.bg1}
    }
end
