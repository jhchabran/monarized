-- A lualine theme that infers palette from the current style.
local palette = require('monarized.palette')

local M = {
  normal = {
    a = {bg = palette.accent0, fg = palette.bg0, gui = 'bold'},
    b = {bg = palette.bg1, fg = palette.fg0},
    c = {bg = palette.bg1, fg = palette.fg1}
  },
  insert = {
    a = {bg = palette.accent1, fg = palette.bg0, gui = 'bold'},
    b = {bg = palette.bg1, fg = palette.fg0},
    c = {bg = palette.bg1, fg = palette.fg1}
  },
  replace = {
    a = {bg = palette.hl0, fg = palette.bg0, gui = 'bold'},
    b = {bg = palette.bg1, fg = palette.fg0},
    c = {bg = palette.bg1, fg = palette.fg1}
  },
  visual = {
    a = {bg = palette.hl1, fg = palette.bg0, gui = 'bold'},
    b = {bg = palette.bg1, fg = palette.fg0},
    c = {bg = palette.bg1, fg = palette.fg1}
  },
  command = {
    a = {bg = palette.hl1, fg = palette.bg0, gui = 'bold'},
    b = {bg = palette.bg1, fg = palette.fg0},
    c = {bg = palette.bg1, fg = palette.fg1}
  }
}

M.terminal = M.command
M.inactive = M.normal

return M
