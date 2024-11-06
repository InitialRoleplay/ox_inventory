local items = {}
local files = {
    'carkeys',
    'clothes',
    'drugs',
    'inventory',
    'mechanic',
    'police',
    'radio',
}

for _, file in ipairs(files) do
    local item = require("data.items." .. file)
    for k, v in pairs(item) do
        items[k] = v
    end
end

return items
