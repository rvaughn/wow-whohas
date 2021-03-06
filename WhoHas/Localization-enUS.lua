SLASH_WHOHAS1 = "/whohas";
SLASH_WHOHAS2 = "/wh";

WHOHAS_TITLE = "WhoHas";
WHOHAS_SUBTEXT = "These options allow you to control what information WhoHas includes in your tooltips.";

WhoHas.support = {
   ["none"]                     = "WhoHas: no inventory addon found",
   ["SizPoss"]                  = "WhoHas: using Possessions data",
   ["LSPoss"]                   = "WhoHas: using Lauchsuppe's Possessions data",
   ["CP"]                       = "WhoHas: using CharacterProfiler data",
   ["Armory"]                   = "WhoHas: using Armory data",
   ["Altoholic"]                = "WhoHas: using Altoholic data",
   ["Bagnon"]                   = "WhoHas: using Bagnon data",
}

WhoHas.text = {
   ["WhoHasConfigFrame"]        = "WhoHas Config",
   ["WhoHasCloseButton"]        = "Close",
   ["WhoHasEnableButton"]       = "Enable WhoHas",
   ["WhoHasTotalsButton"]       = "Show Totals",
   ["WhoHasStackSizeButton"]    = "Show Stack Sizes",
   ["WhoHasInboxButton"]        = "Include Inbox Items",
   ["WhoHasVoidStoreButton"]    = "Include Void Storage",
   ["WhoHasEquipmentButton"]    = "Include Equipped Items",
   ["WhoHasBagsButton"]         = "Include Equipped Bags",
   ["WhoHasVaultButton"]        = "Include Guild Vault",
   ["WhoHasWorldButton"]        = "Disable world tooltips",
   ["WhoHasMinesButton"]        = "Show ore counts for mines",
   ["WhoHasOresButton"]         = "Show metal, primal and essence counts",
   ["WhoHasAllGuildsButton"]    = "Show alt Guild Vaults",
   ["WhoHasTabsButton"]         = "Show tabs in Guild Vaults",
   ["WhoHasFactionsButton"]     = "Include both factions",
   ["WhoHasRealmsButton"]       = "Include all realms",

   ["WhoHasBackendSelection"]   = "Use data from addon:",

   ["ignore"]                   = "ignore",
   ["usage"]                    = "usage: /whohas [ignore ITEM]",

   ["auto"]                     = "Auto-detect",
   ["armory"]                   = "Armory",
   ["possess"]                  = "Possessions",
   ["charprof"]                 = "CharacterProfiler",
   ["altoholic"]                = "Altoholic",
   ["bagnon"]                   = "Bagnon",
}

WHOHAS_BACKEND_TEXT = WhoHas.text.WhoHasBackendSelection;

WhoHas.formats = {
   ["inventory"]                = "%u in %s's inventory",
   ["bank"]                     = "%u in %s's bank",
   ["inbox"]                    = "%u in %s's inbox",
   ["keyring"]                  = "%u in %s's keyring",
   ["equipment"]                = "%u in %s's equipped items",
   ["invbags"]                  = "%u in %s's inventory bags",
   ["bankbags"]                 = "%u in %s's bank bags",
   ["vault"]                    = "%u in the Guild Vault",
   ["multivault"]               = "%u in %s's Guild Vault",
   ["vaulttab"]                 = "%u in the Guild Vault tab %u",
   ["multivaulttab"]            = "%u in %s's Guild Vault tab %u",
   ["voidstore"]                = "%u in %s's void storage",
   ["reagents"]                 = "%u in %s's reagent bank",

   ["total"]                    = "%u total",
   ["stack"]                    = "Stack size: %u",

   ["ignore"]                   = "WhoHas: ignoring \"%s\"",
   ["noitem"]                   = "WhoHas: no such item \"%s\"",
}

