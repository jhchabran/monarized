local utils = require('monarized.utils')

return function(c, s, cs)
    local to_groups = utils.highlight_to_groups({c.cyan, c.none})
    local delimiters = to_groups({
        'markdownH1Delimiter',
        'markdownH2Delimiter',
        'markdownH3Delimiter',
        'markdownH4Delimiter',
        'markdownH5Delimiter',
        'markdownH6Delimiter'
    })

    to_groups = utils.highlight_to_groups({c.cyan, c.none, s.bold})
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
            {'markdownCode', c.cyan},
            {'markdownCodeDelimiter', c.cyan},
            {'markdownBlockquote', c.cyan},
            {'markdownFootnote', c.cyan},
            {'markdownFootnoteDefinition', c.cyan},
            {'markdownId', c.cyan},
            {'markdownIdDeclaration', c.cyan},
            {'markdownIdDelimiter', c.blue},
            {'markdownUrl', c.fg1},
            {'markdownLinkText', c.cyan},
            {'markdownLinkTextDelimiter', c.blue},
            {'markdownLinkDelimiter', c.blue}
        }
    })
end
