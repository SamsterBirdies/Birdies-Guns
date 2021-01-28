function MakeFlamingVersion(saveName, damageBoost, maxAge, trailEffect, incendiaryRadius, flareEffect, expireEffect)
	local projectile = FindProjectile(saveName)
	if not projectile then Log("Error: MakeFlamingVersion unable to find " .. saveName) return end

	projectile.CollidesWithBeams = true
	projectile.Effects.Impact["firebeam"] = { Effect = flareEffect, Projectile = { Count = 1, Type = "flaming" .. saveName, StdDev = 0 }, Splash = false, Terminate = true, KeepLifespan = true, PosT = 1, Offset = 0 }

	local flamingProjectile = DeepCopy(projectile)
	flamingProjectile.SaveName = "flaming" .. saveName
	if projectile.ProjectileType == "bullet" then
		flamingProjectile.ProjectileType = "mortar"
	end

	incendiaryRadius = incendiaryRadius or 0

	flamingProjectile.TrailEffect = path .. "/effects/" .. trailEffect .. ".lua"
	flamingProjectile.ProjectileIncendiary = true
	flamingProjectile.AlwaysIncendiary = true
	flamingProjectile.IncendiaryRadius = incendiaryRadius
	flamingProjectile.IncendiaryRadiusHeated = incendiaryRadius
	flamingProjectile.IncendiaryOffset = 0.5*incendiaryRadius
	flamingProjectile.MaxAge = maxAge
	flamingProjectile.Effects.Impact["firebeam"] = { Splash = false, Terminate = false, }

	if flamingProjectile.ProjectileSplashDamage then
		flamingProjectile.ProjectileSplashDamage = damageBoost*flamingProjectile.ProjectileSplashDamage
	else
		flamingProjectile.ProjectileDamage = damageBoost*flamingProjectile.ProjectileDamage
		flamingProjectile.WeaponDamageBonus = damageBoost*(flamingProjectile.WeaponDamageBonus or 0)
	end

	if expireEffect then
		flamingProjectile.Effects.Age = {}
		flamingProjectile.Effects.Age["t1000000"] = { Effect = expireEffect, Terminate = true, }
	end
	table.insert(Projectiles, flamingProjectile)
end