WhoHas.mines = {
   ["Adamantite Deposit"]              = "Adamantite Ore",
   ["Copper Vein"]                     = "Copper Ore",
   ["Dark Iron Deposit"]               = "Dark Iron Ore",
   ["Fel Iron Deposit"]                = "Fel Iron Ore",
   ["Gold Vein"]                       = "Gold Ore",
   ["Hakkari Thorium Vein"]            = "Thorium Ore",
   ["Iron Deposit"]                    = "Iron Ore",
   ["Khorium Vein"]                    = "Khorium Ore",
   ["Mithril Deposit"]                 = "Mithril Ore",
   ["Ooze Covered Gold Vein"]          = "Gold Ore",
   ["Ooze Covered Mithril Deposit"]    = "Mithril Ore",
   ["Ooze Covered Rich Thorium Vein"]  = "Thorium Ore",
   ["Ooze Covered Silver Vein"]        = "Silver Ore",
   ["Ooze Covered Thorium Vein"]       = "Thorium Ore",
   ["Ooze Covered Truesilver Deposit"] = "Truesilver Ore",
   ["Rich Adamantite Deposit"]         = "Adamantite Ore",
   ["Rich Thorium Vein"]               = "Thorium Ore",
   ["Silver Vein"]                     = "Silver Ore",
   ["Small Thorium Vein"]              = "Thorium Ore",
   ["Tin Vein"]                        = "Tin Ore",
   ["Truesilver Deposit"]              = "Truesilver Ore",
   ["Cobalt Deposit"]                  = "Cobalt Ore",
   ["Rich Cobalt Deposit"]             = "Cobalt Ore",
   ["Saronite Deposit"]                = "Saronite Ore",
   ["Rich Saronite Deposit"]           = "Saronite Ore",
   ["Titanium Vein"]                   = "Titanium Ore",
   ["Obsidium Deposit"]                = "Obsidium Ore",
   ["Rich Obsidium Deposit"]           = "Obsidium Ore",
   ["Elementium Vein"]                 = "Elementium Ore",
   ["Rich Elementium Vein"]            = "Elementium Ore",
   ["Pyrite Deposit"]                  = "Pyrite Ore",
   ["Rich Pyrite Deposit"]             = "Pyrite Ore",
   ["Ghost Iron Deposit"]              = "Ghost Iron Ore",
   ["Rich Ghost Iron Deposit"]         = "Ghost Iron Ore",
   -- these aren't going to work right - fix it
   ["Trillium Vein"]                   = "Black Trillium Ore",
   ["Trillium Vein"]                   = "White Trillium Ore",
   ["Rich Trillium Vein"]              = "Black Trillium Ore",
   ["Rich Trillium Vein"]              = "White Trillium Ore",
   ["Kyparite Deposit"]                = "Kyparite",
   ["Rich Kyparite Deposit"]           = "Kyparite",

   ["Lesser Bloodstone Deposit"]       = "Lesser Bloodstone Ore",
   ["Incendicite Mineral Vein"]        = "Incendicite Ore",
   ["Indurium Mineral Vein"]           = "Indurium Ore",
   ["Nethercite Deposit"]              = "Nethercite Ore",
}

