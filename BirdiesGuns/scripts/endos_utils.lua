--[[
	Feel free to use this file or it's contents in your mods (regardless of what the Readme file says), but leave this comment in when you do.
	Use this file with dofile(path .. "/path/to/this/file.lua") in any script you need it for.
	Note: These functions are not fully bugtested.
	~ Endo
--]]

if Projectiles then
--[[ Copy of MakeFlamingVersion with modifications from ToG mod.
--]]
function MakeEMPVersion(saveName, damageBoost, trailEffect, EMPRadius, EMPDuration, customPath)
	local projectile = FindProjectile(saveName)
	if not projectile then return end

	projectile.CollidesWithBeams = true
	projectile.Effects.Impact["empbeam"] = { Effect = nil, Projectile = { Count = 1, Type = "emp" .. saveName, StdDev = 0 }, Splash = false, Terminate = true, KeepLifespan = true, PosT = 1, Offset = 0 }

	local empProjectile = DeepCopy(projectile)
	empProjectile.SaveName = "emp" .. saveName
	if projectile.ProjectileType == "bullet" then
		empProjectile.ProjectileType = "mortar"
	end

	EMPRadius = EMPRadius or 0
	EMPDuration = EMPDuration or 0

	empProjectile.TrailEffect = (customPath or path) .. "/effects/" .. trailEffect .. ".lua"
	empProjectile.DisableShields = true
	empProjectile.EMPRadius = EMPRadius
	empProjectile.EMPDuration = EMPDuration
	empProjectile.EMPOffset = 0.3*EMPRadius
	
	empProjectile.Effects.Impact["empbeam"] = { Splash = false, Terminate = false, }
	if string.sub(saveName, 1, 7) ~= "flaming" then
		empProjectile.Effects.Impact["firebeam"] = { Effect = nil, Projectile = { Count = 1, Type = "empflaming" .. saveName, StdDev = 0 }, Splash = false, Terminate = true, }
	end
	
	empProjectile.Effects.Age = {}
	
	if empProjectile.ProjectileSplashDamage then
		empProjectile.ProjectileSplashDamage = damageBoost*empProjectile.ProjectileSplashDamage
	else
		empProjectile.ProjectileDamage = damageBoost*empProjectile.ProjectileDamage
		empProjectile.WeaponDamageBonus = damageBoost*(empProjectile.WeaponDamageBonus or 0)
	end
	
	table.insert(Projectiles, empProjectile)
end

--[[ Makes mutliple damaged versions of a projectile. Uses "damage"..n as a prefix for the SaveName
	 of the damaged projectiles.
--]]
function MakeDamagedVersions(saveName, ammount, damageEffect, trailEffect, trailEffectCritical)
	local projectile = FindProjectile(saveName)
	if not projectile then return end
	
	-- For testing/debugging
	projectile.DamagedVersionCount = ammount
	projectile.DamagedVersion = "damage1"..saveName
	
	projectile.Effects.Impact["antiair"] = { Effect = "effects/impact_light.lua", Projectile = { Count = 1, Type = "damage1"..saveName }, Splash = false, Terminate = true, KeepLifespan = true }
	
	if projectile.ProjectileType == "bullet" then
		damagedProjectile.ProjectileType = "mortar"
	end
	
	for i=1, ammount do
		local damagedProjectile = DeepCopy(projectile)
		damagedProjectile.SaveName = "damage"..i..saveName
		
		-- Only important for RUM
		for z, v in pairs(damagedProjectile.Effects.Impact) do
			if v.Projectile and v.Projectile.Type == saveName then
				v.Projectile.Type = "damage"..i..saveName
			end
		end
		
		if trailEffect then
			damagedProjectile.TrailEffect = path .. "/effects/" .. trailEffect .. ".lua"
		end
		
		if i ~= ammount then
			damagedProjectile.Effects.Impact["antiair"] = { Effect = (damageEffect or "effects/impact_light.lua"), Projectile = { Count = 1, Type = "damage"..(i + 1)..saveName }, Splash = false, Terminate = true, KeepLifespan = true }
			damagedProjectile.DamagedVersion = "damage"..(i + 1)..saveName
			damagedProjectile.OriginalVersion = saveName
		else
			damagedProjectile.Effects.Impact["antiair"] = damagedProjectile.Effects.Impact["default"]
			
			if trailEffectCritical then
				damagedProjectile.TrailEffect = path .. "/effects/" .. trailEffectCritical .. ".lua"
			end
		end
		
		table.insert(Projectiles, damagedProjectile)
	end
