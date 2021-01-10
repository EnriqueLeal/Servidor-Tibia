local config = {
    positions = {


        ["Treiners!"] = { x = 32372, y = 32238, z = 7 },
        ["knight!"] = { x = 32404, y = 32204, z = 6 },
        ["Temple!"] = { x = 32398, y = 32196, z = 7 },
        ["MAGE!"] = { x = 32414, y = 32204, z = 6 },
        ["PALADIN!"] = { x = 32414, y = 32208, z = 6 },
        ["TeMplE!"] = { x = 32409, y = 32209, z = 6 },
        ["TRAINERS!"] = { x = 32342, y = 32220, z = 7 },
        ["TEMPLE!"] = { x = 32409, y = 32197, z = 6 },
        ["Teleports"] = { x = 32366, y = 32241, z = 7 },
        ["QUEST"] = { x = 32372, y = 32241, z = 7 },
        ["ITEMS"] = { x = 32366, y = 32238, z = 7 },
        ["GAMES"] = { x = 32366, y = 32235, z = 7 },
        ["Welcome!"] = { x = 32369, y = 32241, z = 7 },
        ["Addon Doll"] = { x = 32369, y = 32246, z = 7 },
        ["CC"] = { x = 32367, y = 32246, z = 7 },
        ["Mana Rune!"] = { x = 32371, y = 32246, z = 7 },
        ["yalahari!"] = { x = 32404, y = 32208, z = 6 },
        ["POI!"] = { x = 32404, y = 32201, z = 6 },
        ["ANNIHI!"] = { x = 32414, y = 32198, z = 6 },
        ["DEMON!"] = { x = 32404, y = 32198, z = 6 },
        ["INQUI!"] = { x = 32414, y = 32201, z = 6 },
        ["SORCERER!"] = { x = 32404, y = 32206, z = 7 },
        ["DRUID!"] = { x = 32414, y = 32206, z = 7 },
        ["kNIGHT!"] = { x = 32409, y = 32209, z = 7 },
        ["PALADiN!"] = { x = 32409, y = 32203, z = 7 },
        ["PRO SETS!"] = { x = 32372, y = 32235, z = 7 },
        ["BUY ITEMS!"] = { x = 32363, y = 32241, z = 7 },
       }
}

function onThink(cid, interval, lastExecution)
    for text, pos in pairs(config.positions) do
        doSendAnimatedText(pos, text, math.random(1, 255))
    end
    
    return TRUE
end  