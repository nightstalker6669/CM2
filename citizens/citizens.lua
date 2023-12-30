-- /citizens/citizens.lua
local colonyIntegrator = peripheral.find('colonyIntegrator')
local memoryStore = require("memory_store")
local logger = require("logger")
local colonyData = require("colony_data")
local getFormattedCitizenData = require("citizens/get_formatted_citizen_data").getFormattedCitizenData

local function getCitizens()
    logger.log("Retrieving citizens data")
    local rawCitizens = colonyIntegrator.getCitizens() -- get raw citizen data
    local colonyInfo = colonyData.getColonyInfo()  -- retrieve colony info
    if not rawCitizens then
        logger.log("Failed to retrieve citizens.")
        error('Failed to retrieve citizens.')
    end
    local formattedCitizens = {}
    
    for _, citizen in ipairs(rawCitizens) do
        table.insert(formattedCitizens, getFormattedCitizenData(citizen, colonyInfo))
    end
    
    memoryStore.storeCitizenData(formattedCitizens)
    return formattedCitizens
end

return {
    getCitizens = getCitizens
}
