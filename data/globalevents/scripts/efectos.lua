local config = {
    positions = {


        ["Ot!"] = { x = 1003, y = 1001, z = 7 },
        
    }
}

function onThink(cid, interval, lastExecution)
    for effect, pos in pairs(config.positions) do
           doSendMagicEffect(getCreaturePosition(cid), param)
    end
    
    return TRUE
end  