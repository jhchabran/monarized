local M = {}

function M.merge(list)
    local acc = {}
    for _, result in ipairs(list) do vim.list_extend(acc, result) end
    return acc
end

function M.highlight_to_groups(highlight)
    return function(groups)
        local acc = {}
        for _, name in ipairs(groups) do
            table.insert(acc, {name, highlight[1], highlight[2], highlight[3]})
        end
        return acc
    end
end

return M
