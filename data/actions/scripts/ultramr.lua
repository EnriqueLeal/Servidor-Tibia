local MIN = 10000
local MAX = 30000
local EMPTY_POTION = 2284
 
local exhaust = createConditionObject(CONDITION_EXHAUST)
setConditionParam(exhaust, CONDITION_PARAM_TICKS, (getConfigInfo('timeBetweenExActions') - 200))
 
function onUse(cid, item, fromPosition, itemEx, toPosition)
if isPlayer(itemEx.uid) == FALSE then
return FALSE
end
 
if hasCondition(cid, CONDITION_EXHAUST_HEAL) == true then
doPlayerSendDefaultCancel(cid, RETURNVALUE_YOUAREEXHAUSTED)
return TRUE
end
 
 
 
if doPlayerAddMana(itemEx.uid, math.random(MIN, MAX)) == LUA_ERROR then
return FALSE
end
 
doAddCondition(cid, exhaust)
doSendMagicEffect(getThingPos(itemEx.uid), CONST_ME_MAGIC_BLUE)
doSendAnimatedText(getThingPos(cid), "Ultra Mr", TEXTCOLOR_RED)
 
doTransformItem(item.uid, EMPTY_POTION)
return TRUE
end