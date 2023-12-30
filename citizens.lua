-- /citizens.lua
local colonyIntegrator = peripheral.find('colonyIntegrator')
local memoryStore = require("memory_store")
local logger = require("logger")

local function getCitizens()
    logger.log("Retrieving citizens data")
    local rawCitizens = colonyIntegrator.getCitizens() -- get raw citizen data
    if not rawCitizens then
        logger.log("Failed to retrieve citizens.")
        error('Failed to retrieve citizens.')
    end
    local formattedCitizens = {}
    
    for _, citizen in ipairs(rawCitizens) do
        
        -- Extract job from the work table
        local job = "Unknown"
        local workLocation = nil
        if citizen.work then
            job = citizen.work.job or job
            
            -- Extract work location
            if citizen.work.location then
                workLocation = {
                    x = citizen.work.location.x,
                    y = citizen.work.location.y,
                    z = citizen.work.location.z
                }
            end
        end
        
        table.insert(formattedCitizens, {
            id = citizen.id,
            name = citizen.name,
            age = citizen.age,
            gender = citizen.gender,
            location = citizen.location and {
                x = citizen.location.x,
                y = citizen.location.y,
                z = citizen.location.z
            } or nil,
            job = job,
            workLocation = workLocation,
            home = citizen.home,
            health = citizen.health and {
                current = citizen.health,
                max = citizen.maxHealth
            } or nil,
            happiness = citizen.happiness
        })
    end
    
    memoryStore.storeCitizenData(formattedCitizens)
    return formattedCitizens
end

return {
    getCitizens = getCitizens
}
