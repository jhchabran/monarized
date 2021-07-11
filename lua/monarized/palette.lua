local colors = {
  -- https://coolors.co/002b36-073642-586e75-93a1a1-eee8d5-c2c2c2-2aa198-268bd2-d33682-6c71c4
  -- backgrounds
  bg0 = '#002b36',
  bg1 = '#073642',
  -- foregrounds
  fg0 = '#eee8d5',
  fg1 = '#C2C2C2',
  -- faded
  fade0 = '#586e75',
  fade1 = '#93a1a1',
  -- accentuated (comments, numbers, strings, ...)
  accent0 = '#2aa198',
  accent1 = '#268bd2',
  -- highlighting (used in UI elements)
  hl0 = '#d33682',
  hl1 = '#6c71c4',

  -- normal colors (terminal, diffs, ...)
  yellow =    '#b58900',
  orange =    '#cb4b16',
  red =       '#dc322f',
  magenta =   '#d33682',
  violet =    '#6c71c4',
  blue =      '#268bd2',
  cyan =      '#2aa198',
  green =     '#859900',
}

if vim.g.monarized_style == 'dark_purple' then
  colors.bg0 = '#101129'
  colors.bg1 = '#171830'
  colors.fg0 = '#DDE0E1'
  colors.fg1 = '#C2C2C2'
  colors.fade0 = '#5F606B'
  colors.fade1 = '#95969C'
  colors.accent0 = '#4B5580'
  colors.accent1 = '#5A559E'
  colors.hl0 = '#826987'
  colors.hl1 = '#9185AB'
end

-- -- TODO tones should be adjusted in the opposite order, ie lighter -> bg0
-- if vim.g.monarized_style == 'light' then
--   local fade1 = colors.fade1
--   local fade1 = colors.fade1
--   local fg1 = colors.fg1
--   local fg0 = colors.fg0

--   colors.fade1 = colors.fade0
--   colors.fade1 = colors.fade0
--   colors.fg1 = colors.bg1
--   colors.fg0 = colors.bg0

--   colors.fade0 = fade1
--   colors.fade0 = fade1
--   colors.bg1 = fg1
--   colors.bg0 = fg0
-- end

return colors
