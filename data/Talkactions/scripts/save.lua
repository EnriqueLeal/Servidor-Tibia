local saving
function onSay(cid, words, param, channel)
if (tonumber(param)) then
if (saving) then
stopEvent(saving)
end
save(tonumber(param) * 60 * 1000)
else
doSaveServer()
end
return true
end
function save(delay)
doSaveServer()
if (delay > 0) then
saving = addEvent(save, delay, delay)
end
end