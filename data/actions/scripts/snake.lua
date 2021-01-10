local MIN = 450000
local MAX = 450000
local EMPTY_POTION = 2264
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
if doCreatureAddHealth(itemEx.uid,math.random(MIN,MAX)) == LUA_ERROR then
return FALSE
end
if doPlayerAddMana(itemEx.uid, math.random(MIN, MAX)) == LUA_ERROR then
return FALSE
end
doAddCondition(cid, exhaust)
doSendMagicEffect(getThingPos(itemEx.uid),29)
doSendAnimatedText(getThingPos(cid), "RoxX", TEXTCOLOR_RED)
doTransformItem(item.uid, EMPTY_POTION)
return TRUE
end
