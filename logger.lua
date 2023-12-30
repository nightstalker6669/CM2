-- /logger.lua
local logEntries = {}
local debugMode = false

local function log(message)
    local timestamp = os.date("%Y-%m-%d %H:%M:%S")
    local entry = string.format("[%s] %s", timestamp, message)
    table.insert(logEntries, entry)

    if debugMode then
        print(entry)
    end
end

local function setDebugMode(mode)
    debugMode = mode
    log("Debug mode set to: " .. tostring(debugMode))
end

local function getDebugMode()
    return debugMode
end

local function dumpLog()
    for _, entry in ipairs(logEntries) do
        print(entry)
    end
end

local function clearLog()
    logEntries = {}
end

return {
    log = log,
    dumpLog = dumpLog,
    setDebugMode = setDebugMode,
    getDebugMode = getDebugMode,
    clearLog = clearLog
}