--Anyone may copy and freely use anything in this file regardless of what the mod description says. -SamsterBirdies

sbinfinity = 2000000000
sbblank = path .. "/effects/media/blank.png"
sbUniversalImpactMultiplier = 1.0

--Function is a copy of ToG MakeFlamingVersion for the kinetic beam.
function MakeVacuumVersion(saveName, trailEffect, impact, splashforce, customPath)
	local projectile = FindProjectile(saveName)
	if not projectile then --Log("Error: MakeVacuumVersion unable to find " .. saveName) 
	return end
	
	if projectile.CollidesWithBeams == nil then
		projectile.CollidesWithBeams = true
	end
	projectile.Effects.Impact["sbpullbeam"] = { Effect = (customPath or path) .. "/effects/sbpullbeam_hit2.lua", Projectile = { Count = 1, Type = "vacuum" .. saveName, StdDev = 0 }, Splash = false, Terminate = true, KeepLifespan = true, PosT = 1, Offset = 0 }

	local vacuumProjectile = DeepCopy(projectile)
	vacuumProjectile.SaveName = "vacuum" .. saveName
	if projectile.ProjectileType == "bullet" then
		vacuumProjectile.ProjectileType = "mortar"
	end

	vacuumProjectile.TrailEffect = (customPath or path) .. "/effects/" .. trailEffect .. ".lua"
	vacuumProjectile.Impact = (impact*sbUniversalImpactMultiplier)
	
	if vacuumProjectile.ProjectileSplashMaxForce then
	vacuumProjectile.ProjectileSplashMaxForce = (splashforce)
	end
	vacuumProjectile.Effects.Impact["sbpullbeam"] = { Splash = false, Terminate = false, }
	
	vacuumProjectile.TrailEffect_halloween = nil
	vacuumProjectile.TrailEffect_christmas = nil
	table.insert(Projectiles, vacuumProjectile)
end

--[[ 
Function below should add a depleted uranium effect to your weapons on busters active.

Add the function below to <your mod>/mods/commander-cf-buster/weapons/projectile_list.lua
]]
--[[
function modDUsupport(savename, maxage)
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
]]
--Default maxage is 720. Example usage: modDUsupport("bfc", 2000)