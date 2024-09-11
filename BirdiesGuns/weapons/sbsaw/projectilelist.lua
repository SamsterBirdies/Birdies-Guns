sbsawwood = { Projectile = { Count = 1, Type = "sbsawwood", StdDev = 0.0}, Splash = false, Terminate = true, }
sbsawarmour = { Projectile = { Count = 1, Type = "sbsawarmour", StdDev = 0.0}, Splash = false, Terminate = true, Offset = -5, }
sbsawexpire = {Effect = "effects/missile_structure_hit.lua", Splash = true, Terminate = true, }

--sawmissilesprite
table.insert(Sprites,
{
				Name = "sbsawsprite",
						
				States =
				{
					Normal =  
					{  
						Frames =
						{
							{ texture = path .. "/weapons/sbsaw/projectile1.tga" },
							{ texture = path .. "/weapons/sbsaw/projectile3.tga" },
							{ texture = path .. "/weapons/sbsaw/projectile2.tga" },
							{ texture = path .. "/weapons/sbsaw/projectile4.tga" },
							
							duration = 0.03,
							mipmap = true,
						},
						NextState = "Normal",
					},
					
				},
})
table.insert(Projectiles,
{
		SaveName = "sbsaw",

		ProjectileType = "missile",
		DrawBlurredProjectile = false,
		ProjectileMass = 5.0,
		ProjectileDrag = 64,
		DisableShields = false,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 12,
		Impact = 70000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 350.0,
		ProjectileSplashDamage = 120.0,
		ProjectileSplashDamageMaxRadius = 203.0,
		ProjectileSplashMaxForce = 100000,
		SpeedIndicatorFactor = 0.05,
		AntiAirHitpoints = 16,
		MaxAge = 60,
		EMPSensitivity = 4,
		EMPMissileProbabilityOfCircling = 0.75,
		FlipSpriteFacingLeft = true,
		Gravity = 0,

		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = 0,
				Sprite = "sbsawsprite",
				Pivot = { 0, 0.35 },

				ChildrenInFront =
				{
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0.9 },
						Pivot = { 0, 0.1 },
						PivotOffset = { 0, 0 },
						Sprite = "missile_tail",
					},
				},
			}
		},

		TrailEffect = path .. "/effects/saw_trail.lua",

		Missile =
		{
			ThrustAngleExtent = 10,
			ErraticAngleExtentStdDev = 2.5,
			MaxSteerPerSecond = 40,
			MaxSteerPerSecondErratic = 50,
			ErraticAnglePeriodMean = 0.5,
			ErraticAnglePeriodStdDev = 0.1,
			RocketThrust = 80000,
			RocketThrustChange = 80000,
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
				["bracing"] = sbsawwood,
				["wooddoor"] = sbsawwood,
				["sbcardboard"] = sbsawwood,
				["default"] = "effects/missile_structure_hit.lua",
			},
			Deflect =
			{
				["default"] = path .. "/effects/saw_bounce.lua",
			},
		},
		DamageMultiplier =
		{
			{ SaveName = "armour", Direct = 1.0, Splash = 0.65 },
			{ SaveName = "bracing", Direct = 0.1, Splash = 1.0 },
			{ SaveName = "wooddoor", Direct = 0.1, Splash = 1.0 },
			{ SaveName = "reactor", Direct = 0.01, Splash = 0.15},
		},
})
table.insert(Projectiles,
{
		SaveName = "sbsawwood",

		ProjectileType = "missile",
		DrawBlurredProjectile = false,
		ProjectileMass = 5.0,
		ProjectileDrag = 64,
		DisableShields = false,
		DeflectedByShields = false,
		ExplodeOnTouch = false,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 12,
		Impact = 70000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 700.0,
		ProjectileSplashDamage = 120.0,
		ProjectileSplashDamageMaxRadius = 203.0,
		ProjectileSplashMaxForce = 100000,
		SpeedIndicatorFactor = 0.05,
		MaxAge = 3,
		EMPSensitivity = 4,
		EMPMissileProbabilityOfCircling = 0.75,
		FlipSpriteFacingLeft = true,
		Gravity = 0,

		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = 0,
				Sprite = "sbsawsprite",
				Pivot = { 0, 0.35 },

				ChildrenInFront =
				{
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0.9 },
						Pivot = { 0, 0.1 },
						PivotOffset = { 0, 0 },
						Sprite = "missile_tail",
					},
				},
			}
		},

		TrailEffect = path .. "/effects/sawcut_trail.lua",
		TrailEffect_halloween = path .. "/effects/sawcut_trail_halloween.lua",

		Missile =
		{
			ThrustAngleExtent = 10,
			ErraticAngleExtentStdDev = 2.2,
			MaxSteerPerSecond = 50,
			MaxSteerPerSecondErratic = 100,
			ErraticAnglePeriodMean = 0.5,
			ErraticAnglePeriodStdDev = 0.1,
			LaunchThrust = 50000,
			RocketThrust = 40000,
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
				["bracing"] = "effects/missile_structure_hit.lua",
				["default"] = sbsawarmour,
			},
			Deflect =
			{
				["default"] = path .. "/effects/saw_bounce.lua",
			},
			Age =
			{
				t2999 = sbsawexpire,
			},
		},
		DamageMultiplier =
		{
			{ SaveName = "bracing", Direct = 4.5, Splash = 1.0 },
			{ SaveName = "wooddoor", Direct = 4.5, Splash = 1.0 },
			{ SaveName = "sandbags", Direct = 0.2, Splash = 1.0 },
			{ SaveName = "armour", Direct = 0.01, Splash = 0.65 },
			{ SaveName = "door", Direct = 0.01, Splash = 0.8},
			{ SaveName = "reactor", Direct = 0.01, Splash = 0.15},
		},
})
table.insert(Projectiles,
{
		SaveName = "sbsawarmour",

		ProjectileType = "missile",
		DrawBlurredProjectile = false,
		ProjectileMass = 5.0,
		ProjectileDrag = 64,
		DisableShields = false,
		DeflectedByShields = false,
		ExplodeOnTouch = false,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 12,
		Impact = 70000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 350.0,
		ProjectileSplashDamage = 120.0,
		ProjectileSplashDamageMaxRadius = 203.0,
		ProjectileSplashMaxForce = 100000,
		SpeedIndicatorFactor = 0.05,
		MaxAge = 60,
		EMPSensitivity = 4,
		EMPMissileProbabilityOfCircling = 0.75,
		FlipSpriteFacingLeft = true,
		Gravity = 0,

		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = 0,
				Sprite = "sbsawsprite",
				Pivot = { 0, 0.35 },

				ChildrenInFront =
				{
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0.9 },
						Pivot = { 0, 0.1 },
						PivotOffset = { 0, 0 },
						Sprite = "missile_tail",
					},
				},
			}
		},

		TrailEffect = path .. "/effects/rm_trail.lua",

		Missile =
		{
			ThrustAngleExtent = 10,
			ErraticAngleExtentStdDev = 2.2,
			MaxSteerPerSecond = 50,
			MaxSteerPerSecondErratic = 100,
			ErraticAnglePeriodMean = 0.5,
			ErraticAnglePeriodStdDev = 0.1,
			LaunchThrust = 50000,
			RocketThrust = 50000,
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
				["default"] = path .. "/effects/saw_bounce.lua",
			},
		},
		DamageMultiplier =
		{
			{ SaveName = "armour", Direct = 1.0, Splash = 0.65 },
			{ SaveName = "bracing", Direct = 0.1, Splash = 1.0 },
			{ SaveName = "wooddoor", Direct = 0.1, Splash = 1.0 },
			{ SaveName = "reactor", Direct = 0.01, Splash = 0.15},
		},
})