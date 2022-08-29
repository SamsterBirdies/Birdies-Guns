dofile("scripts/forts.lua")

--load
function Load(gameStart)
	--disable kinetic beam for high seas maps. it pushes boats out of build zones or into terrain.
	if GetWaterLevel(0) < 123456 then
		EnableWeapon("sbpullbeam", false, 1)
		EnableWeapon("sbpullbeam", false, 2)
	end
end

--barrel creating function
function CreateBarrel(teamId, deviceType, nodeId1, nodeId2, pos)
	EnableDevice(deviceType, true, 1)
	EnableDevice(deviceType, true, 2)
	local result = CreateDevice( teamId, deviceType, nodeId1, nodeId2, pos)
	EnableDevice(deviceType, false, 1)
	EnableDevice(deviceType, false, 2)
	return result
end

--do stuff when barrel hits a strut
function OnLinkHit(nodeIdA, nodeIdB, sourceId, sourceTeamId, sourceSaveName, damage, pos)
	if sourceSaveName == "sboildrumprojectilefall" or sourceSaveName == "sboildrumprojectilefallshock" then
		--drum names
		local drumtype = "sboildrumempdevice"
		if sourceSaveName == "sboildrumprojectilefall" then
			drumtype = "sboildrumdevice"
		end
		--get device id of platform
		local rawDeviceId = GetDeviceIdOnPlatform(nodeIdA, nodeIdB)
		local rawDeviceId2 = GetDeviceIdOnPlatform(nodeIdB, nodeIdA)
		local deviceId = rawDeviceId
		if rawDeviceId == -1 then
			deviceId = rawDeviceId2
		end
		--if no device on strut then attempt to create device
		if deviceId == -1 then
			--Log("no device, creating barrel")
			local result = CreateBarrel( 3 - sourceTeamId, drumtype, nodeIdA, nodeIdB, 0.5)
			--Log(tostring(result))
			--if device cannot be placed because a device is overlapping, attempt to place on a different position on the strut
			if result == -9 then
				local result = CreateBarrel( 3 - sourceTeamId, drumtype, nodeIdA, nodeIdB, 0.25)
				if result == -9 then
					local result = CreateBarrel( 3 - sourceTeamId, drumtype, nodeIdA, nodeIdB, 0.75)
					if result == -9 then
						local result = CreateBarrel( 3 - sourceTeamId, drumtype, nodeIdA, nodeIdB, 0)
						if result == -9 then
							local result = CreateBarrel( 3 - sourceTeamId, drumtype, nodeIdA, nodeIdB, 1)
						end
					end
				end
			end
		--if a barrel device is on the strut then destroy the barrel
		elseif GetDeviceType(deviceId) == "sboildrumempdevice" or GetDeviceType(deviceId) == "sboildrumdevice" then
			--Log("destroying barrel")
			ApplyDamageToDevice(deviceId, 20)
		--if device exists on the strut then upgrade the device to the barrel
		else
			--Log("upgrading device")
			EnableDevice(drumtype, true, 1)
			EnableDevice(drumtype, true, 2)
			UpgradeDevice(deviceId, drumtype)
			EnableDevice(drumtype, false, 1)
			EnableDevice(drumtype, false, 2)
		end
	end
end