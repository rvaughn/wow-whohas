-- German translation provided by Pelion of ri.gametraveler.ch.  Thanks Pelion!

if (GetLocale() == "deDE") then

WhoHas.support = {
   ["none"]                     = "WhoHas: Kein Inventar-AddOn gefunden",
   ["SizPoss"]                  = "WhoHas: Verwende Siz's Possessions Daten",
   ["LSPoss"]                   = "WhoHas: Verwende Lauchsuppe's Possessions Daten",
   ["CP"]                       = "WhoHas: Verwende CharacterProfiler Daten",
   ["Armory"]                   = "WhoHas: Verwende Arsenal Daten",
}

WhoHas.text = {
   ["WhoHasConfigFrame"]        = "WhoHas Konfiguration",
   ["WhoHasCloseButton"]        = "Fertig",
   ["WhoHasEnableButton"]       = "Aktiviere WhoHas",
   ["WhoHasTotalsButton"]       = "Total anzeigen",
   ["WhoHasStackSizeButton"]    = "Stapelgr\195\182\195\159e anzeigen",
   ["WhoHasInboxButton"]        = "Briefkasteninhalt einbeziehen",
   ["WhoHasKeyringButton"]      = "Schl\195\188ssel einbeziehen",
   ["WhoHasEquipmentButton"]    = "Ausr\195\188stung einbeziehen",
   ["WhoHasBagsButton"]         = "Zusatztaschen einbeziehen",
   ["WhoHasVaultButton"]        = "Gildentresor einbeziehen",
   ["WhoHasWorldButton"]        = "Weltweite Tooltips ausschalten",
   ["WhoHasMinesButton"]        = "Zeige Erzanzahl in Minen",
   ["WhoHasOresButton"]         = "Zeige Barren-, Elementar- und Essenzanzahl",
   ["WhoHasAllGuildsButton"]    = "Zeige alternative Gildentresore",
   ["WhoHasTabsButton"]         = "Zeige Gildenbankf\195\164cher",

   ["ignore"]                   = "ignore",
   ["usage"]                    = "Befehl: /whohas [ignore ITEM]",

   ["auto"]                     = "Auto-detect",
   ["armory"]                   = "Armory",
   ["possess"]                  = "Possessions",
   ["charprof"]                 = "CharacterProfiler",
}

WhoHas.formats = {
   ["inventory"]                = "%u in %s's Inventar",
   ["bank"]                     = "%u auf %s's Bank",
   ["inbox"]                    = "%u in %s's Briefkasten",
   ["keyring"]                  = "%u an %s's Schl\195\188sselbund",
   ["equipment"]                = "%u in %s's Ausr\195\188stung",
   ["invbags"]                  = "%u in %s's Zusatztaschen",
   ["bankbags"]                 = "%u in %s's Banktaschen",
   ["vault"]                    = "%u im Gildentresor",
   ["multivault"]               = "%u in %s's Gildentresor",
   ["vaulttab"]                 = "%u im Gildenbankfach %u", -- guildbank!
   ["multivaulttab"]            = "%u in %s's Gildenbankfach %u", -- guildbank!

   ["total"]                    = "Total: %u",
   ["stack"]                    = "Stapelgr\195\182\195\159e: %u",

   ["ignore"]                   = "WhoHas: Ignoriere \"%s\"",
   ["noitem"]                   = "WhoHas: Kein Item namens \"%s\"",
}

WhoHas.mines = {
   ["Adamantitablagerung"]                                  = "Adamantiterz",    -- adamantite deposit
   ["Kupfervorkommen"]                                      = "Kupfererz",       -- copper vein
   ["Dunkeleisenablagerung"]                                = "Dunkeleisenerz",  -- dark iron deposit
   ["Teufelseisenablagerung"]                               = "Teufelseisenerz", -- fel iron deposit
   ["Goldvorkommen"]                                        = "Golderz",         -- gold vein
   ["Hakkari Thoriumvorkommen"]                             = "Thoriumerz",      -- Hakkari thorium vein
   ["Eisenablagerung"]                                      = "Eisenerz",        -- iron deposit
   ["Khoriumvorkommen"]                                     = "Khoriumerz",      -- khorium vein
   ["Mithrilablagerung"]                                    = "Mithrilerz",      -- mithril deposit
   ["Br\195\188hschlammbedecktes Goldvorkommen"]            = "Golderz",         -- ooze covered gold vein
   ["Br\195\188hschlammbedecktes Mithrilablagerung"]        = "Mithrilerz",      -- ooze covered mitril deposit
   ["Br\195\188hschlammbedecktes reiches Thoriumvorkommen"] = "Thoriumerz",      -- ooze covered rich thorium vein
   ["Br\195\188hschlammbedecktes Silbervorkommen"]          = "Silbererz",       -- ooze covered silver vein
   ["Br\195\188hschlammbedecktes Thoriumvorkommen"]         = "Thoriumerz",      -- ooze overed thorium vein
   ["Br\195\188hschlammbedecktes Echtsilberablagerung"]     = "Echtsilbererz",   -- ooze covered truesilver deposit
   ["Reiche Adamantitablagerung"]                           = "Adamantiterz",    -- rich adamantite deposit
   ["Reiches Thoriumvorkommen"]                             = "Thoriumerz",      -- rich thorium vein
   ["Silbervorkommen"]                                      = "Silbererz",       -- silver vein
   ["Kleines Thoriumvorkommen"]                             = "Thoriumerz",      -- small thorium vein
   ["Zinnvorkommen"]                                        = "Zinnerz",         -- tin vein
   ["Echtsilberablagerung"]                                 = "Echtsilbererz",   -- truesilver deposit
   ["Kobaltablagerung"]                                     = "Kobalterz",       -- cobalt deposit
   ["Reiche Kobaltablagerung"]                              = "Kobalterz",       -- rich cobalt deposit
   ["Saronitablagerung"]                                    = "Saroniterz",      -- saronite deposit
   ["Reiche Saronitablagerung"]                             = "Saroniterz",      -- rich saronite deposit
   ["Titanvorkommen"]                                       = "Titanerz",        -- titanium vein

   ["Geringe Blutsteinablagerung"] = "Geringes Blutsteinerz", -- lesser bloodstone deposit
   ["Pyrophormineralvorkommen"]    = "Pyrophorerz",           -- incendicite mineral vein
   ["Induriummineralvorkommen"]    = "Induriumerz",           -- indurium mineral vein
   ["Netheritablagerung"]          = "Netheriterz",           -- nethercide deposit
}

