local Utils = {}

function Utils.has_value(tab, val, compare_callback)
    for index, value in ipairs(tab) do
        if compare_callback(value, val) then
            return index
        end
    end
    return nil
end

function Utils.print_table(table)
    for key, value in pairs(table) do
        print(key, "=", value)
    end
end

return Utils
