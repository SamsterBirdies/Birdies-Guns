sbspawnphase2down = { Effect = path .. "/effects/flak_explode.lua", Projectile = { Count = 1, Type = "sbdronemissiledownp2", StdDev = 0 }, Terminate = true, }
sbspawnphase2up = { Effect = path .. "/effects/flak_explode.lua", Projectile = { Count = 1, Type = "sbdronemissileupp2", StdDev = 0 }, Terminate = true, }
table.insert(Projectiles,
	{
		SaveName = "sbdronemissiledown",

		ProjectileType = "mortar",
		DrawBlurredProjectile = false,
		ProjectileMass = 4.0,
		ProjectileDrag = 0,
		ProjectileIncendiary = true,
		DisableShields = false,
		DeflectedByShields = false,
		EnemyCanTeleport = false, -- equivalent to PassesEnemyPortals, but doesn't trigger Moonshot dependency
		ExplodeOnTouch = true,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 12,
		Impact = 150000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 10.0,
		ProjectileSplashDamage = 10.0,
		ProjectileSplashDamageMaxRadius = 10.0,
		ProjectileSplashMaxForce = 10000,
		SpeedIndicatorFactor = 0.05,
		MaxAge = 9,
		Gravity = 400,
		MagneticModifierFriendly = 0,
		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = 0,
				Sprite = path .. "/weapons/sbdowndrone/projectile_split.png",

				--[[ChildrenInFront =
				{
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0.5 },
						Pivot = { 0, 0.5 },
						PivotOffset = { 0, 0 },
						Sprite = "missile_swarm_tail",
					},
				},]]
			}
		},

		TrailEffect = path .. "/effects/small_swarm_trail.lua",

		Effects =
		{
			Impact =
			{
				["default"] = "effects/mortar_air_burst.lua",
			},
			Deflect =
			{
				["default"] = "effects/mortar_air_burst.lua",
			},
			Age =
			{
				t600 = sbspawnphase2down,
			},
		},
		DamageMultiplier =
		{
			{ SaveName = "bracing", Direct = 0.0, Splash = 0.60 },
			{ SaveName = "backbracing", Direct = 0.0, Splash = 0.40 },
		},
})
--new damage values for phase 2
sbp2projectiledamage = 110
sbp2projectilesplashdamage = 110
sbp2projectilesplashdamagemaxradius = 210

--create copiable projectile
sbdronemissiletocopy = FindProjectile("sbdronemissiledown")
--create phase2 version
sbmakedronep2 = DeepCopy(sbdronemissiletocopy)
sbmakedronep2.SaveName = "sbdronemissiledownp2"
sbmakedronep2.ProjectileDamage = sbp2projectiledamage
sbmakedronep2.ProjectileSplashDamage = sbp2projectilesplashdamage
sbmakedronep2.ProjectileSplashDamageMaxRadius = sbp2projectilesplashdamagemaxradius
sbmakedronep2.Effects.Age = {}
table.insert(Projectiles, sbmakedronep2)
--create upside down version
sbmakedroneup = DeepCopy(sbdronemissiletocopy)
sbmakedroneup.SaveName = "sbdronemissileup"
sbmakedroneup.Gravity = (sbmakedroneup.Gravity * -1)
sbmakedroneup.Effects.Age = {t600 = sbspawnphase2up,}
table.insert(Projectiles, sbmakedroneup)
--create upside down version phase 2 version
sbdronemissilephase2tocopy = FindProjectile("sbdronemissiledownp2")
sbmakedroneupp2 = DeepCopy(sbdronemissilephase2tocopy)
sbmakedroneupp2.SaveName = "sbdronemissileupp2"
sbmakedroneupp2.Gravity = (sbmakedroneupp2.Gravity * -1)
table.insert(Projectiles, sbmakedroneupp2)

