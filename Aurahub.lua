
-- AuraHub.lua
-- Starter module for your Roblox Aura Hub project.
-- Install and run through Roblox Studio.

local AuraHub = {}

AuraHub.Modes = {
    LIGHT = {
        Color = Color3.fromRGB(255, 245, 180),
        FlightEnabled = true,
    },

    VOID = {
        Color = Color3.fromRGB(160, 60, 255),
        FlightEnabled = false,
    },

    STORM = {
        Color = Color3.fromRGB(50, 200, 255),
        FlightEnabled = false,
    },
}

function AuraHub.GetRandomMode(currentMode)
    local choices = {}

    for name in pairs(AuraHub.Modes) do
        if name ~= currentMode then
            table.insert(choices, name)
        end
    end

    return choices[math.random(1, #choices)]
end

return AuraHub
