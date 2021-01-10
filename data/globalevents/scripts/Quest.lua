function onThink(interval, lastExecution)
 
same = math.random(01, 255)
 
doSendAnimatedText({x=260,y=274,z=7}, 'Quest', math.random(210,215))
doSendMagicEffect({x=260,y=274,z=7}, math.random(40,40))
 
return TRUE
end