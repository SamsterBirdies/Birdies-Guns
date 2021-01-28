sbRespawnbarrel = { Effect =  path .. "/effects/blank.lua", Projectile = { Count = 1, Type = "sboildrumprojectilefall", Speed = 1000, StdDev = 0.0 }, Offset = -60,  Terminate = true, }
sbspawnexplosiveoildrum = { Effect = path .. "/effects/blank.lua", Projectile = { Count = 1, Type = "sboildrumprojectileexplode", Speed = 1000, StdDev = 0.0}, Offset = -60, Terminate = true}
table.insert(Projectiles,
{
		SaveName = "sboildrumprojectile",

		ProjectileType = "mortar",
		DrawBlurredProjectile = false,
		ProjectileMass = 20.0,
		ProjectileDrag = 0,
		CollisionLookaheadDist = 60,
		CollidesWithLike = true,
		ProjectileIncendiary = false,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 4.0,
		ProjectileShootDownRadius = 60,
		Impact = 200000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 1.0,
		ProjectileSplashDamage = 2,
		ProjectileSplashDamageMaxRadius = 100,
		AntiAirHitpoints = 10,
		AntiAirDamage = 100,
		SpeedIndicatorFactor = 0.05,
	

		TrailEffect = path .. "/effects/barrel_trail.lua",

		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = 180,
				Sprite = path .. "/weapons/sboildrum/barrel.tga",
			}
		},

		ParachuteDelayMean = 200,
		ParachuteDelayStdDev = 0.15,
		ParachuteDrag = 10.0,

		Effects =
		{
			Impact =
			{
				["antiair"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
				["bracing"] = sbRespawnbarrel,
				["armour"] = sbRespawnbarrel,
				["default"] = sbspawnexplosiveoildrum,
				["device"] = sbspawnexplosiveoildrum,
				["weapon"] = sbspawnexplosiveoildrum,
			},
			Deflect =
			{
				["default"] = "effects/armor_ricochet.lua",
				["door"] = "effects/armor_ricochet.lua",
			},
			Age = 
			{
			},
		},
		DamageMultiplier =
		{
			{ SaveName = "device", Direct = 1, Splash = 0.0 },
			{ SaveName = "weapon", Direct = 1, Splash = 0.0 },
			{ SaveName = "shield", Direct = 1, Splash = 0.0 },
			{ SaveName = "portal", Direct = 1, Splash = 0.0 },
		},
	})
	table.insert(Projectiles,
{
		SaveName = "sboildrumprojectilefall",

		ProjectileType = "mortar",
		DrawBlurredProjectile = false,
		ProjectileMass = 20.0,
		ProjectileDrag = 0,
		ProjectileIncendiary = false,
		CollidesWithLike = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 4.0,
		ProjectileShootDownRadius = 60,
		Impact = 200000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 1.0,
		AntiAirDamage = 20,
		SpeedIndicatorFactor = 0.05,
	

		TrailEffect = path .. "/effects/barrel_trail.lua",

		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = 180,
				Sprite = path .. "/weapons/sboildrum/barrel.tga",
			}
		},

		ParachuteDelayMean = 200,
		ParachuteDelayStdDev = 0.15,
		ParachuteDrag = 10.0,

		Effects =
		{
			Impact =
			{
				["default"] = "effects/device_construct.lua",
			},
			Deflect =
			{
				["default"] = "effects/armor_ricochet.lua",
				["door"] = "effects/armor_ricochet.lua",
			},
			Age = 
			{
			},
		},
		DamageMultiplier =
		{
			
		},
	})
table.insert(Projectiles,
{
		SaveName = "sboildrumprojectileexplode",

		ProjectileType = "mortar",
		DrawBlurredProjectile = false,
		ProjectileMass = 20.0,
		ProjectileDrag = 0,
		ProjectileIncendiary = false,
		CollidesWithLike = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 4.0,
		ProjectileShootDownRadius = 60,
		ProjectileSplashDamage = 240,
		ProjectileSplashDamageMaxRadius = 200,
		--IncendiaryRadius = 200,
		--IncendiraryRaduisHeated = 220,
		Impact = 200000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 1.0,
		AntiAirDamage = 20,
		SpeedIndicatorFactor = 0.05,
	

		TrailEffect = path .. "/effects/barrel_trail.lua",

		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = 180,
				Sprite = path .. "/weapons/sboildrum/barrel.tga",
			}
		},

		ParachuteDelayMean = 200,
		ParachuteDelayStdDev = 0.15,
		ParachuteDrag = 10.0,

		Effects =
		{
			Impact =
			{
				["default"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			},
			Deflect =
			{
				["default"] = "effects/armor_ricochet.lua",
				["door"] = "effects/armor_ricochet.lua",
			},
			Age = 
			{
			},
		},
		DamageMultiplier =
		{
			{ SaveName = "sboildrumdevice", Direct = 40, Splash = 1.0 },
			{ SaveName = "sboildrumdeviceshock", Direct = 40, Splash = 1.0 },
		},
	})
