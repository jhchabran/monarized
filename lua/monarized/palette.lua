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
  hl1 = '#859900',

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

if vim.g.monarized_style == 'light' then
  colors.fg0 = '#002b36'
  colors.fg1 = '#0A6379'
  colors.bg0 = '#fdf6e3'
  colors.bg1 = '#eee8d5'
  colors.fade0 = '#586e75'
  colors.fade1 = '#657b83'
  colors.accent1 = '#2aa198'
  colors.accent0 = '#268bd2'
  colors.hl0 = '#d33682'
  colors.hl1 = '#859900'
end

if vim.g.monarized_style == 'gray-dark' then
  colors.bg0 = '#0e0e0e'
  colors.bg1 = '#1c1c1c'
  colors.fg0 = '#b2b2b2'
  colors.fg1 = '#929292'
  colors.fade0 = '#5F606B'
  colors.fade1 = '#95969C'
  colors.accent0 = '#8FBCBB'
  colors.accent1 = '#88C0D0'
  colors.hl0 = '#268bd2'
  colors.hl1 = '#2aa198'
end

if vim.g.monarized_style == 'sienna' then
  colors.bg1 = '#262626'
  colors.bg0 = '#1c1c1c'
  colors.fg0 = '#c2787a'
  colors.fg1 = '#b34f53'
  -- colors.fg1 = '#d95a5f'
  colors.fade0 = '#805959'
  colors.fade1 = '#d2a2a1'
  colors.accent0 = '#fa9a5b'
  colors.accent1 = '#d95a5f'
  -- colors.accent1 = '#aaa7a4'
  colors.hl0 = '#96af89'
  colors.hl1 = '#a0cece'
end

if vim.g.monarized_style == 'purple-dark' then
  colors.bg0 = '#101129'
  colors.bg1 = '#171830'
  colors.fg0 = '#D0C5E7'
  colors.fg1 = '#B9A9DB'
  colors.fade0 = '#5F606B'
  colors.fade1 = '#95969C'
  colors.accent0 = '#8A6FC3'
  colors.accent1 = '#964BA5'
  colors.hl0 = '#826987'
  colors.hl1 = '#9185AB'
end

if vim.g.monarized_style == 'nord-dark' then
  colors.bg0 = '#2e3440'
  colors.bg1 = '#3b4252'
  colors.fg0 = '#ECEFF4'
  colors.fg1 = '#D8DEE9'
  colors.fade0 = '#45566a'
  colors.fade1 = '#81A1C1'
  colors.accent0 = '#8FBCBB'
  colors.accent1 = '#88C0D0'
  colors.hl0 = '#B48EAD'
  colors.hl1 = '#A3BE8C'
end

if vim.g.monarized_style == 'gruvbox-dark' then
  colors.bg0 = '#282828'
  colors.bg1 = '#3c3836'
  colors.fg0 = '#fbf1c7'
  colors.fg1 = '#ebdbb2'
  colors.fade0 = '#bdae93'
  colors.fade1 = '#a89984'

  colors.red = '#cc241d'
  colors.green = '#98971a'
  colors.yellow = '#d79921'
  colors.blue = '#458588'
  colors.magenta = '#b16286'
  colors.violet = '#d3869b'
  colors.cyan = '#8ec07c'
  colors.orange = '#d65d0e'

  colors.accent0 = colors.cyan
  colors.accent1 = colors.blue

  colors.hl0 = colors.violet
  colors.hl1 = colors.yellow
end

if vim.g.monarized_style == 'gruvbox-light' then
  colors.fg0 = '#282828'
  colors.fg1 = '#3c3836'
  colors.bg0 = '#fbf1c7'
  colors.bg1 = '#ebdbb2'
  colors.fade0 = '#7c6f64'
  colors.fade1 = '#504945'

  colors.red = '#cc241d'
  colors.green = '#98971a'
  colors.yellow = '#d79921'
  colors.blue = '#458588'
  colors.magenta = '#b16286'
  colors.violet = '#d3869b'
  colors.cyan = '#427b58'
  colors.orange = '#d65d0e'

  colors.accent0 = colors.cyan
  colors.accent1 = colors.blue

  colors.hl0 = colors.violet
  colors.hl1 = colors.yellow
end

return colors
