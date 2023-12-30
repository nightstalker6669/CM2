-- /debug_toggle.lua
-- This script toggles the debug mode on or off.

local logger = require("logger")

local function toggleDebugMode(state)
    local mode = state:lower() == "on"
    logger.setDebugMode(mode)
    if mode then
        logger.log("Debug mode turned ON")
    else
        logger.log("Debug mode turned OFF")
    end
end

return {
    toggleDebugMode = toggleDebugMode
}