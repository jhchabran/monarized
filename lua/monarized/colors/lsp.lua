return function(c, s, cs)
    return {
        {'LspReferenceText', c.base2},
        {'LspReferenceRead', c.base3},
        {'LspReferenceWrite', c.base3},
        {'LspDiagnosticsDefaultHint', c.violet},
        {'LspDiagnosticsDefaultError', c.red},
        {'LspDiagnosticsDefaultWarning', c.yellow},
        {'LspDiagnosticsDefaultInformation', c.blue}
    }
end
