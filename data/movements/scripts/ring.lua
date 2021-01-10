 local Config = {
  texto = "†PRO†", -- Texto que aparecerá en el jugador. (siempre "entre comillas")
  color = COLOR_TEAL, -- Término o número representativo al color del texto.
  seg = 4, -- Cada cuantos segundos aparecerá el texto.
  weaponID = 2164 -- ID del weapon usado.
                  }
function Animado(cid)
  for i = 1, 10 do
    if isCreature(cid) and (not isPlayerGhost(cid)) and (getPlayerSlotItem(cid, i).itemid == Config.weaponID) then
        doSendAnimatedText (getThingPos(cid), Config.texto, Config.color)
        EventEffect = addEvent(Animado, 1000*Config.seg, cid)
    end
  end
end

function onEquip(cid, item, slot)
    Animado(cid)
  return true
end

function onDeEquip(cid, item, slot)
    stopEvent (EventEffect)
  return true
end