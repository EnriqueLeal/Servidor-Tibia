local messages = {
	
"Global Developd by Dener Diegoli - dener_d@hotmail.com).",
	
"Global Developd by Dener Diegoli - dener_d@hotmail.com)."
}



local i = 0


function onThink(interval, lastExecution)

local message = messages[(i % #messages) + 1]
    
doBroadcastMessage("Information: " .. message .. "", MESSAGE_STATUS_CONSOLE_ORANGE)
    i = i + 1
    
return TRUE

end