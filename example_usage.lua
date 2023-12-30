-- example_usage.lua
-- Example usage of the api.lua script within the same Lua environment.

local cm2API = require("/api")

local function printCitizenInfo()
    local citizens = cm2API.getCitizenInfo()
    -- Use the citizens data as needed, for example, printing information. Modify this example accordingly.
    for _, citizen in ipairs(citizens) do
        print(citizen.name .. " " .. tostring(citizen.job)) -- INPUT_REQUIRED {Input an example use case of the citizen info.}
    end
end

-- Call the function to test it
printCitizenInfo()
