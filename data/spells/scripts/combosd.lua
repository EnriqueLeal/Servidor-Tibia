
  ----------------------
-----Made by Chalito-----
  ----------------------

local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_BLOCKARMOR, FALSE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SUDDENDEATH)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -0.5, 0, -0.6, 0)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_BLOCKARMOR, FALSE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SUDDENDEATH)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -0.5, 0, -0.6, 0)

local combat3 = createCombatObject()
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_BLOCKARMOR, FALSE)
setCombatParam(combat3, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat3, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SUDDENDEATH)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC, -0.5, 0, -0.6, 0)

local combat4 = createCombatObject()
setCombatParam(combat4, COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
setCombatParam(combat4, COMBAT_PARAM_BLOCKARMOR, FALSE)
setCombatParam(combat4, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat4, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SUDDENDEATH)
setCombatFormula(combat4, COMBAT_FORMULA_LEVELMAGIC, -0.5, 0, -0.6, 0)

local combat5 = createCombatObject()
setCombatParam(combat5, COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
setCombatParam(combat5, COMBAT_PARAM_BLOCKARMOR, FALSE)
setCombatParam(combat5, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat5, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SUDDENDEATH)
setCombatFormula(combat5, COMBAT_FORMULA_LEVELMAGIC, -0.5, 0, -0.6, 0)

local combat6 = createCombatObject()
setCombatParam(combat6, COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
setCombatParam(combat6, COMBAT_PARAM_BLOCKARMOR, FALSE)
setCombatParam(combat6, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat6, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SUDDENDEATH)
setCombatFormula(combat6, COMBAT_FORMULA_LEVELMAGIC, -0.5, 0, -0.6, 0)

local combat7 = createCombatObject()
setCombatParam(combat7, COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
setCombatParam(combat7, COMBAT_PARAM_BLOCKARMOR, FALSE)
setCombatParam(combat7, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat7, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SUDDENDEATH)
setCombatFormula(combat7, COMBAT_FORMULA_LEVELMAGIC, -0.5, 0, -0.6, 0)

local combat8 = createCombatObject()
setCombatParam(combat8, COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
setCombatParam(combat8, COMBAT_PARAM_BLOCKARMOR, FALSE)
setCombatParam(combat8, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat8, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SUDDENDEATH)
setCombatFormula(combat8, COMBAT_FORMULA_LEVELMAGIC, -0.5, 0, -0.6, 0)

local combat9 = createCombatObject()
setCombatParam(combat9, COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
setCombatParam(combat9, COMBAT_PARAM_BLOCKARMOR, FALSE)
setCombatParam(combat9, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat9, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SUDDENDEATH)
setCombatFormula(combat9, COMBAT_FORMULA_LEVELMAGIC, -0.5, 0, -0.6, 0)

local combat10 = createCombatObject()
setCombatParam(combat10, COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
setCombatParam(combat10, COMBAT_PARAM_BLOCKARMOR, FALSE)
setCombatParam(combat10, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat10, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SUDDENDEATH)
setCombatFormula(combat10, COMBAT_FORMULA_LEVELMAGIC, -0.5, 0, -0.6, 0)

local function onCastSpell1(parameters)
doCombat(parameters.cid, parameters.combat1, parameters.var)
end
local function onCastSpell2(parameters)
doCombat(parameters.cid, parameters.combat2, parameters.var)
end
local function onCastSpell3(parameters)
doCombat(parameters.cid, parameters.combat3, parameters.var)
end
local function onCastSpell4(parameters)
doCombat(parameters.cid, parameters.combat4, parameters.var)
end
local function onCastSpell5(parameters)
doCombat(parameters.cid, parameters.combat5, parameters.var)
end
local function onCastSpell6(parameters)
doCombat(parameters.cid, parameters.combat6, parameters.var)
end
local function onCastSpell7(parameters)
doCombat(parameters.cid, parameters.combat7, parameters.var)
end
local function onCastSpell8(parameters)
doCombat(parameters.cid, parameters.combat8, parameters.var)
end
local function onCastSpell9(parameters)
doCombat(parameters.cid, parameters.combat9, parameters.var)
end
local function onCastSpell10(parameters)
doCombat(parameters.cid, parameters.combat10, parameters.var)
end
function onCastSpell(cid, var)
local parameters = { cid = cid, var = var, combat1 = combat1, combat2 = combat2, combat3 = combat3, combat4 = combat4, combat5 = combat5, combat6 = combat, combat7 = combat7, combat8 = combat8, combat9 = combat9, combat10 = combat10}
addEvent(onCastSpell1, 0, parameters)
addEvent(onCastSpell2, 150, parameters)
addEvent(onCastSpell3, 300, parameters)
addEvent(onCastSpell4, 450, parameters)
addEvent(onCastSpell5, 600, parameters)
addEvent(onCastSpell6, 750, parameters)
addEvent(onCastSpell7, 900, parameters)
addEvent(onCastSpell8, 1050, parameters)
addEvent(onCastSpell9, 1200, parameters)
addEvent(onCastSpell10, 1350, parameters)
end