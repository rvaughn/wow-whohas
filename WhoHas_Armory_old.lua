-------------------------------------------------------------------------------
-- Armory support
-------------------------------------------------------------------------------

local global = _G;
setmetatable(WhoHas, { __index = _G });
setfenv(1, WhoHas);

Scanner.Armory = Scanner.Default:new{ key = "Armory" };

function Scanner.Armory:HasVaultData()
   return not not AgbDB;  -- turn AgbDB into a boolean
end

function Scanner.Armory:ScanPlayer()
   local charData;
   if (ArmoryDB and ArmoryDB[realm]) then
      charData = ArmoryDB[realm][player];
   end
   if (charData) then
      playerCache = {};
      self:ScanChar(player, charData, playerCache);
   end
end

function Scanner.Armory:ScanAlts()
   if (ArmoryDB and ArmoryDB[realm]) then
      for charName, charData in pairs(ArmoryDB[realm]) do
         if (charName and charData and (config.allfactions or (charData.FactionGroup and charData.FactionGroup["1"] == faction))) then
            if (charName ~= player) then
               altCache[charName] = {};
               self:ScanChar(charName, charData, altCache[charName]);
            end
         end
      end
   end
end

function Scanner.Armory:ScanChar(charName, charData, cache)
   if (charData) then

      -- equipment
      if (config.equipment) then
         for i = 1, 19 do
            local link = charData["InventoryItemLink"..i];
            if (link and type(link) == "string") then
               self:AddItem(cache, NameFromLink(link), 1, WHOHAS_CATEGORY_EQUIPMENT);
            elseif (type(link) == "table" and link["1"]) then
               self:AddItem(cache, NameFromLink(link["1"]), 1, WHOHAS_CATEGORY_EQUIPMENT);
            end
         end
      end

      local inventory = charData.Inventory
      if (inventory) then

         -- bags
         self:ScanContainer(WHOHAS_CATEGORY_INVENTORY, inventory["Container"..BACKPACK_CONTAINER], cache);
         for i = 1, NUM_BAG_SLOTS do
            local container = inventory["Container"..i];
            if (container) then
               self:ScanContainer(WHOHAS_CATEGORY_INVENTORY, container, cache);
               if (config.bags) then
                  self:AddItem(cache, self:GetBagName(container), 1, WHOHAS_CATEGORY_INVBAGS);
               end
            end
         end

         -- bank
         self:ScanContainer(WHOHAS_CATEGORY_BANK, inventory["Container"..BANK_CONTAINER], cache);
         for i = NUM_BAG_SLOTS + 1, NUM_BAG_SLOTS + NUM_BANKBAGSLOTS do
            local container = inventory["Container"..i];
            if (container) then
               self:ScanContainer(WHOHAS_CATEGORY_BANK, container, cache);
               if (config.bags) then
                  self:AddItem(cache, self:GetBagName(container), 1, WHOHAS_CATEGORY_BANKBAGS);
               end
            end
         end

         -- keyring
         if (config.keyring) then
            self:ScanContainer(WHOHAS_CATEGORY_KEYRING, inventory["Container"..KEYRING_CONTAINER], cache);
         end

         -- inbox
         if (config.inbox) then
            self:ScanContainer(WHOHAS_CATEGORY_INBOX, inventory["Container"..ARMORY_MAIL_CONTAINER], cache);
         end

         -- auctions? (ARMORY_AUCTIONS_CONTAINER)
         -- container -5?
      end
   end
end

function Scanner.Armory:ScanContainer(slot, container, cache)
   if (container) then
      -- this line lets us support Armory v6 or v7
      local bagInfo = container["Info"] or container;
      local slots = bagInfo["2"] or 0;
      for i = 1, slots do
         local link = container["Link"..i];
         local info = container["Info"..i];
         if (link and info and type(link) == "string") then
            self:AddItem(cache, NameFromLink(link), (info["2"] or 0), slot);
         elseif (link and info and type(link) == "table" and link["1"]) then
            self:AddItem(cache, NameFromLink(link["1"]), (info["2"] or 0), slot);
         end
      end
   end
end

function Scanner.Armory:ScanVault()
   if (not AgbDB or not AgbDB[realm]) then
      Scanner.Default.ScanVault(self);
   elseif (config.vault) then
      guild = GetGuildInfo("player");
      for who, bank in pairs(AgbDB[realm]) do
         -- if allguilds is not set, show only our vault
         -- otherwise show only our faction's vaults
         if (who == guild or (config.allguilds and bank.Faction and bank.Faction["1"] == faction)) then
            -- only scan the current guild and guilds we haven't scanned yet
            -- alt guild data can't change
            if (who == guild) then
               vault[who] = nil;
            end
            -- lordy... clean this mess up! too much duplication.
            -- possibly use a closure for adding counts to the vault
            if (not vault[who]) then
               vault[who] = {};
               vault[who].hasTabs = config.vaulttabs;
               if (config.vaulttabs) then
                  for tab = 1, MAX_GUILDBANK_TABS do
                     if (bank["Tab"..tab] and bank["Tab"..tab].Items) then
                        vault[who][tab] = vault[who][tab] or {};
                        for link, count in pairs(bank["Tab"..tab].Items) do
                           if (link and count) then
                              -- sometimes ArmoryGuildBank has a table, sometimes a number
                              -- I don't know why
                              if (type(count) == "number") then
                                 local name = GetItemInfo("item:"..link);
                                 if (name) then
                                    vault[who][tab][name] = count;
                                 end
                              elseif (type(count) == "table") then
                                 if (count[1] and count[4]) then
                                    local name = count[1];
                                    count = count[4];
                                    if (name and count) then
                                       vault[who][tab][name] = count;
                                    end
                                 end
                              else
                                 debug("unusable data found in ArmoryGuildBank - counts may be incomplete");
                              end
                           end
                        end
                     end
                  end
               else
                  for tab = 1, MAX_GUILDBANK_TABS do
                     if (bank["Tab"..tab] and bank["Tab"..tab].Items) then
                        for link, count in pairs(bank["Tab"..tab].Items) do
                           if (link and count) then
                              -- sometimes ArmoryGuildBank has a table, sometimes a number
                              -- I don't know why
                              if (type(count) == "number") then
                                 local name = GetItemInfo("item:"..link);
                                 if (name) then
                                    vault[who][name] = (vault[who][name] or 0) + count;
                                 end
                              elseif (type(count) == "table") then
                                 if (count[1] and count[4]) then
                                    local name = count[1];
                                    count = count[4];
                                    if (name and count) then
                                       vault[who][name] = (vault[who][name] or 0) + count;
                                    end
                                 end
                              else
                                 debug("unusable data found in ArmoryGuildBank - counts may be incomplete");
                              end
                           end
                        end
                     end
                  end
               end
            end
         end
      end
   end
end

function Scanner.Armory:GetBagName(container)
   local bagInfo = container["Info"] or container;
   return bagInfo["1"] or "unknown"
end