sbDroneup = { Effect = path .. "/effects/flak_explode.lua", Projectile = { Count = 1, Type = "sbdronemissileup", StdDev = 0 }, Terminate = false, }
sbDronedown = { Effect = path .. "/effects/flak_explode.lua", Projectile = { Count = 1, Type = "sbdronemissiledown", StdDev = 0 }, Terminate = false, }
sbDroneidle = { Effect = path .. "/effects/flak_explode.lua", Projectile = { Count = 1, Type = "sbdroneidle", StdDev = 0 }, Offset = -1000, Terminate = true, Splash = false, }
table.insert(Projectiles,
{
	SaveName = "sbdrone",
	
	ProjectileType = "missile",
	DrawBlurredProjectile = false,
	ProjectileMass = 5.0,
	ProjectileDrag = 64,
	DisableShields = true,
	DeflectedByShields = false,
	ExplodeOnTouch = true,
	ProjectileThickness = 2.0,
	ProjectileShootDownRadius = 20,
	Impact = 150000,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,
	ProjectileDamage = 280.0,
	ProjectileSplashDamage = 125.0,
	ProjectileSplashDamageMaxRadius = 230.0,
	ProjectileSplashMaxForce = 100000,
	SpeedIndicatorFactor = 0.05,
	MaxAge = 60,
	EMPSensitivity = 4,
	EMPMissileProbabilityOfCircling = 0.25,
	FlipSpriteFacingLeft = true,
	AntiAirHitpoints = 18,
	AntiAirDamage = 1000,
	Gravity = 0,

	Projectile =
	{
		Root =
		{
			Name = "Root",
			Angle = 0,
			Sprite = path .. "/weapons/sbdowndrone/projectile_main.png",
			Pivot = { 0, 0 },

			ChildrenInFront =
			{
				{
					Name = "Flame",
					Angle = 0,
					Offset = { 0, 0.8 },
					Pivot = { 0, 0.1 },
					PivotOffset = { 0, 0 },
					Sprite = "missile_tail",
				},
			},
		}
	},

	TrailEffect = path .. "/effects/sbdrone_trail.lua",

	Missile =
	{
		ThrustAngleExtent = 7,
		ErraticAngleExtentStdDev = 0.7,
		ErraticAngleExtentMax = 2,
		MaxSteerPerSecond = 30,
		MaxSteerPerSecondErratic = 40,
		ErraticAnglePeriodMean = 0.1,
		ErraticAnglePeriodStdDev = 0.05,
		ErraticThrust = 0.12,
		ErraticThrustMagneticField = 0.3,
		LaunchThrust = 75000,
		RocketThrust = 70000,
		CruiseTargetDistance = 2000,
		CruiseTargetDuration = .5,
		TargetRearOffsetDistance = 100000,
		MinTargetUpdateDistance = 2000,
	},

	Effects =
	{
		Impact =
		{
			["antiair"] = "effects/missile_structure_hit.lua",
			["default"] = "effects/missile_structure_hit.lua",
		},
		Deflect =
		{
			["armour"] = "effects/armor_ricochet.lua",
			["door"] = "effects/armor_ricochet.lua",
			["shield"] = "effects/energy_shield_ricochet.lua",
		},
		Age =
		{
		
		},
	},
	DamageMultiplier =
		{
			{ SaveName = "bracing", Direct = 0.5, Splash = 0.90 },
			{ SaveName = "backbracing", Direct = 0.0, Splash = 0.60 },
		},
})
SetDamageMultiplierSpecific("shrapnel", "sbdrone", "AntiAir", 0.75)
sbdronetimer = 800
for i = 500, 50000, sbdronetimer do
	local sbinsertdroneageeffect = FindProjectile("sbdrone")
	if sbinsertdroneageeffect then
		sbinsertdroneageeffect["Effects"]["Age"]["t" .. i] = sbDroneup 
		sbinsertdroneageeffect["Effects"]["Age"]["t" .. i + (sbdronetimer/2)] = sbDronedown
	end
end
