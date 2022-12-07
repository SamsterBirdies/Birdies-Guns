dofile("scripts/sprites_utility.lua")
dofile("scripts/device_utility.lua")

if active then
	FireDelay = 0
	FireEffect = sbBGpath .. "/effects/fire_sbartillery.lua"
	ProjectilesEachRound = 5
	RoundPeriod = 0.199
	RetriggerFireEffect = true
	RoundsEachBurst = RoundsEachBurst/ProjectilesEachRound
end
