local function ApplyAuras(event, player, command)
    local prefix = "#" -- Replace with your desired prefix

    if command:sub(1, #prefix) == prefix then
        local commandWithoutPrefix = command:sub(#prefix + 1) -- Remove the prefix from the command
        if commandWithoutPrefix == "buff" then
            local auraIds = {26991, 467, 27127, 27169, 25898, 39374, 27268, 2048, 469, 22888, 24425, 16609, 22817, 22818, 22820, 15366, 25392, 32999} -- Replace with the desired aura IDs

            for _, auraId in ipairs(auraIds) do
                player:AddAura(auraId, player)
            end

            player:SendBroadcastMessage("Buffs have been applied")
        end
    end
end

RegisterPlayerEvent(18, ApplyAuras) -- Event 18 corresponds to the "ChatCommand" event