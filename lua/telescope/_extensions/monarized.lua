local telescope_installed, telescope = pcall(require, 'telescope')

if not telescope_installed then
    error('This plugins requires nvim-telescope/telescope.nvim')
end

local pickers = require('telescope.pickers')
local action_state = require('telescope.actions.state')
local finders = require('telescope.finders')
local conf = require('telescope.config').values
local monarized = require('monarized')

local function style_picker(opts)
  opts = opts or {}

  pickers.new(opts, {
    prompt_title = "Monarized style picker",
    finder = finders.new_table({results = monarized.styles()}),
    sorter = conf.generic_sorter(),
    attach_mappings = function(_, map)
      local apply = function()
        local theme = action_state.get_selected_entry()[1]
        for _, v in ipairs(monarized.styles()) do
          if v == theme then
            monarized.set_style(theme)
          end
        end
      end
      map('i', '<CR>', apply)
      map('n', '<CR>', apply)
      return true
    end
  }):find()
end

return telescope.register_extension({
  exports = {
    monarized = style_picker,
  }
})
