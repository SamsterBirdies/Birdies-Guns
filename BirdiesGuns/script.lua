dofile("scripts/forts.lua")
--script to place barrels for the barrel cannons
function OnLinkHit(nodeIdA, nodeIdB, sourceId, sourceTeamId, sourceSaveName, damage, pos)
	if sourceSaveName == "sboildrumprojectilefall" then --The projectile name
		EnableDevice("sboildrumdevice", true, 1)
		EnableDevice("sboildrumdevice", true, 2)
		CreateDevice( 3 - sourceTeamId, "sboildrumdevice", nodeIdA, nodeIdB, 0.5)
		EnableDevice("sboildrumdevice", false, 1)
		EnableDevice("sboildrumdevice", false, 2)
	end
	if sourceSaveName == "sboildrumprojectilefallshock" then --The projectile name
		EnableDevice("sboildrumempdevice", true, 1)
		EnableDevice("sboildrumempdevice", true, 2)
		CreateDevice( 3 - sourceTeamId, "sboildrumempdevice", nodeIdA, nodeIdB, 0.5)
		EnableDevice("sboildrumempdevice", false, 1)
		EnableDevice("sboildrumempdevice", false, 2)
	end
end
--SamsterBirdies belongs to Chocola <3.