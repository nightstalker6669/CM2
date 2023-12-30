-- /api.lua
-- This API script offers a standardized interface for other scripts to access citizen and colony data.

local citizensModule = require("citizens")
local colonyDataModule = require("colony_data")

local function getCompleteColonyData()
    -- Retrieve the citizen information from the citizens module.
    local citizensInfo = citizensModule.getCitizens()

    -- Retrieve the colony-wide metrics from the colony data module.
    local colonyInfo = colonyDataModule.getColonyInfo()

    -- Combine the retrieved data into a single table.
    local completeData = {
        citizens = citizensInfo,
        colony = colonyInfo
    }

    -- Return the combined data package.
    return completeData
end

local API = {
    getCitizenInfo = citizensModule.getCitizens,  -- Existing method.
    getColonyInfo = colonyDataModule.getColonyInfo,  -- Existing method.
    getCompleteColonyData = getCompleteColonyData  -- New facade method.
}

return API
