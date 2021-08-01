local utils = require('monarized.utils')

return function(c, s, cs)
    local to_groups = utils.highlight_to_groups({c.accent1, c.none})
    local delimiters = to_groups({
        'markdownH1Delimiter',
        'markdownH2Delimiter',
        'markdownH3Delimiter',
        'markdownH4Delimiter',
        'markdownH5Delimiter',
        'markdownH6Delimiter'
    })

    to_groups = utils.highlight_to_groups({c.accent1, c.none, s.bold})
    local headers = to_groups({
        'markdownH1',
        'markdownH2',
        'markdownH3',
        'markdownH4',
        'markdownH5',
        'markdownH6'
    })

    return utils.merge({
        delimiters,
        headers,
        {
            {'markdownCode', c.accent0},
            {'markdownCodeDelimiter', c.accent1},
            {'markdownBlockquote', c.accent1},
            {'markdownFootnote', c.accent1},
            {'markdownFootnoteDefinition', c.accent1},
            {'markdownId', c.accent1},
            {'markdownIdDeclaration', c.accent1},
            {'markdownIdDelimiter', c.fade0},
            {'markdownUrl', c.fg1},
            {'markdownLinkText', c.accent1},
            {'markdownLinkTextDelimiter', c.fade0},
            {'markdownLinkDelimiter', c.fade0}
        }
    })
end
