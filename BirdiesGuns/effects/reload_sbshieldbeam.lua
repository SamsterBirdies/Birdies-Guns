dofile("scripts/core.lua")

--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 5.0
SoundEvent = "mods/sbBGsoundbank/effects/reload_sbshieldbeam"
Effects =
{
	--[[{
		Type = "sound",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/media/laserreload3.ogg",
		PlayForEnemy = true,
		Volume = 0.58,
		Falloff = true,
	},
	{
		Type = "sound",
		TimeToTrigger = 0.72,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/media/hydraulic.ogg",
		PlayForEnemy = true,
		Volume = 0.05,
		Falloff = true,
	},]]
}
--[[
Sounds =
{
	path .. "/effects/media/reload_cannon_01_1107549_SOUNDDOGS__fo.mp3",
	path .. "/effects/media/reload_cannon_02_1107549_SOUNDDOGS__fo.mp3",
}

function UpdateEffect(self, effectTime, pos)
	if effectTime == 0 then
		TriggerSound(Sounds[math.random(#Sounds)], 0.3, 192, true, true, pos)
	end
	
	return self
end
]]