end

-- Sets the DamageMultiplier of projectiles.
function SetDMGMultiplier(projectile, saveName, directDMG, splashDMG, antiAirDMG)
	local projectile = FindProjectile(projectile)
	if projectile then
		if not projectile.DamageMultiplier then projectile.DamageMultiplier = {} end
		projectile.DamageMultiplier[#projectile.DamageMultiplier+1] = { SaveName = saveName, Direct = directDMG, Splash = splashDMG, AntiAir = antiAirDMG }
	end
end

--[[
	The code below is used to fix the metallic sounds custom materials give off when they get hit by projectiles.
	I updated it so you can also specify the material to fix, aswell as from which material group to inherit the effects from.
	
	Example: InheritMaterialEffect("bracingdoor", "bracing")
--]]
function InheritMaterialEffect(materialSaveName, effectInheritance)
	for k, v in ipairs(Projectiles) do
		if v.Effects then
			-- Impact
			if v.Effects.Impact then
				if v.Effects.Impact[effectInheritance] then
					v.Effects.Impact[materialSaveName] = v.Effects.Impact[effectInheritance]
				elseif v.Effects.Impact["default"] then
					v.Effects.Impact[materialSaveName] = v.Effects.Impact["default"]
				else
					v.Effects.Impact[materialSaveName] = "effects/impact_light.lua"
				end
			end
			
			-- Deflect
			if v.Effects.Deflect then
				if v.Effects.Deflect[effectInheritance] then
					v.Effects.Deflect[materialSaveName] = v.Effects.Deflect[effectInheritance]
				elseif v.Effects.Deflect["default"] then
					v.Effects.Deflect[materialSaveName] = v.Effects.Deflect["default"]
				else	-- Some projectiles do not have a default value
					v.Effects.Deflect[materialSaveName] = "effects/armor_bullet_ricochet.lua"
				end
			end
			
			-- Penetrate
			if v.Effects.Penetrate then
				if v.Effects.Penetrate[effectInheritance] then
					v.Effects.Penetrate[materialSaveName] = v.Effects.Penetrate[effectInheritance]
				elseif v.Effects.Penetrate["default"] then
					v.Effects.Penetrate[materialSaveName] = v.Effects.Penetrate["default"]
				else	-- Some projectiles do not have a default value
					v.Effects.Penetrate[materialSaveName] = "effects/armor_bullet_hit.lua"
				end
			end
		end
	end
	
	-- -- For correct node hit sounds
	if NodeImpacts[effectInheritance] then
		NodeImpacts[materialSaveName] = NodeImpacts[effectInheritance]
	else
		NodeImpacts[materialSaveName] = NodeImpacts["default"]
	end
end
end

if Weapons or Devices then
--[[
	Safely replaces existing upgrades if present,
	instead of outright replacing them and possibly causing problems.
	For those who don't want to write a million if-statements and
	adjust Priority levels to add compat w/ a mod (like me).
	Note: This function works with weapons and devices.
	
	Example:	AddUpgrade(sniper2,
				{
					["sniper3"] =
					{
						Enabled = true,
						SaveName = "sniper3",
						MetalCost  = 100,
						EnergyCost = 900
					} 
				}, true)
	
--]]
function AddUpgrade(buildable, upgrade, isDominant)
	if Weapons then
		FindBuildable = FindWeapon
	elseif Devices then
		FindBuildable = FindDevice
	end
	
	buildable.EnableDeviceUpgrade = true
	
	if not buildable.Upgrades then
		buildable.Upgrades = upgrade
	elseif isDominant then
		oldUpgrade = buildable.Upgrades
		upgradedBuildable = FindBuildable(GetFirstTableItem(upgrade).SaveName)
		
		buildable.Upgrades = upgrade
		
		upgradedBuildable.Upgrades = oldUpgrade
		upgradedBuildable.EnableDeviceUpgrade = true
	else
		upgradedBuildable = FindBuildable(GetFirstTableItem(upgrade).SaveName)
		upgradedBuildable.Enabled = true
	end
end
end

-- This function is required because you can't easily reference a subtable with an unknown string key.
function GetFirstTableItem(t)
	for k, v in pairs(t) do
		return v
	end
end

