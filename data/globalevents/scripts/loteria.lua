local config = {
    lottery_hora = "5 Minutos", -- Es la siguiente ronda!! Suerte
    reward_count = 10, -- Cuantos crystal coins quieres ganar?
    website = 0 -- Tu tienes `lottery` table en tu database? (1 = yes / 0 = no)
    }
function onThink(interval, lastExecution)
    local players = getPlayersOnline()
    local list = {}
    for i, tid in ipairs(players) do
    list[i] = tid
end
    local winner = list[math.random(1, #list)]
    if(config.website == 1) then
        db.executeQuery("INSERT INTO `lottery` (`name`) VALUES ('".. getCreatureName(winner) .."');")
    end
    doBroadcastMessage('[LOTERIA] Ganador: '.. getCreatureName(winner) ..', recompensa: '.. config.reward_count ..'0k! - Felicidades! (Siguiente Loteria en '.. config.lottery_hora ..')')
    doPlayerAddItem(winner, 2160,config.reward_count)
    return TRUE
end