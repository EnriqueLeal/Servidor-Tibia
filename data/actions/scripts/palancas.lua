local aid = { --[ACTION ID] = {COSA QUE QUITARA, CUANTOS QUITARA, COSA QUE DARA, CUANTOS TE DARA},
[9900] = {2160, 1000, 6391, 1},
[9901] = {2160, 400, 9693, 1},
[9902] = {2160, 3000, 2164, 1},
}

function onUse(cid, item, fromPosition, itemEx, toPosition)
local aids = aid[item.actionid]
if item.itemid == 1945 or 1946 then
if aids then
if doPlayerRemoveItem(cid, aids[1], aids[2]) then
doPlayerSendTextMessage(cid, TALKTYPE_ORANGE_1, 'Recibiste '..aids[4]..' '..getItemNameById(aids[3])..'.')
doPlayerAddItem(cid, aids[3], aids[4])
else
doPlayerSendTextMessage(cid, TALKTYPE_ORANGE_1, 'Necesitas tener '..(aids[2])..' '..getItemNameById(aids[1])..' para comprar este producto.')
end
else
doPlayerSendTextMessage(cid, TALKTYPE_ORANGE_1, 'No tienes suficiente capacidad.')
end
end
return TRUE
end
