dofile("scripts/forts.lua")
dofile(path .. "/scripts/sseparams.lua")


--load
music_effect = 0
function Load(gameStart)
	--disable kinetic beam for high seas maps. it pushes boats out of build zones or into terrain.
	if GetWaterLevel(0) < 123456 then
		EnableWeapon("sbpullbeam", false, 1)
		EnableWeapon("sbpullbeam", false, 2)
	end
	--count pebbles
	data.pebbles = {}
	data.music_device = 0
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

--pebble slingshot stuff
function OnDeviceCompleted(teamId, deviceId, saveName)
	if saveName == "sbslingshotpebble" then
		if type(data.pebbles[tostring(teamId)]) ~= "table" then
			data.pebbles[tostring(teamId)] = {}
		end
		table.insert(data.pebbles[tostring(teamId)], deviceId)
		if #data.pebbles[tostring(teamId)] >= 42 then
			UpgradeDevice(data.pebbles[tostring(teamId)][1], "sbslingshotpebble_OP")
			for k, v in pairs(data.pebbles[tostring(teamId)]) do
				ApplyDamageToDevice(v, 1000)
			end
			data.pebbles[tostring(teamId)] = {}
		end
	end
end
function OnDeviceDestroyed(teamId, deviceId, saveName, nodeA, nodeB, t)
	if saveName == "sbslingshotpebble" then
		if type(data.pebbles[tostring(teamId)]) ~= "table" then
			data.pebbles[tostring(teamId)] = {}
		end
		for k, v in pairs(data.pebbles[tostring(teamId)]) do
			if v == deviceId then
				table.remove(data.pebbles[tostring(teamId)], k)
				break
			end
		end
	end
	if deviceId == data.music_device then
		CancelEffect(music_effect)
		data.music_device = 0
	end
end
function OnDeviceDeleted(teamId, deviceId, saveName, nodeA, nodeB, t)
	if saveName == "sbslingshotpebble" then
		if type(data.pebbles[tostring(teamId)]) ~= "table" then
			data.pebbles[tostring(teamId)] = {}
		end
		for k, v in pairs(data.pebbles[tostring(teamId)]) do
			if v == deviceId then
				table.remove(data.pebbles[tostring(teamId)], k)
				break
			end
		end
	end
	if deviceId == data.music_device then
		CancelEffect(music_effect)
		data.music_device = 0
	end
end
function OnDeviceTeamUpdated(oldTeamId, newTeamId, deviceId, saveName)
	if saveName == "sbslingshotpebble" then
		if type(data.pebbles[tostring(oldTeamId)]) ~= "table" then
			data.pebbles[tostring(oldTeamId)] = {}
		end
		if type(data.pebbles[tostring(newTeamId)]) ~= "table" then
			data.pebbles[tostring(newTeamId)] = {}
		end
		for k, v in pairs(data.pebbles[tostring(oldTeamId)]) do
			if v == deviceId then
				table.remove(data.pebbles[tostring(oldTeamId)], k)
				break
			end
		end
		table.insert(data.pebbles[tostring(newTeamId)], deviceId)
	end
	if deviceId == data.music_device then
		CancelEffect(music_effect)
		data.music_device = 0
	end
end

--christmas rm music
--[[
dofile("ui/uihelper.lua")
Sprites = { ButtonSprite("music_btn", "context/HUD-music_btn", nil, nil, nil, nil, path) }
function SetData(variable, value)
	if string.find(variable, "data.") then
		local newvar = string.gsub(variable, "data.", "")
		data[newvar] = value
	else
		_G[variable] = value
	end
end
function SpawnMusic(sound, deviceId)
	local effectid = SpawnEffect(sound, GetDevicePosition(deviceId))
	SendScriptEvent("SetData", SSEParams('data.music_device', deviceId), "script.lua", true)
	SendScriptEvent("SetData", SSEParams('music_effect', effectid), "script.lua", true)
end
function OnContextMenuDevice(deviceTeamId, deviceId, saveName)
	local devices = {'sbrmemp', 'sbrmfire', 'sbrmhe', 'sbrmempinv', 'sbrmfireinv', 'sbrmheinv', 'sbrmempmarine', 'sbrmfiremarine', 'sbrmhemarine'}
	local rm_device = false
	for k, v in pairs(devices) do
		if GetDeviceType(deviceId) == v then
			rm_device = true
			break
		end
	end
	if rm_device then
		local pressed = false
		if data.music_device == deviceId then
			pressed = true
		end
		AddContextButton("music_btn", "Christmas music", 1, true, pressed)
	end
end
function OnContextButtonDevice(name, deviceTeamId, deviceId, saveName)
	--Log(crapinmypants)
	if name == "Christmas music" then
		SendScriptEvent("CancelEffect", SSEParams(music_effect), "script.lua", true)
		if data.music_device == deviceId then
			SendScriptEvent("SetData", SSEParams('data.music_device', 0), "script.lua", true)
		else
			local music_path = ""
			if saveName == "sbrmemp" or saveName == "sbrmempinv" or saveName == "sbrmempmarine" then
				music_path = path .. "/effects/music_rm_jinglebells.lua"
			elseif saveName == "sbrmfire" or saveName == "sbrmfireinv" or saveName == "sbrmfiremarine" then
				music_path = path .. "/effects/music_rm_silentnight.lua"
			elseif saveName == "sbrmhe" or saveName == "sbrmheinv" or saveName == "sbrmhemarine" then
				music_path = path .. "/effects/music_rm_deckthehalls.lua"
			end
			SendScriptEvent("SpawnMusic", SSEParams(music_path, deviceId), "script.lua", true)
		end
	end
end]]