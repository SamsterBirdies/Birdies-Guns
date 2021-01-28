dofile("scripts/device_utility.lua")
dofile("scripts/device_utility.lua")
RoundsEachBurst = RoundsEachBurst + 1

if active then
	ProjectilesEachRound = 3
	RoundsEachBurst = RoundsEachBurst/ProjectilesEachRound
end