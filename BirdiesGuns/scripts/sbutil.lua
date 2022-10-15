function AddCompGroups(weapons)
	--Compatible group type function
	--To streamline the tedious work of adding all possible group weapons to every single weapon in the group
	--for weapon_list
	--example usage: sbAddComp({"rocketemp", "rocket", "firerocket", "acidrocket"})
	for k, v in pairs(weapons) do
		local weapon = FindWeapon(v)
		if weapon then
			if not weapon.CompatibleGroupTypes then
				weapon.CompatibleGroupTypes = {}
			end
			for k, vv in pairs(weapons) do
				if FindWeapon(vv) then
					table.insert(weapon.CompatibleGroupTypes, 1, vv)
				end
			end
		end
	end
end

function modDUsupport(savename, maxage)
	--add a depleted uranium effect to your projectiles on busters active.
	--for <your mod>/mods/commander-cf-buster/weapons/projectile_list.lua
	--default maxage is 720
	--example usage: modDUsupport("bfc", 3000)
	local DU_check = FindProjectile("uraniumcannon")
	if DU_check then
		modDUprojectile = DeepCopy(DU_check)
		modDUprojectile.SaveName = ("uranium"..savename)
		modDUprojectile.MaxAge = ((maxage or 720)/DU_speed)
		table.insert(Projectiles, modDUprojectile)
		table.insert(ProjectilesToUranium, savename)
		ProjectileEffects[savename] = 
		{
			Trail = "mods/commander-cf-buster/effects/uranium_fly.lua",
			Impact =
			{
				["shield"] = "mods/commander-cf-buster/effects/impact_uranium_shield.lua",
			},
		}
	end
end

function UpgradeWeaponKeyToIndex(weaponName, upgradeName, index)
	--Forts still uses deprecated upgrade system with keys.
	--Keyed upgrades appear last on the upgrade list which may not be desired.
	--Solution is to remove the keyed upgrade and reinsert it with a numeric index of choice.
	--for weapon_list
	--example usage: sbMoveUpgradeToFront("turbine", "turbine2", 1)
	local weapon = FindWeapon(weaponName)
	if weapon then
		if weapon.Upgrades then
			for k, v in pairs(weapon.Upgrades) do
				if v.SaveName == upgradeName then
					local upgradeTemp = v
					weapon.Upgrades[k] = nil
					table.insert(weapon.Upgrades, index, v)
					break
				end
			end
		end
	end
end

function UpgradeDeviceKeyToIndex(deviceName, upgradeName, index)
	--Forts still uses deprecated upgrade system with keys.
	--Keyed upgrades appear last on the upgrade list which may not be desired.
	--Solution is to remove the keyed upgrade and reinsert it with a numeric index of choice.
	--for device_list
	--example usage: sbMoveUpgradeToFront("turbine", "turbine2", 1)
	local device = FindDevice(deviceName)
	if device then
		if device.Upgrades then
			for k, v in pairs(device.Upgrades) do
				if v.SaveName == upgradeName then
					local upgradeTemp = v
					device.Upgrades[k] = nil
					table.insert(device.Upgrades, index, v)
					break
				end
			end
		end
	end
end

function TableContains(t, element)
	--tests if table contains an item and returns a bool
	--example usage: TableContains(PoopTable, "largepoop")
	for k, v in pairs(t) do
		if v == element then
			return true
		end
	end
	return false
end

function RemoveSprite(name)
	--removes a sprite from the sprite table with the given savename
	--example usage: RemoveSprite("hud-group-missile")
	for k, v in ipairs(Sprites) do
		if v.Name == name then
			table.remove(Sprites, k)
		end
	end
end

function FindSprite(saveName)
	--returns sprite if found
	--example usage: FindSprite("hud-group-missile")
	for k, v in ipairs(Sprites) do
		if v.Name == saveName then
			return k
		end
	end
	return nil
end

function DisableWeaponDowngrades(saveName)
	--disables all downgrades for a weapon
	--for <your mod>/mods/commander-da-overclocker/weapons/weapon_list.lua
	--run it with RegisterApplyMod
	--example usage: RegisterApplyMod(function() DisableWeaponDowngrades("mortar2"))
	local weapon = FindWeapon(saveName)
	if weapon then
		if weapon.Upgrades then
			for k, v in pairs(weapon.Upgrades) do
				if v.Downgrade then
					v.Enabled = false
				end
			end
		end
	end
end

function DisableDeviceDowngrades(saveName)
	--disables all downgrades for a device
	--for <your mod>/mods/commander-da-overclocker/devices/device_list.lua
	--run it with RegisterApplyMod
	--example usage: RegisterApplyMod(function() DisableDeviceDowngrades("mine2"))
	local device = FindDevice(saveName)
	if device then
		if device.Upgrades then
			for k, v in pairs(device.Upgrades) do
				if v.Downgrade then
					v.Enabled = false
				end
			end
		end
	end
end

function SpriteSheet(texture, iterations, iterations_per_row, duration)
	--create an animated Frames table from a sprite sheet.
	--iterations is total amount of frames. 
	--iterations_per_column is the number of frames per row.
	--duration is each frame's duration. (game works on multiples of 0.04)
	--example usage: SpriteSheet(path .. "/sprite_sheet.png", 12, 4, 0.08)
	local Frames = {}
	for i = 0, iterations - 1, 1 do
		table.insert(Frames, 
		{ 
			texture = texture, 
			left = (i % iterations_per_row) / iterations_per_row
			right = ((i % iterations_per_row) + 1) / iterations_per_row
			top = math.floor(i / iterations_per_row) / math.ceil(iterations / iterations_per_row)
			bottom = math.floor((i / iterations_per_row) + 1) / math.ceil(iterations / iterations_per_row)
		})
	end
	Frames.duration = duration
	Frames.mipmap = true
	
	return Frames
end

function MoveTexture(iterations, duration, texture, startLeft, startRight, startTop, startBottom, moveLeft, moveRight, moveTop, moveBottom)
	--move a texture cropping across frames. example: 0,1,0,1 is full image. 0.5,1,0.5,1 is the lower right quarter of the image.
	--for sprites
	--example usage: "MoveTexture(30, 0.04, path .. "/animated_texture.png", 0.5, 1, 0, 1, 0, 1, 0, 1)" will move the left crop from middle of image to left side of image.
	local Frames = {}
	for i = 0, iterations - 1, 1 do
		table.insert(Frames, 
		{ 
			texture = texture, 
			left = startLeft - (i * (moveLeft/iterations)),
			right = startRight - (i * (moveRight/iterations)),
			top = startTop - (i * (moveTop/iterations)),
			bottom = startBottom - (i * (moveBottom/iterations)),
		})
	end
	Frames.duration = duration
	Frames.mipmap = true
	
	return Frames
end