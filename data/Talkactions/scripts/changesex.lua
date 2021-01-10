local config = {
	costPremiumDays = 0
}
function onSay(cid, words, param, channel)
	if(getPlayerSex(cid) >= 2) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You cannot change your gender.")
		return
	end

	if(getPlayerPremiumDays(cid) < config.costPremiumDays) then
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Sorry, not enough premium time - changing gender costs " .. config.costPremiumDays .. " premium days.")
		doSendMagicEffect(getCreaturePosition(cid), CONST_ME_POFF)
		return
	end

	if(getPlayerPremiumDays(cid) < 65535) then
		doPlayerAddPremiumDays(cid, -config.costPremiumDays)
	end

	doPlayerSetSex(cid, getPlayerSex(cid) == PLAYERSEX_FEMALE and PLAYERSEX_MALE or PLAYERSEX_FEMALE)
	doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have changed your gender and lost " .. config.costPremiumDays .. " days of premium time.")
	doSendMagicEffect(getCreaturePosition(cid), CONST_ME_MAGIC_RED)
	return true
end