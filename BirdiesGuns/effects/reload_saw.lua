dofile("scripts/core.lua")

--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 5.0
SoundEvent = "mods/sbBGsoundbank/effects/reload_saw"
Effects =
{
	--[[{
		Type = "sound",
		TimeToTrigger = 0.85,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/media/spin.ogg",
		PlayForEnemy = true,
		Volume = 0.25,
		Falloff = true,
	},
	{
		Type = "sound",
		TimeToTrigger = 1.0,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/media/shing.ogg",
		PlayForEnemy = true,
		Volume = 0.30,
		Falloff = true,
	},
	{
		Type = "sound",
		TimeToTrigger = 0.0,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/media/hydraulic2.ogg",
		PlayForEnemy = true,
		Volume = 0.30,
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