WhoHas.xlat = {
   ["Mote of Air"]              = "Primal Air",
   ["Mote of Shadow"]           = "Primal Shadow",
   ["Mote of Water"]            = "Primal Water",
   ["Mote of Fire"]             = "Primal Fire",
   ["Mote of Mana"]             = "Primal Mana",
   ["Mote of Life"]             = "Primal Life",
   ["Mote of Earth"]            = "Primal Earth",

   ["Adamantite Ore"]           = "Adamantite Bar",
   ["Fel Iron Ore"]             = "Fel Iron Bar",
   ["Eternium Ore"]             = "Eternium Bar",
   ["Khorium Ore"]              = "Khorium Bar",
   ["Thorium Ore"]              = "Thorium Bar",
   ["Truesilver Ore"]           = "Truesilver Bar",
   ["Mithril Ore"]              = "Mithril Bar",
   ["Gold Ore"]                 = "Gold Bar",
   ["Tin Ore"]                  = "Tin Bar",
   ["Copper Ore"]               = "Copper Bar",
   ["Silver Ore"]               = "Silver Bar",
   ["Iron Ore"]                 = "Iron Bar",
   ["Dark Iron Ore"]            = "Dark Iron Bar",
   ["Elementium Ore"]           = "Elementium Bar",
   ["Titanium Ore"]             = "Titanium Bar",
   ["Cobalt Ore"]               = "Cobalt Bar",
   ["Saronite Ore"]             = "Saronite Bar",

   ["Adamantite Bar"]           = "Hardened Adamantite Bar",
   ["Fel Iron Bar"]             = "Felsteel Bar",
   ["Eternium Bar"]             = "Felsteel Bar",
   ["Iron Bar"]                 = "Steel Bar",
   ["Tin Bar"]                  = "Bronze Bar",
   ["Copper Bar"]               = "Bronze Bar",
   ["Khorium Bar"]              = "Hardened Khorium",
   ["Hardened Adamantite Bar"]  = "Hardened Khorium",
   ["Titanium Bar"]             = "Titansteel Bar",

   ["Thorium Bar"]              = "Enchanted Thorium Bar",
   --["Thorium Bar"]              = "Arcanite Bar",
   ["Elementium Ingot"]         = "Enchanted Elementium Bar",
   ["Arcanite Bar"]             = "Enchanted Elementium Bar",
   ["Obsidium Ore"]             = "Obsidium Bar",
   ["Obsidium Bar"]             = "Folded Obsidium",
   ["Elementium Ore"]           = "Elementium Bar",
   ["Elementium Bar"]           = "Hardened Elementium Bar",
   ["Pyrite Ore"]               = "Pyrium Bar",
   ["Pyrium Bar"]               = "Truegold",

   ["Ghost Iron Ore"]           = "Ghost Iron Bar",
   ["Ghost Iron Bar"]           = "Folded Ghost Iron",
   ["Black Trillium Ore"]       = "Trillium Bar",
   ["White Trillium Ore"]       = "Trillium Bar",
   --["Ghost Iron Bar"]           = "Trillium Bar",
   ["Trillium Bar"]             = "Living Steel",

   ["Crystallized Water"]       = "Eternal Water",
   ["Crystallized Earth"]       = "Eternal Earth",
   ["Crystallized Fire"]        = "Eternal Fire",
   ["Crystallized Air"]         = "Eternal Air",
   ["Crystallized Shadow"]      = "Eternal Shadow",
   ["Crystallized Life"]        = "Eternal Life",
}

WhoHas.enchant = {
   ["Lesser Magic Essence"]       = "Greater Magic Essence",
   ["Lesser Astral Essence"]      = "Greater Astral Essence",
   ["Lesser Mystic Essence"]      = "Greater Mystic Essence",
   ["Lesser Nether Essence"]      = "Greater Nether Essence",
   ["Lesser Eternal Essence"]     = "Greater Eternal Essence",
   ["Lesser Planar Essence"]      = "Greater Planar Essence",
   ["Lesser Cosmic Essence"]      = "Greater Cosmic Essence",
   ["Lesser Celestial Essence"]   = "Greater Celestial Essence",
   ["Lesser Mysterious Essence"]  = "Greater Mysterious Essence",

   ["Greater Magic Essence"]      = "Lesser Magic Essence",
   ["Greater Astral Essence"]     = "Lesser Astral Essence",
   ["Greater Mystic Essence"]     = "Lesser Mystic Essence",
   ["Greater Nether Essence"]     = "Lesser Nether Essence",
   ["Greater Eternal Essence"]    = "Lesser Eternal Essence",
   ["Greater Planar Essence"]     = "Lesser Planar Essence",
   ["Greater Cosmic Essence"]     = "Lesser Cosmic Essence",
   ["Greater Celestial Essence"]  = "Lesser Celestial Essence",
   ["Greater Mysterious Essence"] = "Lesser Mysterious Essence",

   ["Small Dream Shard"]          = "Dream Shard",
   ["Small Heavenly Shard"]       = "Heavenly Shard",
   ["Small Ethereal Shard"]       = "Ethereal Shard",

   ["Mote of Harmony"]            = "Spirit of Harmony",
   ["Spirit of Harmony"]          = "Mote of Harmony",
}
