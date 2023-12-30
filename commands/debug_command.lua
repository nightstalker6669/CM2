-- /commands/debug_command.lua
-- This command script listens for debug mode command and toggles the mode appropriately.

local debugToggle = require("/debug_toggle")

local function handleDebugCommand(command)
    local switch = command:match("^debug (%a+)$")
    if switch and (switch == "on" or switch == "off") then
        debugToggle.toggleDebugMode(switch)
    else
        print("Invalid debug command. Use 'debug on' or 'debug off'.")
    end
end

return {
    handleDebugCommand = handleDebugCommand
}