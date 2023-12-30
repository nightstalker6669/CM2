-- /commands/debug_command.lua
local debugToggle = require("debug_toggle")
local api = require("api")

local function printColonySummary()
    local colonyData = api.getColonyInfo()
    print("---- Colony Summary ----")
    print("ID: " .. colonyData.id)
    print("Name: " .. colonyData.name)
    print("Happiness: " .. colonyData.happiness)
    print("Citizen count: " .. colonyData.citizenCount .. "/" .. colonyData.maxCitizens)
    print("Graves: " .. colonyData.graves)
    print("Construction Sites: " .. colonyData.constructionSites)
    print("------------------------")
end

local function handleDebugCommand(command)
    if command == "colony_summary" then
        printColonySummary()
    else
        local switch = command:match("^debug (%a+)$")
        if switch and (switch == "on" or switch == "off") then
            debugToggle.toggleDebugMode(switch)
        else
            print("Invalid command. Use 'colony_summary' or 'debug on' or 'debug off'.")
        end
    end
end

return {
    handleDebugCommand = handleDebugCommand
}