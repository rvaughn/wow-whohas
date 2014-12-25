WhoHas modifies every item tooltip in World of Warcraft to show which
of your characters have the highlighted item, and where. This works in
your inventory, at the auction house, on chat links, and even in trade
skill windows. The tooltip will show how many of the item each of your
characters have, and where - in their inventory, in the bank,
equipped, or even in their inbox. This can be useful for managing your
overall inventory, or for finding out who has the items you need for
crafting.

WhoHas requires a separate addon to track all of your personal items.
WhoHas currently supports:

* [Altoholic][altoholic]
* [Armory][armory]
* [Possessions 4.2 with Void Storage][poss]

WhoHas will auto-select the best backend to use based on the inventory
addons you have enabled. It will search for addons in the order shown
above. I may be able to add support for other inventory addons on
request.

WhoHas supports English and is partially translated into German and
French, thanks to the efforts of Pelion, and more recently,
TorenAltair. If you would like to help finish the German and French
translations, please let me know.

To prevent WhoHas from showing tooltips for specific items, enter
"/whohas ignore ITEM NAME" in chat, where ITEM NAME is the item you
don't want WhoHas tooltips for. You can also type "/whohas ignore "
(make sure to include the space at the end) and then shift-click on
the item you want to ignore to fill in its name.

### Note
The functionality originally provided by WhoHas is now
included natively by many inventory addons: [Armory][armory],
[Altoholic][altoholic], [Bagnon][bagnon], and others. WhoHas still
works, but you may have better luck (and more frequent updates) with
one of those other addons.

#### Code hosted by GitHub
The source code for WhoHas is hosted on GitHub at
[https://github.com/rvaughn/wow-whohas](https://github.com/rvaughn/wow-whohas).

[armory]: http://www.curse.com/addons/wow/armory
[poss]: http://www.wowinterface.com/downloads/info21551-Possessions4.2withVoidStorageFanUpdate.html
[altoholic]: http://www.curse.com/addons/wow/altoholic
[bagnon]: http://www.curse.com/addons/wow/bagnon
