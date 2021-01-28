local sbrmhe = FindProjectile("sbrmhe")
	if sbrmhe then
		sbrmhe.Effects.Impact["antiair"] = { Effect = "mods/commander-bpo-seep/effects/warhead_split.lua", Projectile = { Count = 7, Type = "missile", Speed = 2000, StdDev = 1 }, Terminate = true, }
	end
local sbrocket = FindProjectile("sbsuremp")
if sbrocket then
	sbrocket.EMPMissileReturnToSource = true
	if active then
		MakeMissileErratic(sbrocket)
		sbrocket.TrailEffect = "mods/skirmish/effects/missile_trail_damaged.lua"
	end
end
local sbrocket = FindProjectile("sbsurfire")
if sbrocket then
	if active then
		MakeMissileErratic(sbrocket)
		sbrocket.TrailEffect = "mods/skirmish/effects/missile_trail_damaged.lua"
	end
end
local sbrocket = FindProjectile("sbsurhe")
if sbrocket then
	if active then
		MakeMissileErratic(sbrocket)
		sbrocket.TrailEffect = "mods/skirmish/effects/missile_trail_damaged.lua"
	end
end
local sbrocket = FindProjectile("sbrmemp")
if sbrocket then
	sbrocket.EMPMissileReturnToSource = true
	sbrocket.EMPSensitivity = 0
	if active then
		MakeMissileErratic(sbrocket)
		sbrocket.TrailEffect = "mods/skirmish/effects/missile_trail_damaged.lua"
	end
end
local sbrocket = FindProjectile("armouredsbrmemp")
if sbrocket then
	sbrocket.EMPSensitivity = 0
end

local sbrocket = FindProjectile("sbrmfire")
if sbrocket then
	sbrocket.EMPSensitivity = 0
	if active then
		MakeMissileErratic(sbrocket)
		sbrocket.TrailEffect = "mods/skirmish/effects/missile_trail_damaged.lua"
	end
end
local sbrocket = FindProjectile("armouredsbrmfire")
if sbrocket then
	sbrocket.EMPSensitivity = 0
end
local sbrocket = FindProjectile("sbrmhe")
if sbrocket then
	sbrocket.EMPSensitivity = 0
	if active then
		MakeMissileErratic(sbrocket)
		sbrocket.TrailEffect = "mods/skirmish/effects/missile_trail_damaged.lua"
	end
end
local sbrocket = FindProjectile("armouredsbrmhe")
if sbrocket then
	sbrocket.EMPSensitivity = 0
end
local sbrocket = FindProjectile("sbfirerocket")
if sbrocket then
	if active then
		MakeMissileErratic(sbrocket)
		sbrocket.TrailEffect = "mods/skirmish/effects/missile_trail_damaged.lua"
	end
end



