local NPC_ID = 40000 -- Replace with the NPC ID of your boost NPC
local TOKEN_ITEM_ID = 17 -- Replace with the item ID of the token required for boosting

-- Class Defines
local CLASS_WARRIOR = 1
local CLASS_PALADIN = 2
local CLASS_HUNTER = 3
local CLASS_ROGUE = 4
local CLASS_PRIEST = 5
local CLASS_SHAMAN = 7
local CLASS_MAGE = 8
local CLASS_WARLOCK = 9
local CLASS_DRUID = 11

local function BoostCharacter(event, player, creature)
    if player:GetItemCount(TOKEN_ITEM_ID) > 0 then
        player:RemoveItem(TOKEN_ITEM_ID, 1) -- Remove the token item

        -- Boost the character to level 70
        player:SetLevel(70)

        -- Give the character a specific set of gear
        -- Replace the item IDs with the desired gear for each class
		local class = player:GetClass()
		if class == CLASS_WARRIOR then
            player:AddItem(28224, 1) -- Wastewalker Helm
            player:AddItem(29349, 1) -- Adamantine Chain of the Unbroken
			player:AddItem(27434, 1) -- Mantle of Perenolde
			player:AddItem(27892, 1) -- Cloak of the Inciter
			player:AddItem(28403, 1) -- Doomplate Chestguard
			player:AddItem(29246, 1) -- Nightfall Wristguards
			player:AddItem(25685, 1) -- fel-leather-gloves
			player:AddItem(27985, 1) -- Deathforge Girdle
			player:AddItem(30533, 1) -- Vanquisher's Legplates
			player:AddItem(28176, 1) -- Sha'tari Wrought Greaves
			player:AddItem(27761, 1) -- Ring of the Shadow Deeps
			player:AddItem(27460, 1) -- Reavers' Ring
			player:AddItem(28034, 1) -- Hourglass of the Unraveller
			player:AddItem(28288, 1) -- Abacus of Violent Odds
			player:AddItem(31332, 1) -- Blinkstrike
			player:AddItem(27872, 1) -- The Harvester of Souls
			player:AddItem(28397, 1) -- Emberhawk Crossbow
			player:AddItem(7, 1) -- Gold Token for 5000 Gold
            -- Add more items for warrior gear here
        elseif class == CLASS_MAGE then
            player:AddItem(28193, 1) 	-- Mana-Etched Crown
            player:AddItem(28134, 1) 	-- Brooch of Heightened Potential
			player:AddItem(27796, 1) 	-- 	Mana-Etched Spaulders
			player:AddItem(27981, 1) 	-- Sethekk Oracle Cloak
			player:AddItem(29341, 1) 	-- Auchenai Anchorite's Robe
			player:AddItem(27462, 1) 	-- Crimson Bracers of Gloom
			player:AddItem(24450, 1) 	-- Manaspark Gloves
			player:AddItem(27843, 1) 	-- Glyph-Lined Sash
			player:AddItem(30531, 1) 	-- Breeches of the Occultist
			player:AddItem(28406, 1) 	-- Sigil-Laced Boots
			player:AddItem(28227, 1) 	-- Sparking Arcanite Ring
			player:AddItem(31290, 1) 	-- Band of Dominion
			player:AddItem(29370, 1) 	-- Icon of the Silver Crescent
			player:AddItem(27683, 1) 	-- Quagmirran's Eye
			player:AddItem(27905, 1) 	-- Greatsword of Horrid Dreams
			player:AddItem(28412, 1) 	-- Lamp of Peaceful Radiance
			player:AddItem(29350, 1) 	-- The Black Stalk
			player:AddItem(7, 1) -- Gold Token for 5000 Gold
            -- Add more items for mage gear here
        elseif class == CLASS_ROGUE then
            player:AddItem(28224, 1) -- Wastewalker Helm
            player:AddItem(27779, 1) -- Bone Chain Necklace
			player:AddItem(27797, 1) -- Wastewalker Shoulderpads
			player:AddItem(27878, 1) -- Auchenai Death Shroud
			player:AddItem(28264, 1) -- Wastewalker Tunic
			player:AddItem(29246, 1) -- Nightfall Wristguards
			player:AddItem(27509, 1) -- Handgrips of Assassination
			player:AddItem(29247, 1) -- Girdle of the Deathdealer
			player:AddItem(27837, 1) -- Wastewalker Leggings
			player:AddItem(27867, 1) -- Boots of the Unjust
			player:AddItem(31077, 1) -- Slayer's Mark of the Redemption
			player:AddItem(30860, 1) -- Kaylaan's Signet
			player:AddItem(28288, 1) -- Abacus of Violent Odds
			player:AddItem(28121, 1) -- Icon of Unyielding Courage
			player:AddItem(31332, 1) -- Blinkstrike
			player:AddItem(28189, 1) -- Latro's Shifting Sword
			player:AddItem(27526, 1) -- Skyfire Hawk-Bow
			player:AddItem(7, 1) -- Gold Token for 5000 Gold
            -- Add more items for rogue gear here
        elseif class == CLASS_DRUID then
            player:AddItem(8345, 1) -- Wolfshead Helm
            player:AddItem(27779, 1) -- Bone Chain Necklace
			player:AddItem(27797, 1) -- Wastewalker Shoulderpads
			player:AddItem(27878, 1) -- Auchenai Death Shroud
			player:AddItem(28264, 1) -- Wastewalker Tunic
			player:AddItem(29246, 1) -- Nightfall Wristguards
			player:AddItem(27531, 1) -- Wastewalker Gloves
			player:AddItem(27760, 1) -- Dunewind Sash
			player:AddItem(27837, 1) -- Wastewalker Leggings
			player:AddItem(29248, 1) -- Shadowstep Striders
			player:AddItem(31920, 1) -- Shaffar's Band of Brutality
			player:AddItem(27925, 1) -- Ravenclaw Band
			player:AddItem(28034, 1) -- Hourglass of the Unraveller
			player:AddItem(28288, 1) -- Abacus of Violent Odds
			player:AddItem(29359, 1) -- Feral Staff of Lashing
			player:AddItem(32387, 1) -- Idol of the Raven Goddess
			player:AddItem(7, 1) -- Gold Token for 5000 Gold
            -- Add more items for druid gear here
        elseif class == CLASS_HUNTER then
            player:AddItem(28275, 1) -- Beast Lord Helm
            player:AddItem(27779, 1) -- Bone Chain Necklace
			player:AddItem(27801, 1) -- Beast Lord Mantle
			player:AddItem(27878, 1) -- Auchenai Death Shroud
			player:AddItem(24396, 1) -- Vest of Vengeance
			player:AddItem(29246, 1) -- Nightfall Wristguards
			player:AddItem(27474, 1) -- Beast Lord Handguards
			player:AddItem(25789, 1) -- Rune-Engraved Belt
			player:AddItem(27874, 1) -- Beast Lord Leggings
			player:AddItem(27867, 1) -- Boots of the Unjust
			player:AddItem(30860, 1) -- Kaylaan's Signet
			player:AddItem(31077, 1) -- Slayer's Mark of the Redemption
			player:AddItem(28034, 1) -- Hourglass of the Unraveller
			player:AddItem(28288, 1) -- Abacus of Violent Odds
			player:AddItem(27846, 1) -- Claw of the Watcher
			player:AddItem(28315, 1) -- Stormreaver Warblades
			player:AddItem(29351, 1) -- Wrathtide Longbow
			player:AddItem(7, 1) -- Gold Token for 5000 Gold
            -- Add more items for hunter gear here
        elseif class == CLASS_SHAMAN then
            player:AddItem(28758, 1) -- Exorcist's Mail Helm
            player:AddItem(31692, 1) -- Natasha's Ember Necklace
			player:AddItem(27796, 1) -- Mana-Etched Spaulders
			player:AddItem(27981, 1) -- Sethekk Oracle Cloak
			player:AddItem(28231, 1) -- Tidefury Chestpiece
			player:AddItem(27522, 1) -- World's End Bracers
			player:AddItem(27793, 1) -- Earth Mantle Handwraps
			player:AddItem(27743, 1) -- Girdle of Living Flame
			player:AddItem(30541, 1) -- Stormsong Kilt
			player:AddItem(27845, 1) -- Magma Plume Boots
			player:AddItem(32779, 1) -- Band of Frigid Elements
			player:AddItem(31290, 1) -- Band of Dominion
			player:AddItem(27683, 1) -- Quagmirran's Eye
			player:AddItem(29370, 1) -- Icon of the Silver Crescent
			player:AddItem(29355, 1) -- Terokk's Shadowstaff
			player:AddItem(28248, 1) -- Totem of the Void
			player:AddItem(7, 1) -- Gold Token for 5000 Gold
            -- Add more items for shaman gear here
        elseif class == CLASS_PRIEST then
            player:AddItem(31104, 1) -- Evoker's Helmet of Second Sight
            player:AddItem(31692, 1) -- Natasha's Ember Necklace
			player:AddItem(27778, 1) -- Spaulders of Oblivion
			player:AddItem(27981, 1) 	-- Sethekk Oracle Cloak
			player:AddItem(28232, 1) -- Robe of Oblivion
			player:AddItem(28174, 1) -- Shattrath Wraps
			player:AddItem(29317, 1) -- Tempest's Touch
			player:AddItem(27843, 1) -- Glyph-Lined Sash
			player:AddItem(30531, 1) -- Breeches of the Occultist
			player:AddItem(28179, 1) -- Shattrath Jumpers
			player:AddItem(29352, 1) -- Cobalt Band of Tyrigosa
			player:AddItem(31075, 1) -- Evoker's Mark of the Redemption
			player:AddItem(28223, 1) -- Arcanist's Stone
			player:AddItem(27683, 1) -- Quagmirran's Eye
			player:AddItem(27543, 1) -- Starlight Dagger
			player:AddItem(28412, 1) -- Lamp of Peaceful Radiance
			player:AddItem(29350, 1) -- The Black Stalk
			player:AddItem(7, 1) -- Gold Token for 5000 Gold
            -- Add more items for priest gear here
        elseif class == CLASS_WARLOCK then
            player:AddItem(28193, 1) -- Mana-Etched Crown
            player:AddItem(28134, 1) -- Brooch of Heightened Potential
			player:AddItem(27796, 1) -- Mana-Etched Spaulders
			player:AddItem(27981, 1) -- Sethekk Oracle Cloak
			player:AddItem(29341, 1) -- Auchenai Anchorite's Robe
			player:AddItem(27462, 1) -- Crimson Bracers of Gloom
			player:AddItem(27465, 1) -- Mana-Etched Gloves
			player:AddItem(29241, 1) -- Belt of Depravity
			player:AddItem(28212, 1) -- Aran's Sorcerous Slacks
			player:AddItem(27821, 1) -- Extravagant Boots of Malice
			player:AddItem(28555, 1) -- Seal of the Exorcist
			player:AddItem(28227, 1) -- Sparking Arcanite Ring
			player:AddItem(27683, 1) -- Quagmirran's Eye
			player:AddItem(29370, 1) -- Icon of the Silver Crescent
			player:AddItem(29355, 1) -- Terokk's Shadowstaff
			player:AddItem(28386, 1) -- Nether Core's Control Rod
			player:AddItem(7, 1) -- Gold Token for 5000 Gold
            -- Add more items for warlock gear here
        elseif class == CLASS_PALADIN then
            player:AddItem(28182, 1) -- Helm of the Claw
            player:AddItem(27779, 1) -- Bone Chain Necklace
			player:AddItem(27771, 1) -- Doomplate Shoulderguard
			player:AddItem(24259, 1) -- Vengeance Wrap
			player:AddItem(28403, 1) -- Doomplate Chestguard
			player:AddItem(23537, 1) -- Black Felsteel Bracers
			player:AddItem(29509, 1) -- Windstrike Gloves
			player:AddItem(27985, 1) -- Deathforge Girdle
			player:AddItem(30257, 1) -- Shattrath Leggings
			player:AddItem(28176, 1) -- Sha'tari Wrought Greaves
			player:AddItem(31920, 1) -- Shaffar's Band of Brutality
			player:AddItem(30365, 1) -- Overseer's Signet
			player:AddItem(28288, 1) -- Abacus of Violent Odds
			player:AddItem(28041, 1) -- Bladefist's Breadth
			player:AddItem(29356, 1) -- Quantum Blade
			player:AddItem(27484, 1) -- Libram of Avengement
			player:AddItem(7, 1) -- Gold Token for 5000 Gold
            -- Add more items for paladin gear here
        end
        -- Add more class-specific gear here for other classes

        -- Teach the character some spells
        -- Replace the spell IDs with the desired spells for each class
        if class == CLASS_WARRIOR then
			player:LearnSpell(750) -- Plate Armor
            player:LearnSpell(71) -- Defensive Stance
            player:LearnSpell(7386) -- Sunder Armor
            player:LearnSpell(355) -- Taunt
            player:LearnSpell(2458) -- Berserker Stance
            player:LearnSpell(20252) -- Intercept
			player:LearnSpell(674) -- Dual Wield
			player:LearnSpell(201) -- Swords
			player:LearnSpell(264) -- Bows
			player:LearnSpell(5011) -- Crossbows
			player:LearnSpell(1180) -- Daggers
            player:LearnSpell(46149) -- Teleport: Shattrath
			player:LearnSpell(33391) -- Ground Mount 100%
        elseif class == CLASS_MAGE then
            player:LearnSpell(46149) -- Teleport: Shattrath
			player:LearnSpell(201) -- Swords
			player:LearnSpell(1180) -- Daggers
			player:LearnSpell(33391) -- Ground Mount 100%
        elseif class == CLASS_ROGUE then
            player:LearnSpell(1787) -- Stealth
			player:LearnSpell(674) -- Dual Wield
			player:LearnSpell(201) -- Swords
			player:LearnSpell(264) -- Bows
			player:LearnSpell(5011) -- Crossbows
            player:LearnSpell(46149) -- Teleport: Shattrath
			player:LearnSpell(33391) -- Ground Mount 100%
        elseif class == CLASS_DRUID then
            player:LearnSpell(5487) -- Bear Form
            player:LearnSpell(99) -- Demoralizing Roar
            player:LearnSpell(6795) -- Growl
            player:LearnSpell(6807) -- Maul
            player:LearnSpell(18960) -- Teleport: Moonglade
            player:LearnSpell(783) -- Travel Form
            player:LearnSpell(768) -- Cat Form
            player:LearnSpell(1066) -- Aquatic Form
            player:LearnSpell(33943) -- Flight Form
            player:LearnSpell(46149) -- Teleport: Shattrath
			player:LearnSpell(1180) -- Daggers
			player:LearnSpell(33391) -- Ground Mount 100%
        elseif class == CLASS_HUNTER then
			player:LearnSpell(8737) -- Mail Armor
            player:LearnSpell(883) -- Call Pet
            player:LearnSpell(2641) -- Dismiss Pet
            player:LearnSpell(6991) -- Feed Pet
            player:LearnSpell(982) -- Revive Pet
            player:LearnSpell(136) -- Mend Pet
			player:LearnSpell(201) -- Swords
			player:LearnSpell(264) -- Bows
			player:LearnSpell(674) -- Dual Wield
			player:LearnSpell(5011) -- Crossbows
			player:LearnSpell(15590) -- Fist Weapons
            player:LearnSpell(46149) -- Teleport: Shattrath
			player:LearnSpell(33391) -- Ground Mount 100%
        elseif class == CLASS_SHAMAN then
			player:LearnSpell(8737) -- Mail Armor
            player:Additem(5175) -- Earth Totem
            player:LearnSpell(8071) -- Stoneskin Totem
            player:Additem(5176) -- Fire Totem
            player:LearnSpell(3599) -- Searing Totem
            player:AddItem(5177) -- Water Totem
            player:LearnSpell(5394) -- Healing Stream Totem
            player:AddItem(5178) -- Air Totem
            player:LearnSpell(46149) -- Teleport: Shattrath
			player:LearnSpell(1180) -- Daggers
			player:LearnSpell(33391) -- Ground Mount 100%
        elseif class == CLASS_PRIEST then
            player:LearnSpell(46149) -- Teleport: Shattrath
			player:LearnSpell(1180) -- Daggers
			player:LearnSpell(33391) -- Ground Mount 100%
        elseif class == CLASS_WARLOCK then
            player:LearnSpell(688) -- Summon Imp
            player:LearnSpell(697) -- Summon Voidwalker
            player:LearnSpell(712) -- Summon Succubus
            player:LearnSpell(691) -- Summon Felhunter
            player:LearnSpell(46149) -- Teleport: Shattrath
			player:LearnSpell(1180) -- Daggers
			player:LearnSpell(201) -- Swords
			player:LearnSpell(227) -- Staves
			player:LearnSpell(33391) -- Ground Mount 100%
        elseif class == CLASS_PALADIN then
			player:LearnSpell(750) -- Plate Armor
            player:LearnSpell(7328) -- Redemption
            player:LearnSpell(34769) -- Summon Warhorse (Bloodelf Style)
            player:LearnSpell(34767) -- Summon Charger (Bloodelf Style)
            player:LearnSpell(46149) -- Teleport: Shattrath
			player:LearnSpell(202) -- Two-Handed Swords
        end

        -- Max the character's weapon skill
        player:SetSkill(SKILL_WEAPON, 375) -- Replace 375 with the maximum weapon skill for your expansion

        player:SendBroadcastMessage("Congratulations! Your character has been boosted to level 70.")
    else
        player:SendBroadcastMessage("You don't have the required token to boost your character.")
    end

    player:GossipComplete()
end

RegisterCreatureGossipEvent(NPC_ID, 1, BoostCharacter) -- Register gossip event for the boost NPC