WhoHas.xlat = {
   ["Luftpartikel"]             = "Urluft",     -- mote of air
   ["Schattenpartikel"]         = "Urschatten", -- mote of shadow
   ["Wasserpartikel"]           = "Urwasser",   -- mote of water
   ["Feuerpartikel"]            = "Urfeuer",    -- mote of fire
   ["Manapartikel"]             = "Urmana",     -- mote of mana
   ["Lebenspartikel"]           = "Urleben",    -- mote of life
   ["Erdpartikel"]              = "Urerde",     -- mote of earth

   ["Adamantiterz"]             = "Adamantitbarren",    -- adamantite ore
   ["Teufelseisenerz"]          = "Teufelseisenbarren", -- fel iron ore
   ["Eterniumerz"]              = "Eterniumbarren",     -- eternium ore
   ["Khoriumerz"]               = "Khoriumbarren",      -- khorium ore
   ["Thoriumerz"]               = "Thoriumbarren",      -- thorium ore
   ["Echtsilbererz"]            = "Echtsilberbarren",   -- truesilver ore
   ["Mithrilerz"]               = "Mithrilbarren",      -- mithril ore
   ["Golderz"]                  = "Goldbarren",         -- gold ore
   ["Zinnerz"]                  = "Zinnbarren",         -- tin ore
   ["Kupfererz"]                = "Kupferbarren",       -- copper ore
   ["Silbererz"]                = "Silberbarren",       -- silver ore
   ["Eisenerz"]                 = "Eisenbarren",        -- iron ore
   ["Dunkeleisenerz"]           = "Dunkeleisenbarren",  -- dark iron ore
   ["Elementiumerz"]            = "Elementiumbarren",   -- elementium ore
   ["Titanerz"]                 = "Titanbarren",        -- titanium ore
   ["Kobalterz"]                = "Kobaltbarren",       -- cobalt ore
   ["Saroniterz"]               = "Saronitbarren",      -- saronite ore

   ["Adamantitbarren"]          = "Geh\195\164rteter Adamantitbarren", -- adamantite bar
   ["Teufelseisenbarren"]       = "Teufelsstahlbarren",                -- fel iron bar
   ["Eterniumbarren"]           = "Teufelsstahlbarren",                -- eternium bar
   ["Eisenbarren"]              = "Stahlbarren",                       -- iron bar
   ["Zinnbarren"]               = "Bronzebarren",                      -- tin bar
   ["Kupferbarren"]             = "Bronzebarren",                      -- copper bar
   ["Khoriumbarren"]            = "Geh\195\164rtetes Khorium",         -- khorium bar
   ["Geh\195\164rteter Adamantitbarren"]  = "Geh\195\164rtetes Khorium",	-- hardened adamantite bar
   ["Titanbarren"]              = "Titanstahlbarren",                  -- titanium bar

   ["Kristallisierte Wasser"]        = "\195\132onenwasser",     -- crystallized water
   ["Kristallisierte Erde"]          = "\195\132onenerde",       -- crystallized earth
   ["Kristallisiertes Feuer"]        = "\195\132onenfeuer",      -- crystallized fire
   ["Kristallisierte Luft"]          = "\195\132onenluft",       -- crystallized air
   ["Kristallisierte Schatten"]      = "\195\132onenschatten",   -- crystallized shadow
   ["Kristallisiertes Leben"]        = "\195\132onenleben",      -- crystallized life
}

WhoHas.enchant = {
   ["Geringe Magieessenz"]         = "Gro\195\159e Magieessenz",    -- Lesser Magic Essence
   ["Geringe Astralessenz"]        = "Gro\195\159e Astralessenz",   -- Lesser Astral Essence
   ["Geringe Mystikeressenz"]      = "Gro\195\159e Mystikeressenz", -- Lesser Mystic Essence
   ["Geringe Netheressenz"]        = "Gro\195\159e Netheressenz",   -- Lesser Nether Essence
   ["Geringe ewige Essenz"]        = "Gro\195\159e ewige Essenz",   -- Lesser Eternal Essence
   ["Geringe Planaressenz"]        = "Gro\195\159e Planaressenz",   -- Lesser Planar Essence

   ["Gro\195\159e Magieessenz"]    = "Geringe Magieessenz",         -- Greater Magic Essence
   ["Gro\195\159e Astralessenz"]   = "Geringe Astralessenz",        -- Greater Astral Essence
   ["Gro\195\159e Mystikeressenz"] = "Geringe Mystikeressenz",      -- Greater Mystic Essence
   ["Gro\195\159e Netheressenz"]   = "Geringe Netheressenz",        -- Greater Nether Essence
   ["Gro\195\159e ewige Essenz"]   = "Geringe ewige Essenz",        -- Greater Eternal Essence
   ["Gro\195\159e Planaressenz"]   = "Geringe Planaressenz",        -- Greater Planar Essence
}

end
