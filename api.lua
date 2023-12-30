-- /api.lua
-- This API script offers a standardized interface for other scripts to access citizen data.

local citizensModule = require("/citizens")

local function getCitizenInfo()
    -- This function acts as a wrapper around the original 'getCitizens()' function.
    -- It can be extended later if necessary to include additional data processing or error handling.
    return citizensModule.getCitizens()
end

local API = {
    getCitizenInfo = getCitizenInfo
}

return API
