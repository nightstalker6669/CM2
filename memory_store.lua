-- /memory_store.lua
local citizensData = {}
local logger = require("logger")

local M = {}

function M.storeCitizenData(data)
    logger.log("Storing citizens data in memory")
    citizensData = data
end

function M.getCitizenData()
    logger.log("Fetching citizens data from memory")
    return citizensData
end

function M.clearCitizenData()
    logger.log("Clearing citizens data from memory")
    citizensData = {}
end

return M