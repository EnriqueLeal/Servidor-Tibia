function onUse(cid, item, frompos, item2, topos)

        doPlayerAddPremiumDays(cid, 30)

        doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,"Tienes 30 dias de Premium.")

        doSendMagicEffect(topos,27)

        doRemoveItem(item.uid,1)

    end