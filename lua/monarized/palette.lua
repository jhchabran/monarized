local colors = {
  base03 =    '#002b36',
  base02 =    '#073642',
  base01 =    '#586e75',
  base00 =    '#657b83',
  base0 =     '#839496',
  base1 =     '#93a1a1',
  base2 =     '#eee8d5',
  base3 =     '#fdf6e3',
  yellow =    '#b58900',
  orange =    '#cb4b16',
  red =       '#dc322f',
  magenta =   '#d33682',
  violet =    '#6c71c4',
  blue =      '#268bd2',
  cyan =      '#2aa198',
  green =     '#859900',
}

if vim.g.monarized_style == 'dark_gold' then
  colors.base1 = '#9F7A00'
  colors.base2 = '#FFC300'
  colors.base3 = '#FFDA60'
  colors.cyan  = '#FFE99F'
  colors.blue  = '#DAF7A6'
end

-- TODO tones should be adjusted in the opposite order, ie lighter -> darker
if vim.g.monarized_style == 'light' then
  local base0 = colors.base0
  local base1 = colors.base1
  local base2 = colors.base2
  local base3 = colors.base3

  colors.base0 = colors.base00
  colors.base1 = colors.base01
  colors.base2 = colors.base02
  colors.base3 = colors.base03

  colors.base00 = base0
  colors.base01 = base1
  colors.base02 = base2
  colors.base03 = base3
end

return colors
