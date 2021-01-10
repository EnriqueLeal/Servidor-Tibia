function onUse(cid, item, frompos, item2, topos)
 
if item.itemid == 5958 then  -----> cambialo por la id del nuevo item
 
 
doRemoveItem(item.uid, 1)
doSendMagicEffect(topos,49)
doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,"Te agregamos 5 level.")
doPlayerAddLevel(cid, 50)  ----> level que te va a dar
end
 
end
