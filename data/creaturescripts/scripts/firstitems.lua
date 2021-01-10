local firstItems_storage = 30001


local commonItems = {
	
{itemid=2554, inContainer = TRUE}, 
{itemid=2120, inContainer = TRUE},
{itemid=1988, container = TRUE}, 
{itemid=2160, count=10, inContainer = TRUE}, 
{itemid=2643} 
}

local firstItems = {
	
{ -- Sorcerer 
		
{itemid=1988, container = TRUE}, 
{itemid=2175}, 
{itemid=2190}, 
{itemid=8819}, 
{itemid=8820}, 
{itemid=7730} },
	
{ -- Druid
{itemid=1988, container = TRUE},
{itemid=2175}, 
{itemid=2182}, 
{itemid=8819}, 
{itemid=8820}, 
{itemid=7730}	},
	
{ -- Paladin
		
{itemid=1988, container = TRUE}, 
{itemid=2456}, 
{itemid=2544, count = 100}, 
{itemid=2660}, 
{itemid=2480}, 
{itemid=8923} },
	
{ -- Knight
		
{itemid=1988, container = TRUE}, 
{itemid=2439, inContainer = TRUE}, 
{itemid=8601, inContainer = TRUE}, 
{itemid=2509},		
{itemid=8602},	
{itemid=2465}, 
{itemid=2481}, 
{itemid=2478} }
}



for _, items in ipairs(firstItems) do
	
for _, item in ipairs(commonItems) do
		
table.insert(items, item)
	
end

end



function onLogin(cid)
	
if getPlayerGroupId(cid) < 2 and getPlayerStorageValue(cid, firstItems_storage) <= 0 then
		
local currvoc = getPlayerVocation(cid)
		
local vocation = 5 > currvoc and currvoc or currvoc - 4
		
local giveItems = firstItems[vocation]
	
if giveItems then
		
for _, v in ipairs(giveItems) do
	
if v.container == TRUE then
		
backpack = doPlayerAddItem(cid, v.itemid, 1)
	
elseif v.inContainer == TRUE then
		
doAddContainerItem(backpack, v.itemid, v.count or 1)
	
else
		
doPlayerAddItem(cid, v.itemid, v.count or 1)
		
end
	
end

end

setPlayerStorageValue(cid, firstItems_storage, 1)

end

return TRUE

end