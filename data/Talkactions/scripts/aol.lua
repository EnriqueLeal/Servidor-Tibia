function onSay(cid, words, param)

if doPlayerRemoveMoney(cid, 10000) == TRUE then
local bp = doPlayerAddItem(cid, 2173, 1)
doSendMagicEffect(getCreaturePosition(cid),13)
doCreatureSay(cid, "Compraste Un Aol By: Sunnade<3!", TALKTYPE_ORANGE_1)
else
doCreatureSay(cid, "No Tienes Dinero Suficiente:c", TALKTYPE_ORANGE_1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
end
end