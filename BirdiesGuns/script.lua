dofile("scripts/forts.lua")
dofile(path .. "/scripts/sseparams.lua")
dofile(path .. "/scripts/math.lua")

--constants
PEBBLE_MAX = 42 --max pebbles before conversion to gamer
AIMICON_INACTIVE_POS = Vec3(0,9999999) --resting pos when aim assist not in use
--AIMICON_STEP_RESOLUTION = 5 --place aim assist dot every seconds/AIMICON_STEP_RESOLUTION of projectile flight. may change later to reflect projectile speed
AIMICON_STEPS = 50 --max dots for aim assist
AIM_ASSIST_WEAPONS = { ["sbcoilmortar"] = 5,} --weapons to give aim assist for with resolution

--timing
previous_delta_fake = 0
delta = 0
frame_progress = 0
framerate = 25
--aim assist vars
aim_icons = {}
draw_aim = false
previous_firevel = Vec3(0,0)
current_firevel = Vec3(0,0)
selected_id = 0
selected_savename = ""

function Load(gameStart)
	--disable kinetic beam for high seas maps. it pushes boats out of build zones or into terrain.
	if GetWaterLevel(0) < 123456 then
		EnableWeapon("sbpullbeam", false, 1)
		EnableWeapon("sbpullbeam", false, 2)
	end
	--get frametime
	framerate = GetConstant("Physics.FramesRate")
	--count pebbles
	data.pebbles = {}
	
	--coilmortareffect
	--[[
	for i = 1, AIMICON_STEPS do
		local aimicon_effect_id = SpawnEffect(path .. "/effects/coilmortardest.lua", AIMICON_INACTIVE_POS)
		table.insert(aim_icons, aimicon_effect_id)
	end]]
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
			local result = CreateBarrel( NodeTeam(nodeIdA), drumtype, nodeIdA, nodeIdB, 0.5)
			--Log(tostring(result))
			--if device cannot be placed because a device is overlapping, attempt to place on a different position on the strut
			if result == -9 then
				local result = CreateBarrel( NodeTeam(nodeIdA), drumtype, nodeIdA, nodeIdB, 0.25)
				if result == -9 then
					local result = CreateBarrel( NodeTeam(nodeIdA), drumtype, nodeIdA, nodeIdB, 0.75)
					if result == -9 then
						local result = CreateBarrel( NodeTeam(nodeIdA), drumtype, nodeIdA, nodeIdB, 0)
						if result == -9 then
							local result = CreateBarrel( NodeTeam(nodeIdA), drumtype, nodeIdA, nodeIdB, 1)
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
		if #data.pebbles[tostring(teamId)] >= PEBBLE_MAX then
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
end

function OnWeaponFired(teamId, saveName, weaponId, projectileNodeId, projectileNodeIdFrom)
	--coil mortar sfx, pitch changes based on weapon power
	if saveName == "sbcoilmortar" and projectileNodeIdFrom == 0 then
		--get power level 0 min, 1 max
		local velocity = NodeVelocity(projectileNodeId)
		local minpower = GetWeaponMinFireSpeed(teamId, saveName)
		local maxpower = GetWeaponMaxFireSpeed(teamId, saveName)
		local magnitude = (velocity.x^2 + velocity.y^2)^0.5
		local power = (magnitude - minpower) / (maxpower - minpower)
		--spawn effect
		local effect_id = SpawnEffectEx(path .. "/effects/fire_coilmortar.lua", GetWeaponHardpointPosition(weaponId), Vec3(velocity.x / magnitude, velocity.y / magnitude))
		ScheduleCall(0.08, SetAudioParameter, effect_id, "weaponpower", power)
	end
end
--[[
function Update(frame)
	frame_progress = 0
	--aim assist
	selected_id = GetLocalSelectedDeviceId()
	selected_savename = GetDeviceType(selected_id)
	if draw_aim then
		previous_firevel = current_firevel
		current_firevel = GetFireVel(selected_id)
	end
end
function OnUpdate(delta_fake)
	--delta time stuff 
	delta = delta_fake - previous_delta_fake
	previous_delta_fake = delta_fake
	frame_progress = frame_progress + delta * framerate
	
	--aim assist code
	if selected_id > 0 and GetMouseAiming() and AIM_ASSIST_WEAPONS[selected_savename] then
		draw_aim = true
		--get values
		local hardpoint = GetWeaponHardpointPosition(selected_id)
		local gravity = GetConstant("Physics.Gravity")
		--interpolate velocity
		local firevel = Vec3(
			previous_firevel.x + (current_firevel.x - previous_firevel.x) * frame_progress,
			previous_firevel.y + (current_firevel.y - previous_firevel.y) * frame_progress
		)
		--calculate and place effects
		local position = Vec3(0,0)
		for k, v in pairs(aim_icons) do
			local time_elapsed = k / AIM_ASSIST_WEAPONS[selected_savename]
			position.x = hardpoint.x + firevel.x * time_elapsed
			position.y = hardpoint.y + firevel.y * time_elapsed + 0.5 * gravity * time_elapsed * time_elapsed
			SetEffectPosition(v, position)
		end
	elseif draw_aim then
		--remove (store off-screen) effects when not aiming 
		draw_aim = false
		for k, v in pairs(aim_icons) do
			SetEffectPosition(v, AIMICON_INACTIVE_POS)
		end
	end
end]]