w = {
[1] = {ef = 17, sh = 31, dmg = COMBAT_DEATHDAMAGE},
[2] = {ef = 49, sh = 37, dmg = COMBAT_HOLYDAMAGE}
}

function onUseWeapon(cid, var)
min, max = 350, 477 -- dano minimo e maximo
target = getCreatureTarget(cid)
if target ~= 0 then
wx = w[math.random(1, #w)]
doSendDistanceShoot(getThingPos(cid), getThingPos(target), wx.sh)
addEvent(doAreaCombatHealth, 100, cid, wx.dmg, getThingPos(target), 0, -min, -max, wx.ef)
end
return true
end