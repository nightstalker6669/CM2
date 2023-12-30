-- /colony_data.lua
local colonyIntegrator = peripheral.find('colonyIntegrator')
local logger = require("logger")

local function getColonyInfo()
    logger.log("Retrieving colony information")
    local colonyInfo = nil

    -- Use the advanced peripherals API to get colony-specific information
    local status, err = pcall(function()
        colonyInfo = {
            id = colonyIntegrator.getColonyID(),
            name = colonyIntegrator.getColonyName(),
            happiness = colonyIntegrator.getHappiness(),
            citizenCount = colonyIntegrator.amountOfCitizens(),
            maxCitizens = colonyIntegrator.maxOfCitizens(),
            graves = colonyIntegrator.amountOfGraves(),
            constructionSites = colonyIntegrator.amountOfConstructionSites(),
        }
    end)

    -- Check for any issues during the pcall function call. If an error occurs, log it.
    if not status or not colonyInfo then
        local errorMessage = "Failed to retrieve colony information: " .. (err or "Unknown error")
        logger.log(errorMessage)
        error(errorMessage)
    end
    
    logger.log("Colony information retrieved successfully with colony ID: " .. tostring(colonyInfo.id))
    
    return colonyInfo
end

return {
    getColonyInfo = getColonyInfo
}
