-- /citizens/get_formatted_citizen_data.lua
local function getFormattedCitizenData(citizen, colonyInfo)
    local citizenData = {
        id = citizen.id,
        name = citizen.name,
        age = citizen.age,
        gender = citizen.gender,
        job = citizen.work and citizen.work.job or "Unknown",
        home = citizen.home,
        health = citizen.health and {
            current = citizen.health,
            max = citizen.maxHealth
        } or nil,
        happiness = citizen.happiness
    }
    for key, value in pairs(colonyInfo) do
        citizenData[key] = value
    end
    return citizenData
end

return {
    getFormattedCitizenData = getFormattedCitizenData
}
