return function(c, s, cs)
    return {
        {'LspReferenceText', c.fg1},
        {'LspReferenceRead', c.fg0},
        {'LspReferenceWrite', c.fg0},
        {'LspDiagnosticsDefaultHint', c.violet},
        {'LspDiagnosticsDefaultError', c.red},
        {'LspDiagnosticsDefaultWarning', c.yellow},
        {'LspDiagnosticsDefaultInformation', c.blue}
    }
end
