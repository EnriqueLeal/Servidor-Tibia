local PRESENT_BLUE = {2687, 6394, 6280, 6574, 6578, 6575, 6577, 6569, 6576, 6572, 2114}
local PRESENT_RED = {2160, 2264, 12606, 12603, 6132, 11350, 12604, 11349, 8821, 2280, 12608, 12608, 12605, 9693, 2474, 10503, 6574}
function onUse(cid, item, fromPosition, itemEx, toPosition)
   local count = 1
   if(item.itemid == 6570) then
      local randomChance = math.random(1, #PRESENT_BLUE)
      if(randomChance == 1) then
         count = 10
      elseif(randomChance == 2) then
         count = 3
      end
      doPlayerAddItem(cid, PRESENT_BLUE[randomChance], count)
   elseif(item.itemid == 10503) then
      local randomChance = math.random(1, #PRESENT_RED)
      if randomChance > 0 and randomChance < 4 then
         count = 10
      end
      doPlayerAddItem(cid, PRESENT_RED[randomChance], count)
   end

   doSendMagicEffect(fromPosition, CONST_ME_GIFT_WRAPS)
   doRemoveItem(item.uid, 1)
   return true
end