local monarized = require'monarized'

describe('colorscheme', function()
  it("should not error", function()
    monarized.setup()
    assert.has_no.errors(monarized.colors)
  end)
end)
