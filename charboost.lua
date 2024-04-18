local NPC_ID = 12345 -- Replace with the NPC ID of your boost NPC
local TOKEN_ITEM_ID = 54321 -- Replace with the item ID of the token required for boosting

local function BoostCharacter(event, player, creature)
    if player:GetItemCount(TOKEN_ITEM_ID) > 0 then
        player:RemoveItem(TOKEN_ITEM_ID, 1) -- Remove the token item

        -- Boost the character to level 70
        player:SetLevel(70)
        player:SetMaxLevel(70)

        -- Give the character a specific set of gear
        -- Replace the item IDs with the desired gear for each class
        local class = player:GetClass()
        if class == CLASS_WARRIOR then
            player:AddItem(123, 1) -- Example item ID for warrior gear
            player:AddItem(456, 1) -- Another example item ID for warrior gear
            -- Add more items for warrior gear here
        elseif class == CLASS_MAGE then
            player:AddItem(789, 1) -- Example item ID for mage gear
            player:AddItem(012, 1) -- Another example item ID for mage gear
            -- Add more items for mage gear here
        elseif class == CLASS_ROGUE then
            player:AddItem(345, 1) -- Example item ID for rogue gear
            player:AddItem(678, 1) -- Another example item ID for rogue gear
            -- Add more items for rogue gear here
        elseif class == CLASS_DRUID then
            player:AddItem(901, 1) -- Example item ID for druid gear
            player:AddItem(234, 1) -- Another example item ID for druid gear
            -- Add more items for druid gear here
        elseif class == CLASS_HUNTER then
            player:AddItem(567, 1) -- Example item ID for hunter gear
            player:AddItem(890, 1) -- Another example item ID for hunter gear
            -- Add more items for hunter gear here
        elseif class == CLASS_SHAMAN then
            player:AddItem(123, 1) -- Example item ID for shaman gear
            player:AddItem(456, 1) -- Another example item ID for shaman gear
            -- Add more items for shaman gear here
        elseif class == CLASS_PRIEST then
            player:AddItem(789, 1) -- Example item ID for priest gear
            player:AddItem(012, 1) -- Another example item ID for priest gear
            -- Add more items for priest gear here
        elseif class == CLASS_WARLOCK then
            player:AddItem(345, 1) -- Example item ID for warlock gear
            player:AddItem(678, 1) -- Another example item ID for warlock gear
            -- Add more items for warlock gear here
        elseif class == CLASS_PALADIN then
            player:AddItem(901, 1) -- Example item ID for paladin gear
            player:AddItem(234, 1) -- Another example item ID for paladin gear
            -- Add more items for paladin gear here
        end
        -- Add more class-specific gear here for other classes

        -- Teach the character some spells
        -- Replace the spell IDs with the desired spells for each class
        if class == CLASS_WARRIOR then
            player:LearnSpell(1234) -- Example spell ID for warrior spell
            player:LearnSpell(5678) -- Another example spell ID for warrior spell
            -- Add more spells for warrior here
        elseif class == CLASS_MAGE then
            player:LearnSpell(9012) -- Example spell ID for mage spell
            player:LearnSpell(3456) -- Another example spell ID for mage spell
            -- Add more spells for mage here
        elseif class == CLASS_ROGUE then
            player:LearnSpell(7890) -- Example spell ID for rogue spell
            player:LearnSpell(1234) -- Another example spell ID for rogue spell
            -- Add more spells for rogue here
        elseif class == CLASS_DRUID then
            player:LearnSpell(5678) -- Example spell ID for druid spell
            player:LearnSpell(9012) -- Another example spell ID for druid spell
            -- Add more spells for druid here
        elseif class == CLASS_HUNTER then
            player:LearnSpell(3456) -- Example spell ID for hunter spell
            player:LearnSpell(7890) -- Another example spell ID for hunter spell
            -- Add more spells for hunter here
