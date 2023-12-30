-- /startup.lua
local colonyIntegrator = peripheral.find('colonyIntegrator')
if not colonyIntegrator then
    error('Colony Integrator not found')
end

return {
    colonyIntegrator = colonyIntegrator
}