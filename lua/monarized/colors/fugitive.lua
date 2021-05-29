return function(c, s, cs)
    -- tpope/vim-fugitive
    return {
        {'gitcommitDiscardedFile', c.red},
        {'gitcommitUntrackedFile', c.red},
        {'gitcommitSelectedFile', c.green}
    }
end