--shockbarrel
sbRespawnbarrelshock = { Effect =  path .. "/effects/blank.lua", Projectile = { Count = 1, Type = "sboildrumprojectilefallshock", Speed = 1000, StdDev = 0.0 }, Offset = -100,  Terminate = true, }
sbspawnexplosiveoildrumshock = { Effect = path .. "/effects/blank.lua", Projectile = { Count = 1, Type = "sboildrumprojectileexplodeshock", Speed = 1000, StdDev = 0.0}, Offset = -100, Terminate = true}
table.insert(Projectiles,
{
		SaveName = "sboildrumprojectileshock",

		ProjectileType = "mortar",
		DrawBlurredProjectile = false,
		ProjectileMass = 20.0,
		ProjectileDrag = 0,
		CollisionLookaheadDist = 100,
		CollidesWithLike = true,
		ProjectileIncendiary = false,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 4.0,
		ProjectileShootDownRadius = 60,
		Impact = 200000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 1.0,
		ProjectileSplashDamage = 2,
		ProjectileSplashDamageMaxRadius = 250,
		AntiAirDamage = 4,
		SpeedIndicatorFactor = 0.05,
	

		TrailEffect = path .. "/effects/barrel_trail.lua",

		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = 180,
				Sprite = path .. "/weapons/sboildrum/barrelshock.tga",
			}
		},

		ParachuteDelayMean = 200,
		ParachuteDelayStdDev = 0.15,
		ParachuteDrag = 10.0,

		Effects =
		{
			Impact =
			{
				["antiair"] = "mods/weapon_pack/effects/impact_emp.lua",
				["bracing"] = sbRespawnbarrelshock,
				["armour"] = sbRespawnbarrelshock,
				["default"] = sbspawnexplosiveoildrumshock,
				["device"] = sbspawnexplosiveoildrumshock,
				["weapon"] = sbspawnexplosiveoildrumshock,
			},
			Deflect =
			{
				["default"] = "effects/armor_ricochet.lua",
				["door"] = "effects/armor_ricochet.lua",
			},
			Age = 
			{
			},
		},
		DamageMultiplier =
		{
			{ SaveName = "device", Direct = 1, Splash = 0.0 },
			{ SaveName = "weapon", Direct = 1, Splash = 0.0 },
		},
	})
	table.insert(Projectiles,
{
		SaveName = "sboildrumprojectilefallshock",

		ProjectileType = "mortar",
		DrawBlurredProjectile = false,
		ProjectileMass = 20.0,
		ProjectileDrag = 0,
		ProjectileIncendiary = false,
		CollidesWithLike = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 4.0,
		ProjectileShootDownRadius = 60,
		Impact = 200000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 1.0,
		AntiAirDamage = 20,
		SpeedIndicatorFactor = 0.05,
	

		TrailEffect = path .. "/effects/barrel_trail.lua",

		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = 180,
				Sprite = path .. "/weapons/sboildrum/barrelshock.tga",
			}
		},

		ParachuteDelayMean = 200,
		ParachuteDelayStdDev = 0.15,
		ParachuteDrag = 10.0,

		Effects =
		{
			Impact =
			{
				["default"] = "effects/device_construct.lua",
			},
			Deflect =
			{
				["default"] = "effects/armor_ricochet.lua",
				["door"] = "effects/armor_ricochet.lua",
			},
			Age = 
			{
			},
		},
		DamageMultiplier =
		{
			
		},
	})
table.insert(Projectiles,
{
		SaveName = "sboildrumprojectileexplodeshock",

		ProjectileType = "mortar",
		DrawBlurredProjectile = false,
		ProjectileMass = 20.0,
		ProjectileDrag = 0,
		ProjectileIncendiary = false,
		CollidesWithLike = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 4.0,
		ProjectileShootDownRadius = 60,
		ProjectileSplashDamage = 40,
		ProjectileSplashDamageMaxRadius = 170,
		--IncendiaryRadius = 200,
		--IncendiraryRaduisHeated = 220,
		Impact = 200000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 1.0,
		AntiAirDamage = 20,
		SpeedIndicatorFactor = 0.05,
		EMPRadius = 205,
		EMPDuration = 10.0,
	

		TrailEffect = path .. "/effects/barrel_trail.lua",

		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = 180,
				Sprite = path .. "/weapons/sboildrum/barrelshock.tga",
			}
		},

		ParachuteDelayMean = 200,
		ParachuteDelayStdDev = 0.15,
		ParachuteDrag = 10.0,

		Effects =
		{
			Impact =
			{
				["default"] = "mods/weapon_pack/effects/impact_emp.lua",
			},
			Deflect =
			{
				["default"] = "effects/armor_ricochet.lua",
				["door"] = "effects/armor_ricochet.lua",
			},
			Age = 
			{
			},
		},
		DamageMultiplier =
		{
			{ SaveName = "sboildrumdevice", Direct = 40, Splash = 1.0 },
			{ SaveName = "sboildrumdeviceshock", Direct = 40, Splash = 1.0 },
		},
	})