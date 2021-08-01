local utils = require('monarized.utils')
local palette = require('monarized.palette')
local colors = require('monarized.colors')
local Color, c, Group = require('colorbuddy').setup()
local s = require('colorbuddy.style').styles
local vim = vim
local M = {}

local function customizations()
    local underline = s.none
    local italic = s.italic

    if vim.g.monarized_spell == 'underline' then
        underline = s.underline
    elseif vim.g.monarized_spell == 'undercurl' then
        underline = s.undercurl
    end

    if vim.g.monarized_italic ~= nil and not vim.g.monarized_italic then
        italic = s.none
    end

    return {
        italic = italic,
        underline = underline
    }
end

local function initialize()
    for _k, _v in pairs(palette) do
        Color.new(_k, _v)
    end

    vim.g.colors_name = 'monarized'
    vim.g.terminal_color_0 = palette.bg1
    vim.g.terminal_color_1 = palette.red
    vim.g.terminal_color_2 = palette.green
    vim.g.terminal_color_3 = palette.yellow
    vim.g.terminal_color_4 = palette.blue
    vim.g.terminal_color_5 = palette.magenta
    vim.g.terminal_color_6 = palette.cyan
    vim.g.terminal_color_7 = palette.fg1
    vim.g.terminal_color_8 = palette.bg0
    vim.g.terminal_color_9 = palette.orange
    vim.g.terminal_color_10 = palette.fade0
    vim.g.terminal_color_11 = palette.fade0
    vim.g.terminal_color_12 = palette.fade1
    vim.g.terminal_color_13 = palette.violet
    vim.g.terminal_color_14 = palette.fade1
    vim.g.terminal_color_15 = palette.fg0

    return customizations()
end

local function load(c, s, cs)
    local definitions = {}
    for _, k in pairs(colors) do
        local fn = require('monarized.colors.' .. k)
        table.insert(definitions, fn(c, s, cs))
    end

    return utils.merge(definitions)
end

local function update_kitty()
  local refreshed_palette = require('monarized.palette')
  local cmd = "kitty @ set-colors background=%s foreground=%s"
  vim.fn.system(cmd:format(refreshed_palette.bg0, refreshed_palette.fg0))
  vim.cmd([[redraw]])
end

local function update_lualine()
  require("plenary.reload").reload_module("lualine", true)
  require("lualine").setup{
    options = {
      theme = require('monarized.lualine'),
    }
  }
end

function M:use()
    local cs = initialize()
    local colors = load(c, s, cs)

    for _, group in ipairs(colors) do
        local check_none = function(none_resp)
            return function(x) return not x and none_resp or x end
        end

        local cNone = check_none(c.none)
        local sNone = check_none(s.none)
        if not pcall(function()
          Group.new(group[1], cNone(group[2]), cNone(group[3]), sNone(group[4]))
        end) then
          for _, v in pairs(group) do
            print(v)
          end
        end
    end
end

function M.set_style(style)
  vim.g.monarized_style = style
  require("plenary.reload").reload_module("colorbuddy", true)
  require("plenary.reload").reload_module("monarized", true)
  require('colorbuddy').colorscheme('monarized')

  if vim.fn.executable("kitty") and vim.g.monarized_kitty_colors then
    update_kitty()
  end

  if vim.g.monarized_lualine then
    update_lualine()
  end
end

function M.styles()
  return {"dark", "light", "gray-dark", "purple-dark", "nord-dark", "gruvbox-dark", "gruvbox-light", "sienna"}
end

return M
