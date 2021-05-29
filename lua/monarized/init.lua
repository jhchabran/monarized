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

    if vim.g.nord_spell == 'underline' then
      --  TODO
        underline = s.underline
    elseif vim.g.nord_spell == 'undercurl' then
      --  TODO
        underline = s.undercurl
    end

      --  TODO
    if vim.g.nord_italic ~= nil and not vim.g.nord_italic then
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
    vim.g.terminal_color_0 = palette.base02
    vim.g.terminal_color_1 = palette.red
    vim.g.terminal_color_2 = palette.green
    vim.g.terminal_color_3 = palette.yellow
    vim.g.terminal_color_4 = palette.blue
    vim.g.terminal_color_5 = palette.magenta
    vim.g.terminal_color_6 = palette.cyan
    vim.g.terminal_color_7 = palette.base2
    vim.g.terminal_color_8 = palette.base03
    vim.g.terminal_color_9 = palette.orange
    vim.g.terminal_color_10 = palette.base01
    vim.g.terminal_color_11 = palette.base00
    vim.g.terminal_color_12 = palette.base0
    vim.g.terminal_color_13 = palette.violet
    vim.g.terminal_color_14 = palette.base1
    vim.g.terminal_color_15 = palette.base3

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

function M:use()
    local cs = initialize()
    local colors = load(c, s, cs)

    for _, group in ipairs(colors) do
        local check_none = function(none_resp)
            return function(x) return not x and none_resp or x end
        end

        local cNone = check_none(c.none)
        local sNone = check_none(s.none)
        Group.new(group[1], cNone(group[2]), cNone(group[3]), sNone(group[4]))
    end
end

return M
