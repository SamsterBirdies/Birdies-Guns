table.insert(Sprites,
{
	Name = "sbhelicopterrotor",
			
	States =
	{
		Normal =  
		{  
			Frames =
			{
				{ texture = path .. "/weapons/sbhelicopter/rotorspin1.tga" },
				{ texture = path .. "/weapons/sbhelicopter/rotorspin2.tga" },
				{ texture = path .. "/weapons/sbhelicopter/rotorspin5.tga" },
				{ texture = path .. "/weapons/sbhelicopter/rotorspin2.tga" },
				{ texture = path .. "/weapons/sbhelicopter/rotorspin3.tga" },
				{ texture = path .. "/weapons/sbhelicopter/rotorspin2.tga" },
				{ texture = path .. "/weapons/sbhelicopter/rotorspin4.tga" },
				{ texture = path .. "/weapons/sbhelicopter/rotorspin1.tga" },
				{ texture = path .. "/weapons/sbhelicopter/rotorspin2.tga" },
				{ texture = path .. "/weapons/sbhelicopter/rotorspin5.tga" },
				{ texture = path .. "/weapons/sbhelicopter/rotorspin2.tga" },
				{ texture = path .. "/weapons/sbhelicopter/rotorspin3.tga" },
				{ texture = path .. "/weapons/sbhelicopter/rotorspin2.tga" },
				{ texture = path .. "/weapons/sbhelicopter/rotorspin4.tga" },
				{ texture = path .. "/weapons/sbhelicopter/rotorspin1.tga" },
				{ texture = path .. "/weapons/sbhelicopter/rotorspin2.tga" },
				{ texture = path .. "/weapons/sbhelicopter/rotorspin5.tga" },
				{ texture = path .. "/weapons/sbhelicopter/rotorspin2.tga" },
				{ texture = path .. "/weapons/sbhelicopter/rotorspin3.tga" },
				{ texture = path .. "/weapons/sbhelicopter/rotorspin2.tga" },
				{ texture = path .. "/weapons/sbhelicopter/rotorspin4.tga" },
				
				duration = 0.03,
				mipmap = true,
			},
			NextState = "Normal",
		},
	},
})
table.insert(Sprites,
{
	Name = "sbflamecopterheli",
	States =
	{
		Normal = { Frames = { { texture = path .. "/weapons/sbhelicopter/heli.png", colour = { 1.0, 1.0, 0.8, 1.0 } }, mipmap = true, }, },
		Idle = Normal,
	},
})
table.insert(Sprites,
{
	Name = "sbmooncopterheli",
	States =
	{
		Normal = { Frames = { { texture = path .. "/weapons/sbhelicopter/heli.png", colour = { 0.7, 0.8, 1.0, 1.0 } }, mipmap = true, }, },
		Idle = Normal,
	},
})
--snipercopter
sbsnipercopterstop = { Projectile = { Count = 1, Type = "sbsnipercopter-still", StdDev = 0.0 }, Offset = -1000, Terminate = true, }
sbsnipercoptersuicide = { Projectile = { Count = 1, Type = "sbsnipercopter-suicide", StdDev = 0.0 }, Offset = 0, Terminate = true, }
sbsnipercoptershot1 = { Effect = "effects/sniper_flash.lua", Projectile = { Count = 2, Type = "machinegun", Speed = 10000, StdDev = 0.08 }, Splash = false, Terminate = false, }
sbsnipercoptershot2 = { Effect = path .. "/effects/fire_caliber50.lua", Projectile = { Count = 2, Type = "sniper", Speed = 10000, StdDev = 0.06 }, Splash = false, Terminate = false, }
sbsnipercoptershot3 = { Effect = "effects/sniper-ap_flash.lua", Projectile = { Count = 2, Type = "sb50cal", Speed = 10000, StdDev = 0.04 }, Splash = false, Terminate = false, }
sbsnipercoptershot4 = { Effect = "effects/sniper-ap_flash.lua", Projectile = { Count = 3, Type = "sbsnipercopter", StdDev = 0.04 }, Splash = false, Terminate = false, }
table.insert(Projectiles,
{
		SaveName = "sbsnipercopter",

		ProjectileType = "missile",
		DrawBlurredProjectile = false,
		ProjectileMass = 20.0,
		ProjectileDrag = 64,
		CollisionLookaheadDist = 1000,
		DisableShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 20,
		Impact = 70000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 1.0,
		ProjectileSplashDamage = 1.0,
		ProjectileSplashDamageMaxRadius = 1.0,
		ProjectileSplashMaxForce = 1,
		SpeedIndicatorFactor = 0.05,
		ProjectileIncendiary = false,
		IncendiaryRadius = 150,
		IncendiaryRadiusHeated = 0,
		MaxAge = 60,
		EMPSensitivity = 4,
		AntiAirHealth = 16,
		EMPMissileProbabilityOfCircling = 0.75,
		FlipSpriteFacingLeft = true,
		Gravity = 0,

		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = -90,
				Sprite = path .. "/weapons/sbhelicopter/heli",
				Pivot = { 0, 0 },

				ChildrenInFront =
				{
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0 },
						Pivot = { 0, 0 },
						PivotOffset = { 0, 0 },
						Sprite = path .. "/weapons/sbhelicopter/sniperwing",
					},
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0 },
						Pivot = { 0, 0 },
						PivotOffset = { 0, 0 },
						Sprite = "sbhelicopterrotor",
					},
				},
			}
		},

		TrailEffect = path .. "/effects/rotorloop.lua",

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
				["default"] = sbsnipercopterstop,
			},
			Deflect =
			{
				["default"] = sbsnipercopterstop,
			},
			Age =
			{
				t1500 = sbsnipercoptershot1,
				t1600 = sbsnipercoptershot2,
				t1750 = sbsnipercoptershot1,
				t1800 = sbsnipercoptershot2,
				t2000 = sbsnipercoptershot1,
				t2100 = sbsnipercoptershot2,
				t2250 = sbsnipercoptershot1,
				t2500 = sbsnipercoptershot1,
				t2600 = sbsnipercoptershot2,
				t2750 = sbsnipercoptershot1,
				t2825 = sbsnipercoptershot2,
				t3000 = sbsnipercoptershot1,
				t3250 = sbsnipercoptershot1,
				t3275 = sbsnipercoptershot2,
				t3325 = sbsnipercoptershot2,
				t3500 = sbsnipercoptershot1,
				t3600 = sbsnipercoptershot2,
				t3750 = sbsnipercoptershot1,
				t4000 = sbsnipercoptershot1,
				t4100 = sbsnipercoptershot2,
				t4250 = sbsnipercoptershot1,
				t4300 = sbsnipercoptershot2,
				t4500 = sbsnipercoptershot1,
				t4700 = sbsnipercoptershot2,
				t4750 = sbsnipercoptershot1,
				t5000 = sbsnipercoptershot2,
				t5500 = sbsnipercoptershot1,
				t5600 = sbsnipercoptershot2,
				t5750 = sbsnipercoptershot1,
				t5800 = sbsnipercoptershot2,
				t6000 = sbsnipercoptershot1,
				t6100 = sbsnipercoptershot2,
				t6250 = sbsnipercoptershot1,
				t6500 = sbsnipercoptershot1,
				t6600 = sbsnipercoptershot2,
				t6750 = sbsnipercoptershot1,
				t6825 = sbsnipercoptershot2,
				t7000 = sbsnipercoptershot1,
				t7250 = sbsnipercoptershot1,
				t7275 = sbsnipercoptershot2,
				t7325 = sbsnipercoptershot2,
				t7500 = sbsnipercoptershot1,
				t7600 = sbsnipercoptershot2,
				t7750 = sbsnipercoptershot1,
				t8000 = sbsnipercoptershot1,
				t8100 = sbsnipercoptershot2,
				t8250 = sbsnipercoptershot1,
				t8300 = sbsnipercoptershot2,
				t8500 = sbsnipercoptershot1,
				t8700 = sbsnipercoptershot2,
				t8750 = sbsnipercoptershot1,
				t10500 = sbsnipercoptershot1,
				t10600 = sbsnipercoptershot2,
				t10750 = sbsnipercoptershot1,
				t10800 = sbsnipercoptershot2,
				t12000 = sbsnipercoptershot1,
				t12100 = sbsnipercoptershot2,
				t12250 = sbsnipercoptershot1,
				t12500 = sbsnipercoptershot1,
				t12600 = sbsnipercoptershot2,
				t12750 = sbsnipercoptershot1,
				t12825 = sbsnipercoptershot2,
				t13000 = sbsnipercoptershot1,
				t13250 = sbsnipercoptershot1,
				t13275 = sbsnipercoptershot2,
				t13325 = sbsnipercoptershot2,
				t13500 = sbsnipercoptershot1,
				t13600 = sbsnipercoptershot2,
				t13750 = sbsnipercoptershot1,
				t14000 = sbsnipercoptershot1,
			},
		},
})
table.insert(Projectiles,
{
		SaveName = "sbsnipercopter-still",

		ProjectileType = "missile",
		DrawBlurredProjectile = false,
		ProjectileMass = 20.0,
		ProjectileDrag = 64,
		DisableShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 20,
		Impact = 70000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 100.0,
		ProjectileSplashDamage = 45.0,
		ProjectileSplashDamageMaxRadius = 100.0,
		ProjectileSplashMaxForce = 100000,
		SpeedIndicatorFactor = 0.05,
		ProjectileIncendiary = true,
		IncendiaryRadius = 150,
		IncendiaryRadiusHeated = 0,
		MaxAge = 20,
		EMPSensitivity = 4,
		EMPMissileProbabilityOfCircling = 0.75,
		FlipSpriteFacingLeft = true,
		Gravity = 0,

		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = -90,
				Sprite = path .. "/weapons/sbhelicopter/heli",
				Pivot = { 0, 0 },

				ChildrenInFront =
				{
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0 },
						Pivot = { 0, 0 },
						PivotOffset = { 0, 0 },
						Sprite = path .. "/weapons/sbhelicopter/sniperwing",
					},
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0 },
						Pivot = { 0, 0 },
						PivotOffset = { 0, 0 },
						Sprite = "sbhelicopterrotor",
					},
				},
			}
		},

		TrailEffect = path .. "/effects/rotorloop.lua",

		Missile =
		{
			ThrustAngleExtent = 10,
			ErraticAngleExtentStdDev = 2.2,
			MaxSteerPerSecond = 50,
			MaxSteerPerSecondErratic = 100,
			ErraticAnglePeriodMean = 0.5,
			ErraticAnglePeriodStdDev = 0.1,
			LaunchThrust = 0.1,
			RocketThrust = 0.1,
			CruiseTargetDistance = 2000,
			CruiseTargetDuration = .5,
			TargetRearOffsetDistance = 100000,
			MinTargetUpdateDistance = 2000,
		},

		Effects =
		{
			Impact =
			{
				["device"] = "effects/missile_structure_hit.lua",
				["antiair"] = "effects/missile_structure_hit.lua",
				["foundations"] = "effects/missile_ground_hit.lua",
				["rocks01"] = "effects/missile_ground_hit.lua",
				["shield"] = "effects/missile_structure_hit.lua",
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
				t1500 = sbsnipercoptershot1,
				t1600 = sbsnipercoptershot1,
				t1750 = sbsnipercoptershot1,
				t1800 = sbsnipercoptershot3,
				t2000 = sbsnipercoptershot1,
				t2100 = sbsnipercoptershot2,
				t2250 = sbsnipercoptershot1,
				t2500 = sbsnipercoptershot1,
				t2600 = sbsnipercoptershot3,
				t2750 = sbsnipercoptershot1,
				t2825 = sbsnipercoptershot2,
				t3000 = sbsnipercoptershot1,
				t3250 = sbsnipercoptershot1,
				t3275 = sbsnipercoptershot1,
				t3325 = sbsnipercoptershot3,
				t3500 = sbsnipercoptershot1,
				t3600 = sbsnipercoptershot2,
				t3750 = sbsnipercoptershot1,
				t4000 = sbsnipercoptershot1,
				t4100 = sbsnipercoptershot2,
				t4250 = sbsnipercoptershot1,
				t4300 = sbsnipercoptershot2,
				t4500 = sbsnipercoptershot1,
				t4700 = sbsnipercoptershot3,
				t4750 = sbsnipercoptershot1,
				t5000 = sbsnipercoptershot1,
				t5500 = sbsnipercoptershot1,
				t5600 = sbsnipercoptershot2,
				t5750 = sbsnipercoptershot1,
				t5800 = sbsnipercoptershot3,
				t6000 = sbsnipercoptershot1,
				t6100 = sbsnipercoptershot2,
				t6250 = sbsnipercoptershot1,
				t6500 = sbsnipercoptershot1,
				t6600 = sbsnipercoptershot3,
				t6750 = sbsnipercoptershot1,
				t6825 = sbsnipercoptershot1,
				t7000 = sbsnipercoptershot1,
				t7250 = sbsnipercoptershot1,
				t7275 = sbsnipercoptershot2,
				t7325 = sbsnipercoptershot3,
				t7500 = sbsnipercoptershot1,
				t7600 = sbsnipercoptershot2,
				t7750 = sbsnipercoptershot1,
				t8000 = sbsnipercoptershot1,
				t8100 = sbsnipercoptershot1,
				t8250 = sbsnipercoptershot1,
				t8300 = sbsnipercoptershot1,
				t8500 = sbsnipercoptershot1,
				t8700 = sbsnipercoptershot3,
				t8750 = sbsnipercoptershot1,
				t10000 = sbsnipercoptersuicide,
			},
		},
})
table.insert(Projectiles,
{
		SaveName = "sbsnipercopter-suicide",

		ProjectileType = "missile",
		DrawBlurredProjectile = false,
		ProjectileMass = 20.0,
		ProjectileDrag = 64,
		DisableShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 20,
		Impact = 70000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 250.0,
		ProjectileSplashDamage = 85.0,
		ProjectileSplashDamageMaxRadius = 200.0,
		ProjectileSplashMaxForce = 10000,
		SpeedIndicatorFactor = 0.05,
		ProjectileIncendiary = true,
		IncendiaryRadius = 150,
		IncendiaryRadiusHeated = 0,
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
				Angle = -90,
				Sprite = path .. "/weapons/sbhelicopter/heli",
				Pivot = { 0, 0 },

				ChildrenInFront =
				{
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0 },
						Pivot = { 0, 0 },
						PivotOffset = { 0, 0 },
						Sprite = path .. "/weapons/sbhelicopter/sniperwing",
					},
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0 },
						Pivot = { 0, 0 },
						PivotOffset = { 0, 0 },
						Sprite = "sbhelicopterrotor",
					},
				},
			}
		},

		TrailEffect = path .. "/effects/rotorloop.lua",

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
				["default"] = "effects/missile_structure_hit.lua",
			},
			Age =
			{
			},
		},
})
--seepcopter
sbseepcopterstop = { Projectile = { Count = 1, Type = "sbseepcopter-still", StdDev = 0.0 }, Offset = -1000, Terminate = true, }
sbseepcoptersuicide = { Projectile = { Count = 1, Type = "sbseepcopter-suicide", StdDev = 0.0 }, Offset = 0, Terminate = true, }
sbseepcoptershot1 = { Effect = path .. "/effects/launchsmall.lua", Projectile = { Count = 1, Type = "missile", Speed = 1000, StdDev = 0.08 }, Splash = false, Terminate = false, }
sbseepcoptershot2 = { Effect = "mods/weapon_pack/effects/emp_launch.lua", Projectile = { Count = 1, Type = "sbhelirocketemp", Speed = 1000, StdDev = 0.06 }, Splash = false, Terminate = false, }
sbseepcoptershot3 = { Effect = "mods/weapon_pack/effects/rocket_launch.lua", Projectile = { Count = 1, Type = "rocket", Speed = 1000, StdDev = 0.04 }, Splash = false, Terminate = false, }
table.insert(Projectiles,
{
		SaveName = "sbseepcopter",

		ProjectileType = "missile",
		DrawBlurredProjectile = false,
		ProjectileMass = 20.0,
		ProjectileDrag = 64,
		CollisionLookaheadDist = 1000,
		DisableShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 20,
		Impact = 70000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 1.0,
		ProjectileSplashDamage = 1.0,
		ProjectileSplashDamageMaxRadius = 1.0,
		ProjectileSplashMaxForce = 1,
		SpeedIndicatorFactor = 0.05,
		ProjectileIncendiary = false,
		IncendiaryRadius = 150,
		IncendiaryRadiusHeated = 0,
		MaxAge = 60,
		EMPSensitivity = 0,
		EMPMissileProbabilityOfCircling = 0.75,
		FlipSpriteFacingLeft = true,
		AntiAirHealth = 11,
		Gravity = 0,

		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = -90,
				Sprite = path .. "/weapons/sbhelicopter/heli",
				Pivot = { 0, 0 },

				ChildrenInFront =
				{
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0 },
						Pivot = { 0, 0 },
						PivotOffset = { 0, 0 },
						Sprite = path .. "/weapons/sbhelicopter/seepwing",
					},
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0 },
						Pivot = { 0, 0 },
						PivotOffset = { 0, 0 },
						Sprite = "sbhelicopterrotor",
					},
				},
			}
		},

		TrailEffect = path .. "/effects/rotorloop.lua",

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
				["default"] = sbseepcopterstop,
			},
			Deflect =
			{
				["default"] = sbseepcopterstop,
			},
			Age =
			{
			
				t2100 = sbseepcoptershot1,
				t2250 = sbseepcoptershot1,
				t2550 = sbseepcoptershot1,
				t2700 = sbseepcoptershot1,
				t3075 = sbseepcoptershot2,
				t5525 = sbseepcoptershot1,
				t6125 = sbseepcoptershot2,
				t6575 = sbseepcoptershot2,
				t7000 = sbseepcoptershot1,
				t7250 = sbseepcoptershot1,
				t7500 = sbseepcoptershot1,
				t7750 = sbseepcoptershot1,
				t8000 = sbseepcoptershot1,
				t8250 = sbseepcoptershot1,
				t8500 = sbseepcoptershot1,
				t8750 = sbseepcoptershot1,
				t9000 = sbseepcoptershot1,
				t9250 = sbseepcoptershot1,
				t9500 = sbseepcoptershot1,
				t9750 = sbseepcoptershot1,
				t10000 = sbseepcoptershot1,
				t10250 = sbseepcoptershot1,
				t10500 = sbseepcoptershot1,
				t10750 = sbseepcoptershot1,
				t11650 = sbseepcoptershot1,
				t11800 = sbseepcoptershot1,
				t12100 = sbseepcoptershot1,
				t12250 = sbseepcoptershot1,
				t12550 = sbseepcoptershot1,
				t12700 = sbseepcoptershot1,
				
			},
		},
})
table.insert(Projectiles,
{
		SaveName = "sbseepcopter-still",

		ProjectileType = "missile",
		DrawBlurredProjectile = false,
		ProjectileMass = 20.0,
		ProjectileDrag = 64,
		DisableShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 20,
		Impact = 70000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 100.0,
		ProjectileSplashDamage = 45.0,
		ProjectileSplashDamageMaxRadius = 100.0,
		ProjectileSplashMaxForce = 100000,
		SpeedIndicatorFactor = 0.05,
		ProjectileIncendiary = true,
		IncendiaryRadius = 150,
		IncendiaryRadiusHeated = 0,
		MaxAge = 20,
		EMPSensitivity = 0,
		EMPMissileProbabilityOfCircling = 0.75,
		FlipSpriteFacingLeft = true,
		Gravity = 0,

		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = -90,
				Sprite = path .. "/weapons/sbhelicopter/heli",
				Pivot = { 0, 0 },

				ChildrenInFront =
				{
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0 },
						Pivot = { 0, 0 },
						PivotOffset = { 0, 0 },
						Sprite = path .. "/weapons/sbhelicopter/seepwing",
					},
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0 },
						Pivot = { 0, 0 },
						PivotOffset = { 0, 0 },
						Sprite = "sbhelicopterrotor",
					},
				},
			}
		},

		TrailEffect = path .. "/effects/rotorloop.lua",

		Missile =
		{
			ThrustAngleExtent = 10,
			ErraticAngleExtentStdDev = 2.2,
			MaxSteerPerSecond = 50,
			MaxSteerPerSecondErratic = 100,
			ErraticAnglePeriodMean = 0.5,
			ErraticAnglePeriodStdDev = 0.1,
			LaunchThrust = 0.1,
			RocketThrust = 0.1,
			CruiseTargetDistance = 2000,
			CruiseTargetDuration = .5,
			TargetRearOffsetDistance = 100000,
			MinTargetUpdateDistance = 2000,
		},

		Effects =
		{
			Impact =
			{
				["device"] = "effects/missile_structure_hit.lua",
				["antiair"] = "effects/missile_structure_hit.lua",
				["foundations"] = "effects/missile_ground_hit.lua",
				["rocks01"] = "effects/missile_ground_hit.lua",
				["shield"] = "effects/missile_structure_hit.lua",
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
				t1000 = sbseepcoptershot1,
				t1250 = sbseepcoptershot1,
				t1750 = sbseepcoptershot1,
				t2000 = sbseepcoptershot3,
				t2500 = sbseepcoptershot1,
				t2600 = sbseepcoptershot1,
				t2800 = sbseepcoptershot3,
				r3000 = sbseepcoptershot1,
				t3400 = sbseepcoptershot1,
				t3500 = sbseepcoptershot1,
				t3600 = sbseepcoptershot1,
				t3800 = sbseepcoptershot1,
				t4000 = sbseepcoptershot1,
				t4200 = sbseepcoptershot1,
				t4400 = sbseepcoptershot1,
				t6000 = sbseepcoptershot1,
				t7000 = sbseepcoptershot1,
				t10000 = sbseepcoptersuicide,
			},
		},
})
table.insert(Projectiles,
{
		SaveName = "sbseepcopter-suicide",

		ProjectileType = "missile",
		DrawBlurredProjectile = false,
		ProjectileMass = 20.0,
		ProjectileDrag = 64,
		DisableShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 20,
		Impact = 70000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 300.0,
		ProjectileSplashDamage = 85.0,
		ProjectileSplashDamageMaxRadius = 170.0,
		ProjectileSplashMaxForce = 10000,
		SpeedIndicatorFactor = 0.05,
		ProjectileIncendiary = true,
		IncendiaryRadius = 150,
		IncendiaryRadiusHeated = 0,
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
				Angle = -90,
				Sprite = path .. "/weapons/sbhelicopter/heli",
				Pivot = { 0, 0 },

				ChildrenInFront =
				{
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0 },
						Pivot = { 0, 0 },
						PivotOffset = { 0, 0 },
						Sprite = path .. "/weapons/sbhelicopter/seepwing",
					},
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0 },
						Pivot = { 0, 0 },
						PivotOffset = { 0, 0 },
						Sprite = "sbhelicopterrotor",
					},
				},
			}
		},

		TrailEffect = path .. "/effects/rotorloop.lua",

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
				["default"] = "effects/missile_structure_hit.lua",
			},
		},
})
table.insert(Projectiles,
{
	SaveName = "sbhelirocketemp",

	ProjectileType = "missile",
	DrawBlurredProjectile = false,
	ProjectileMass = 5.0,
	ProjectileDrag = 13,
	DisableShields = true,
	DeflectedByShields = false,
	ExplodeOnTouch = true,
	ProjectileThickness = 4.0,
	ProjectileShootDownRadius = 15,
	Impact = 100000,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,
	ProjectileDamage = 100.0,
	ProjectileSplashDamage = 40.0,
	ProjectileSplashDamageMaxRadius = 120.0,
	ProjectileSplashMaxForce = 50000,
	SpeedIndicatorFactor = 0.05,
	PassesEnemyPortals = false,
	AntiAirDamage = 60.0,
	EMPRadius = 150,
	EMPOffset = 50,
	EMPDuration = 7.0,
	EMPSensitivity = 0,
	Gravity = 0,
	IgnitesBackgroundMaterials = true,
	IgnitesBackgroundMaterialsPassing = true,
	IgnitesBackgroundMaterialsPassingSource = false,

	Projectile =
	{
		Root =
		{
			Name = "Root",
			Angle = 0,
			Sprite = path .. "/weapons/sbhelicopter/empprojectileheli.png",
			Pivot = { 0, 0.35 },

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

	TrailEffect = path .. "/effects/sbhelirocketemp_trail.lua",

	Missile =
	{
		ThrustAngleExtent = 30,
		ErraticAngleExtentStdDev = 0.5,
		MaxSteerPerSecond = 200,
		MaxSteerPerSecondErratic = 400,
		ErraticAnglePeriodMean = 0.3,
		ErraticAnglePeriodStdDev = 0.05,
		RocketThrust = 10000,
		RocketThrustChange = 8000,
		ErraticThrust = 1.4,
		CruiseTargetDistance = 300,
		CruiseTargetDuration = .5,
		TargetRearOffsetDistance = 100000,
		MinTargetUpdateDistance = 2000,
	},

	DamageMultiplier =
	{
		{ SaveName = "shield", Direct = 0, Splash = 0.5 },
	},

	Effects =
	{
		Impact =
		{
			["default"] = "mods/weapon_pack/effects/impact_emp.lua",
		},
		Deflect =
		{
		},
	},
})
--flame copter
sbflamecopterstop = { Projectile = { Count = 1, Type = "sbflamecopter-still", StdDev = 0.0 }, Offset = -1000, Terminate = true, }
sbflamecoptersuicide = { Projectile = { Count = 1, Type = "sbflamecopter-suicide", StdDev = 0.0 }, Offset = 0, Terminate = true, }
sbflamecoptershot1 = { Effect = path .. "/effects/launchsmall.lua", Projectile = { Count = 4, Type = "sbflames", Speed = 6000, StdDev = 0.09 }, Splash = false, Terminate = false, }
sbflamecoptershot2 = { Effect = path .. "/effects/launchsmall.lua", Projectile = { Count = 2, Type = "sbflames", Speed = 10000, StdDev = 0.06 }, Splash = false, Terminate = false, }
sbflamecoptershot3 = { Effect = path .. "/effects/launchsmall.lua", Projectile = { Count = 10, Type = "sbflames", Speed = 4500, StdDev = 0.25 }, Splash = false, Terminate = false, }
table.insert(Projectiles,
{
		SaveName = "sbflamecopter",

		ProjectileType = "missile",
		DrawBlurredProjectile = false,
		ProjectileMass = 20.0,
		ProjectileDrag = 64,
		CollisionLookaheadDist = 1000,
		DisableShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 20,
		Impact = 70000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 1.0,
		ProjectileSplashDamage = 1.0,
		ProjectileSplashDamageMaxRadius = 1.0,
		ProjectileSplashMaxForce = 1,
		SpeedIndicatorFactor = 0.05,
		ProjectileIncendiary = false,
		IncendiaryRadius = 150,
		IncendiaryRadiusHeated = 0,
		MaxAge = 60,
		EMPSensitivity = 0,
		EMPMissileProbabilityOfCircling = 0.75,
		FlipSpriteFacingLeft = true,
		Gravity = 0,
		AntiAirHealth = 16,

		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = -90,
				Sprite = "sbflamecopterheli",
				Pivot = { 0, 0 },

				ChildrenInFront =
				{
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0 },
						Pivot = { 0, 0 },
						PivotOffset = { 0, 0 },
						Sprite = path .. "/weapons/sbhelicopter/firewing",
					},
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0 },
						Pivot = { 0, 0 },
						PivotOffset = { 0, 0 },
						Sprite = "sbhelicopterrotor",
					},
				},
			}
		},

		TrailEffect = path .. "/effects/rotorloop.lua",

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
				["default"] = sbflamecopterstop,
			},
			Deflect =
			{
				["default"] = sbflamecopterstop,
			},
			Age =
			{
				t1500 = sbflamecoptershot1,
				t1800 = sbflamecoptershot3,
				t2100 = sbflamecoptershot2,
				t2400 = sbflamecoptershot1,
				t3000 = sbflamecoptershot2,
				t3300 = sbflamecoptershot1,
				t3900 = sbflamecoptershot2,
				t4200 = sbflamecoptershot1,
				t4800 = sbflamecoptershot2,
				t5100 = sbflamecoptershot1,
				t5700 = sbflamecoptershot2,
				t6000 = sbflamecoptershot1,
				t6600 = sbflamecoptershot2,
				t6900 = sbflamecoptershot1,
				t7200 = sbflamecoptershot3,
				t7500 = sbflamecoptershot2,
				t7800 = sbflamecoptershot1,
				t8400 = sbflamecoptershot2,
				t8700 = sbflamecoptershot1,
				t9300 = sbflamecoptershot2,
				t9600 = sbflamecoptershot1,
				t10200 = sbflamecoptershot2,
				t10500 = sbflamecoptershot1,
				t11100 = sbflamecoptershot2,
				t11300 = sbflamecoptershot2,
				t11500 = sbflamecoptershot1,
				t12100 = sbflamecoptershot2,
				t12400 = sbflamecoptershot1,
				t13000 = sbflamecoptershot2,
				t13300 = sbflamecoptershot1,
				t13900 = sbflamecoptershot2,
				t14200 = sbflamecoptershot1,
				t14800 = sbflamecoptershot2,
				t15100 = sbflamecoptershot1,
				t15700 = sbflamecoptershot2,
				t16000 = sbflamecoptershot1,
				t16600 = sbflamecoptershot2,
				t16900 = sbflamecoptershot1,
				t17200 = sbflamecoptershot3,
				t17500 = sbflamecoptershot2,
				t17800 = sbflamecoptershot1,
				t18400 = sbflamecoptershot2,
				t18700 = sbflamecoptershot1,
				t19300 = sbflamecoptershot2,
				t19600 = sbflamecoptershot1,
				t19900 = sbflamecoptershot3,
				
			},
		},
})
table.insert(Projectiles,
{
		SaveName = "sbflamecopter-still",

		ProjectileType = "missile",
		DrawBlurredProjectile = false,
		ProjectileMass = 20.0,
		ProjectileDrag = 64,
		DisableShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 20,
		Impact = 70000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 100.0,
		ProjectileSplashDamage = 45.0,
		ProjectileSplashDamageMaxRadius = 100.0,
		ProjectileSplashMaxForce = 100000,
		SpeedIndicatorFactor = 0.05,
		ProjectileIncendiary = true,
		IncendiaryRadius = 150,
		IncendiaryRadiusHeated = 0,
		MaxAge = 30,
		EMPSensitivity = 0,
		EMPMissileProbabilityOfCircling = 0.75,
		FlipSpriteFacingLeft = true,
		Gravity = 0,

		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = -90,
				Sprite = "sbflamecopterheli",
				Pivot = { 0, 0 },

				ChildrenInFront =
				{
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0 },
						Pivot = { 0, 0 },
						PivotOffset = { 0, 0 },
						Sprite = path .. "/weapons/sbhelicopter/firewing",
					},
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0 },
						Pivot = { 0, 0 },
						PivotOffset = { 0, 0 },
						Sprite = "sbhelicopterrotor",
					},
				},
			}
		},

		TrailEffect = path .. "/effects/rotorloop.lua",

		Missile =
		{
			ThrustAngleExtent = 10,
			ErraticAngleExtentStdDev = 2.2,
			MaxSteerPerSecond = 50,
			MaxSteerPerSecondErratic = 100,
			ErraticAnglePeriodMean = 0.5,
			ErraticAnglePeriodStdDev = 0.1,
			LaunchThrust = 0.1,
			RocketThrust = 0.1,
			CruiseTargetDistance = 2000,
			CruiseTargetDuration = .5,
			TargetRearOffsetDistance = 100000,
			MinTargetUpdateDistance = 2000,
		},

		Effects =
		{
			Impact =
			{
				["device"] = "effects/missile_structure_hit.lua",
				["antiair"] = "effects/missile_structure_hit.lua",
				["foundations"] = "effects/missile_ground_hit.lua",
				["rocks01"] = "effects/missile_ground_hit.lua",
				["shield"] = "effects/missile_structure_hit.lua",
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
				t1800 = sbflamecoptershot3,
				t2400 = sbflamecoptershot1,
				t2700 = sbflamecoptershot3,
				t3300 = sbflamecoptershot1,
				t3600 = sbflamecoptershot3,
				t4200 = sbflamecoptershot1,
				t4500 = sbflamecoptershot3,
				t5100 = sbflamecoptershot1,
				t5400 = sbflamecoptershot3,
				t6000 = sbflamecoptershot1,
				t6300 = sbflamecoptershot3,
				t6900 = sbflamecoptershot1,
				t7200 = sbflamecoptershot3,
				t7800 = sbflamecoptershot1,
				t8100 = sbflamecoptershot3,
				t8700 = sbflamecoptershot1,
				t9000 = sbflamecoptershot3,
				t9600 = sbflamecoptershot1,
				t9900 = sbflamecoptershot3,
				t11000 = sbflamecoptershot3,
				t12000 = sbflamecoptersuicide,
			},
		},
})
table.insert(Projectiles,
{
		SaveName = "sbflamecopter-suicide",

		ProjectileType = "missile",
		DrawBlurredProjectile = false,
		ProjectileMass = 20.0,
		ProjectileDrag = 64,
		DisableShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 20,
		Impact = 70000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 400.0,
		ProjectileSplashDamage = 65.0,
		ProjectileSplashDamageMaxRadius = 170.0,
		ProjectileSplashMaxForce = 10000,
		SpeedIndicatorFactor = 0.05,
		ProjectileIncendiary = true,
		IncendiaryRadius = 150,
		IncendiaryRadiusHeated = 0,
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
				Angle = -90,
				Sprite = "sbflamecopterheli",
				Pivot = { 0, 0 },

				ChildrenInFront =
				{
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0 },
						Pivot = { 0, 0 },
						PivotOffset = { 0, 0 },
						Sprite = path .. "/weapons/sbhelicopter/firewing",
					},
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0 },
						Pivot = { 0, 0 },
						PivotOffset = { 0, 0 },
						Sprite = "sbhelicopterrotor",
					},
				},
			}
		},

		TrailEffect = path .. "/effects/rotorloop.lua",

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
				["default"] = "effects/missile_structure_hit.lua",
			},
		},
})
sbspookcopterstop = { Projectile = { Count = 1, Type = "sbspookcopter-still", StdDev = 0.0 }, Offset = -1000, Terminate = true, }
sbspookcoptersuicide = { Projectile = { Count = 1, Type = "sbspookcopter-suicide", StdDev = 0.0 }, Offset = 0, Terminate = true, }
sbspookcoptershot1 = { Effect = path .. "/effects/launchsmall.lua", Projectile = { Count = 4, Type = "sbflames", Speed = 6000, StdDev = 0.09 }, Splash = false, Terminate = false, }
sbspookcoptershot2 = { Effect = path .. "/effects/launchsmall.lua", Projectile = { Count = 2, Type = "sbflames", Speed = 10000, StdDev = 0.06 }, Splash = false, Terminate = false, }
sbspookcoptershot3 = { Effect = path .. "/effects/launchsmall.lua", Projectile = { Count = 10, Type = "sbflames", Speed = 4500, StdDev = 0.25 }, Splash = false, Terminate = false, }
table.insert(Projectiles,
{
		SaveName = "sbspookcopter",

		ProjectileType = "missile",
		DrawBlurredProjectile = false,
		ProjectileMass = 20.0,
		ProjectileDrag = 64,
		CollisionLookaheadDist = 1000,
		DisableShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 20,
		Impact = 70000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 1.0,
		ProjectileSplashDamage = 1.0,
		ProjectileSplashDamageMaxRadius = 1.0,
		ProjectileSplashMaxForce = 1,
		SpeedIndicatorFactor = 0.05,
		ProjectileIncendiary = false,
		IncendiaryRadius = 150,
		IncendiaryRadiusHeated = 0,
		MaxAge = 60,
		EMPSensitivity = 0,
		EMPMissileProbabilityOfCircling = 0.75,
		FlipSpriteFacingLeft = true,
		Gravity = 0,
		AntiAirHealth = 16,

		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = -90,
				Sprite = path .. "/effects/media/blank.png",
				Pivot = { 0, 0 },
			}
		},

		TrailEffect = path .. "/effects/empty.lua",

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
				["default"] = sbspookcopterstop,
			},
			Deflect =
			{
				["default"] = sbspookcopterstop,
			},
			Age =
			{
				
			},
		},
})
table.insert(Projectiles,
{
		SaveName = "sbspookcopter-still",

		ProjectileType = "missile",
		DrawBlurredProjectile = false,
		ProjectileMass = 20.0,
		ProjectileDrag = 64,
		DisableShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 20,
		Impact = 70000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 100.0,
		ProjectileSplashDamage = 45.0,
		ProjectileSplashDamageMaxRadius = 100.0,
		ProjectileSplashMaxForce = 100000,
		SpeedIndicatorFactor = 0.05,
		ProjectileIncendiary = true,
		IncendiaryRadius = 150,
		IncendiaryRadiusHeated = 0,
		MaxAge = 30,
		EMPSensitivity = 0,
		EMPMissileProbabilityOfCircling = 0.75,
		FlipSpriteFacingLeft = true,
		Gravity = 0,

		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = -90,
				Sprite = path .. "/effects/media/blank.png",
				Pivot = { 0, 0 },
			}
		},

		TrailEffect = path .. "/effects/empty.lua",

		Missile =
		{
			ThrustAngleExtent = 10,
			ErraticAngleExtentStdDev = 2.2,
			MaxSteerPerSecond = 50,
			MaxSteerPerSecondErratic = 100,
			ErraticAnglePeriodMean = 0.5,
			ErraticAnglePeriodStdDev = 0.1,
			LaunchThrust = 0.1,
			RocketThrust = 0.1,
			CruiseTargetDistance = 2000,
			CruiseTargetDuration = .5,
			TargetRearOffsetDistance = 100000,
			MinTargetUpdateDistance = 2000,
		},

		Effects =
		{
			Impact =
			{
				["device"] = "effects/missile_structure_hit.lua",
				["antiair"] = "effects/missile_structure_hit.lua",
				["foundations"] = "effects/missile_ground_hit.lua",
				["rocks01"] = "effects/missile_ground_hit.lua",
				["shield"] = "effects/missile_structure_hit.lua",
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
				t2600 = sbsnipercoptershot3,
				t2750 = sbsnipercoptershot1,
				t2825 = sbsnipercoptershot2,
				t3000 = sbsnipercoptershot1,
				t3250 = sbsnipercoptershot1,
				t3275 = sbsnipercoptershot2,
				t3325 = sbsnipercoptershot3,
				t3500 = sbsnipercoptershot1,
				t3600 = sbsnipercoptershot2,
				t3750 = sbsnipercoptershot1,
				t4000 = sbsnipercoptershot1,
				t4100 = sbsnipercoptershot2,
				t4250 = sbsnipercoptershot1,
				t4300 = sbsnipercoptershot2,
				t4500 = sbsnipercoptershot1,
				t4700 = sbsnipercoptershot3,
				t4750 = sbsnipercoptershot1,
				t5000 = sbsnipercoptershot2,
				t6000 = sbseepcoptershot3,
				t7000 = sbspookcoptersuicide,
			},
		},
})
table.insert(Projectiles,
{
		SaveName = "sbspookcopter-suicide",

		ProjectileType = "missile",
		DrawBlurredProjectile = false,
		ProjectileMass = 20.0,
		ProjectileDrag = 64,
		DisableShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 20,
		Impact = 70000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 400.0,
		ProjectileSplashDamage = 85.0,
		ProjectileSplashDamageMaxRadius = 170.0,
		ProjectileSplashMaxForce = 10000,
		SpeedIndicatorFactor = 0.05,
		ProjectileIncendiary = true,
		IncendiaryRadius = 150,
		IncendiaryRadiusHeated = 0,
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
				Angle = -90,
				Sprite = path .. "/effects/media/blank.png",
				Pivot = { 0, 0 },
			}
		},

		TrailEffect = path .. "/effects/empty.lua",

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
				["default"] = "effects/missile_structure_hit.lua",
			},
		},
})
--shockcopter
sbshockcopterstop = { Projectile = { Count = 1, Type = "sbshockcopter-still", StdDev = 0.0 }, Offset = -450, Splash = false, Terminate = true, }
sbshockcoptersuicide = { Projectile = { Count = 1, Type = "sbshockcopter-suicide", StdDev = 0.0 }, Offset = 0, Terminate = true, }
sbshockcoptershot1 = { Effect = path .. "/effects/empty.lua", Projectile = { Count = 1, Type = "sbshockbarrel2", StdDev = 0.08 }, Splash = false, Terminate = false, }
sbshockcoptershot2 = { Effect = path .. "/effects/empty.lua", Projectile = { Count = 1, Type = "sbshockbarrel", StdDev = 0.00 }, Splash = false, Terminate = false, }
sbshockcoptershot4 = { Effect = path .. "/effects/empty.lua", Projectile = { Count = 3, Type = "sbshockcopter", StdDev = 0.00 }, Splash = false, Terminate = false, }
sbshockhelilaser = { Effect = path .. "/effects/shockhelilaser.lua", Projectile = { Count = 1, Type = "shockhelilaser", Speed = 14000, StdDev = 0.06 }, Splash = false, Terminate = false, }
table.insert(Projectiles,
{
		SaveName = "sbshockcopter",

		ProjectileType = "missile",
		DrawBlurredProjectile = false,
		ProjectileMass = 20.0,
		ProjectileDrag = 64,
		CollisionLookaheadDist = 450,
		DisableShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 20,
		Impact = 70000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 1.0,
		ProjectileSplashDamage = 1.0,
		ProjectileSplashDamageMaxRadius = 1.0,
		ProjectileSplashMaxForce = 1,
		SpeedIndicatorFactor = 0.05,
		ProjectileIncendiary = false,
		IncendiaryRadius = 150,
		IncendiaryRadiusHeated = 0,
		MaxAge = 60,
		EMPSensitivity = 4,
		EMPMissileProbabilityOfCircling = 0.75,
		FlipSpriteFacingLeft = true,
		Gravity = 0,
		AntiAirHealth = 16,

		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = -90,
				Sprite = path .. "/weapons/sbhelicopter/heli",
				Pivot = { 0, 0 },

				ChildrenInFront =
				{
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0 },
						Pivot = { 0, 0 },
						PivotOffset = { 0, 0 },
						Sprite = path .. "/weapons/sbhelicopter/shockwing",
					},
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0 },
						Pivot = { 0, 0 },
						PivotOffset = { 0, 0 },
						Sprite = "sbhelicopterrotor",
					},
				},
			}
		},

		TrailEffect = path .. "/effects/rotorloop.lua",

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
				["default"] = sbshockcopterstop,
			},
			Deflect =
			{
				["default"] = sbshockcopterstop,
			},
			Age =
			{	
				t2000 = sbshockhelilaser,
				t3000 = sbshockhelilaser,
				t4000 = sbshockcoptershot2,
				t4010 = sbshockhelilaser,
				t4500 = sbshockcoptershot2,
				t5000 = sbshockcoptershot2,
				t5010 = sbshockhelilaser,
				t5500 = sbshockcoptershot2,	
				t6500 = sbshockcoptershot2,
				t6010 = sbshockcoptershot2,
				t6020 = sbshockhelilaser,
				t7000 = sbshockcoptershot2,
				t7010 = sbshockhelilaser,
				t7500 = sbshockcoptershot2,
				t8000 = sbshockcoptershot2,
				t8000 = sbshockhelilaser,
				t8500 = sbshockcoptershot2,	
				t9000 = sbshockhelilaser,
				t9010 = sbshockcoptershot2,
				t9500 = sbshockcoptershot2,
				t10000 = sbshockcoptershot2,
				t10010 = sbshockhelilaser,
				t10510 = sbshockcoptershot2,
				t11000 = sbshockcoptershot2,
				t11010 = sbshockhelilaser,
				t11500 = sbshockcoptershot2,
				t11990 = sbshockcoptershot2,
				t12010 = sbshockhelilaser,
				t12500 = sbshockcoptershot2,
				t13000 = sbshockcoptershot2,
				t13010 = sbshockhelilaser,
				t13500 = sbshockcoptershot2,
				t14000 = sbshockcoptershot2,
				t14010 = sbshockhelilaser,
				t14500 = sbshockcoptershot2,
				t15000 = sbshockcoptershot2,
				t15010 = sbshockhelilaser,
				t15500 = sbshockcoptershot2,
				t16000 = sbshockcoptershot2,
				t16010 = sbshockhelilaser,
				t16500 = sbshockcoptershot2,
				t17000 = sbshockcoptershot2,
				t17010 = sbshockhelilaser,
				t17500 = sbshockcoptershot2,
				t18000 = sbshockcoptershot2,
				t18010 = sbshockhelilaser,
				t18500 = sbshockcoptershot2,
				t19000 = sbshockcoptershot2,
				t19010 = sbshockhelilaser,
				t19500 = sbshockcoptershot2,
				t20000 = sbshockcoptershot2,
				t20010 = sbshockhelilaser,
			},
		},
})
table.insert(Projectiles,
{
		SaveName = "sbshockcopter-still",

		ProjectileType = "missile",
		DrawBlurredProjectile = false,
		ProjectileMass = 20.0,
		ProjectileDrag = 64,
		DisableShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 20,
		Impact = 70000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 100.0,
		ProjectileSplashDamage = 45.0,
		ProjectileSplashDamageMaxRadius = 100.0,
		ProjectileSplashMaxForce = 100000,
		SpeedIndicatorFactor = 0.05,
		ProjectileIncendiary = true,
		IncendiaryRadius = 150,
		IncendiaryRadiusHeated = 0,
		MaxAge = 20,
		EMPSensitivity = 4,
		EMPMissileProbabilityOfCircling = 0.75,
		FlipSpriteFacingLeft = true,
		Gravity = 0,

		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = -90,
				Sprite = path .. "/weapons/sbhelicopter/heli",
				Pivot = { 0, 0 },

				ChildrenInFront =
				{
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0 },
						Pivot = { 0, 0 },
						PivotOffset = { 0, 0 },
						Sprite = path .. "/weapons/sbhelicopter/shockwing",
					},
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0 },
						Pivot = { 0, 0 },
						PivotOffset = { 0, 0 },
						Sprite = "sbhelicopterrotor",
					},
				},
			}
		},

		TrailEffect = path .. "/effects/rotorloop.lua",

		Missile =
		{
			ThrustAngleExtent = 10,
			ErraticAngleExtentStdDev = 2.2,
			MaxSteerPerSecond = 50,
			MaxSteerPerSecondErratic = 100,
			ErraticAnglePeriodMean = 0.5,
			ErraticAnglePeriodStdDev = 0.1,
			LaunchThrust = 0.1,
			RocketThrust = 0.1,
			CruiseTargetDistance = 2000,
			CruiseTargetDuration = .5,
			TargetRearOffsetDistance = 100000,
			MinTargetUpdateDistance = 2000,
		},

		Effects =
		{
			Impact =
			{
				["device"] = "effects/missile_structure_hit.lua",
				["antiair"] = "effects/missile_structure_hit.lua",
				["foundations"] = "effects/missile_ground_hit.lua",
				["rocks01"] = "effects/missile_ground_hit.lua",
				["shield"] = "effects/missile_structure_hit.lua",
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
				t0500 = sbshockcoptershot1,	
				t1000 = sbshockhelilaser,
				t1500 = sbshockcoptershot1,
				t2000 = sbshockhelilaser,
				t3000 = sbshockhelilaser,
				t3500 = sbshockcoptershot1,
				t4000 = sbshockhelilaser,
				t4500 = sbshockcoptershot1,
				t5000 = sbshockhelilaser,
				t6000 = sbshockcoptershot1,
				t6010 = sbshockhelilaser,
				t7000 = sbshockcoptershot1,
				t7010 = sbshockhelilaser,
				t8000 = sbshockcoptershot1,
				t8010 = sbshockhelilaser,
				t8500 = sbshockcoptershot1,
				t9000 = sbshockhelilaser,
				t9500 = sbshockcoptershot1,
				t10000 = sbshockcoptershot1,
				t10010 = sbshockhelilaser,
				t10500 = sbshockcoptershot1,
				t10900 = sbshockcoptershot1,
				t10990 = sbshockhelilaser,
				t11000 = sbshockcoptersuicide,
			},
		},
})
table.insert(Projectiles,
{
		SaveName = "sbshockcopter-suicide",

		ProjectileType = "mortar",
		DrawBlurredProjectile = false,
		ProjectileMass = 20.0,
		ProjectileDrag = 4,
		DisableShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 20,
		Impact = 70000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 300.0,
		ProjectileSplashDamage = 35.0,
		ProjectileSplashDamageMaxRadius = 200.0,
		ProjectileSplashMaxForce = 10000,
		SpeedIndicatorFactor = 0.5,
		ProjectileIncendiary = true,
		IncendiaryRadius = 150,
		IncendiaryRadiusHeated = 0,
		MaxAge = 30,
		EMPSensitivity = 4,
		EMPMissileProbabilityOfCircling = 0.75,
		FlipSpriteFacingLeft = true,
		Gravity = 981,

		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = 180,
				Sprite = path .. "/weapons/sbhelicopter/heli",
				Pivot = { 0, 0 },

				ChildrenInFront =
				{
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0 },
						Pivot = { 0, 0 },
						PivotOffset = { 0, 0 },
						Sprite = path .. "/weapons/sbhelicopter/shockwing",
					},
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0 },
						Pivot = { 0, 0 },
						PivotOffset = { 0, 0 },
						Sprite = path .. "/weapons/sbhelicopter/rotor",
					},
				},
			}
		},

		TrailEffect = path .. "/effects/empty.lua",

		Effects =
		{
			Impact =
			{
				["antiair"] = "effects/missile_structure_hit.lua",
				["default"] = "effects/missile_structure_hit.lua",
			},
			Deflect =
			{
				["default"] = "effects/missile_structure_hit.lua",
			},
			Age =
			{
				
			},
		},
})
table.insert(Projectiles,
{
		SaveName = "sbshockbarrel",

		ProjectileType = "mortar",
		DrawBlurredProjectile = false,
		ProjectileMass = 20.0,
		ProjectileDrag = 0,
		ProjectileIncendiary = true,
		IgnitesBackgroundMaterials = false,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 4.0,
		ProjectileShootDownRadius = 15,
		Impact = 200000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 250.0,
		ProjectileSplashDamage = 100.0,
		ProjectileSplashDamageMaxRadius = 150.0,
		AntiAirDamage = 20,
		SpeedIndicatorFactor = 0.05,


		TrailEffect = "effects/swarm_trail.lua",

		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = 0,
				Sprite = path .. "/weapons/sbhelicopter/barrel.png",
			}
		},

		ParachuteDelayMean = 200,
		ParachuteDelayStdDev = 0.15,
		ParachuteDrag = 10.0,

		Effects =
		{
			Impact =
			{
				["default"] = "effects/barrel_explode.lua",
			},
			Deflect =
			{
				["armour"] = "effects/armor_ricochet.lua",
				["door"] = "effects/armor_ricochet.lua",
			},
		},
})
table.insert(Projectiles,
{
		SaveName = "sbshockbarrel2",

		ProjectileType = "mortar",
		DrawBlurredProjectile = false,
		ProjectileMass = 20.0,
		ProjectileDrag = 0,
		ProjectileIncendiary = true,
		IgnitesBackgroundMaterials = false,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 4.0,
		ProjectileShootDownRadius = 15,
		Impact = 200000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 30.0,
		ProjectileSplashDamage = 20.0,
		ProjectileSplashDamageMaxRadius = 100.0,
		AntiAirDamage = 20,
		SpeedIndicatorFactor = 0.05,


		TrailEffect = "effects/swarm_trail.lua",

		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = 0,
				Sprite = path .. "/weapons/sbhelicopter/barrel.png",
			}
		},

		ParachuteDelayMean = 200,
		ParachuteDelayStdDev = 0.15,
		ParachuteDrag = 10.0,

		Effects =
		{
			Impact =
			{
				["default"] = "effects/barrel_explode.lua",
			},
			Deflect =
			{
				["armour"] = "effects/armor_ricochet.lua",
				["door"] = "effects/armor_ricochet.lua",
			},
		},
})
--shotcopter
sbshotcopterstop = { Projectile = { Count = 1, Type = "sbshotcopter-still", StdDev = 0.0 }, Offset = -1000, Terminate = true, }
sbshotcoptersuicide = { Projectile = { Count = 1, Type = "sbshotcopter-suicide", StdDev = 0.0 }, Offset = 0, Terminate = true, }
sbshotcoptershot1 = { Effect = path .. "/effects/fire_sbminishotgun.lua", Projectile = { Count = 5, Type = "machinegun", Speed = 10000, StdDev = 0.08 }, Splash = false, Terminate = false, }
sbshotcoptershot2 = { Effect = path .. "/effects/fire_caliber50.lua", Projectile = { Count = 7, Type = "machinegun", Speed = 10000, StdDev = 0.08 }, Splash = false, Terminate = false, }
sbshotcoptershot3 = { Effect = "mods/weapon_pack/effects/fire_shotgun.lua", Projectile = { Count = 9, Type = "shotgun", Speed = 10000, StdDev = 0.08 }, Splash = false, Terminate = false, }
sbshotcoptershot4 = { Projectile = { Count = 7, Type = "machinegun", Speed = 10000, StdDev = 0.08 }, Splash = false, Terminate = false, }
sbshotcoptershot5 = { Effect = path .. "/effects/sb50caliberfun.lua", Splash = false, Terminate = false, }
table.insert(Projectiles,
{
		SaveName = "sbshotcopter",

		ProjectileType = "missile",
		DrawBlurredProjectile = false,
		ProjectileMass = 20.0,
		ProjectileDrag = 64,
		CollisionLookaheadDist = 1000,
		DisableShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 20,
		Impact = 70000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 1.0,
		ProjectileSplashDamage = 1.0,
		ProjectileSplashDamageMaxRadius = 1.0,
		ProjectileSplashMaxForce = 1,
		SpeedIndicatorFactor = 0.05,
		ProjectileIncendiary = false,
		IncendiaryRadius = 150,
		IncendiaryRadiusHeated = 0,
		MaxAge = 60,
		EMPSensitivity = 4,
		EMPMissileProbabilityOfCircling = 0.75,
		FlipSpriteFacingLeft = true,
		Gravity = 0,
		AntiAirHealth = 16,

		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = -90,
				Sprite = path .. "/weapons/sbhelicopter/heli",
				Pivot = { 0, 0 },

				ChildrenInFront =
				{
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0 },
						Pivot = { 0, 0 },
						PivotOffset = { 0, 0 },
						Sprite = path .. "/weapons/sbhelicopter/shotwing",
					},
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0 },
						Pivot = { 0, 0 },
						PivotOffset = { 0, 0 },
						Sprite = "sbhelicopterrotor",
					},
				},
			}
		},

		TrailEffect = path .. "/effects/rotorloop.lua",

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
				["default"] = sbshotcopterstop,
			},
			Deflect =
			{
				["default"] = sbshotcopterstop,
			},
			Age =
			{
				t1500 = sbshotcoptershot1,
				t1800 = sbshotcoptershot2,
				t2000 = sbshotcoptershot2,
				t2200 = sbshotcoptershot1,
				t2350 = sbshotcoptershot1,
				t2500 = sbshotcoptershot2,
				t2800 = sbshotcoptershot3,
				t3000 = sbshotcoptershot2,
				t3150 = sbshotcoptershot2,
				t3300 = sbshotcoptershot1,
				t3500 = sbshotcoptershot1,
				t3700 = sbshotcoptershot2,
				t4000 = sbshotcoptershot1,
				t4200 = sbshotcoptershot1,
				t4500 = sbshotcoptershot2,
				t4700 = sbshotcoptershot1,
				t4800 = sbshotcoptershot1,
				t5000 = sbshotcoptershot2,
				t5500 = sbshotcoptershot2,
				t5800 = sbshotcoptershot2,
				t6000 = sbshotcoptershot1,
				t6200 = sbshotcoptershot2,
				t6400 = sbshotcoptershot1,
				t6600 = sbshotcoptershot2,
				t6900 = sbshotcoptershot1,
				t7000 = sbshotcoptershot1,
				t7250 = sbshotcoptershot1,
				t7500 = sbshotcoptershot1,
				t7750 = sbshotcoptershot1,
				t8000 = sbshotcoptershot1,
				t8500 = sbshotcoptershot3,
				t20010 = sbshotcoptershot5,
				t20000 = sbshotcoptershot4,
				t20200 = sbshotcoptershot4,
				t20500 = sbshotcoptershot4,
				t20800 = sbshotcoptershot4,
				t21100 = sbshotcoptershot4,
				t21300 = sbshotcoptershot4,
				t22000 = sbshotcoptershot4,
				t22200 = sbshotcoptershot4,
				t22500 = sbshotcoptershot4,
				t22800 = sbshotcoptershot4,
				t23000 = sbshotcoptershot4,
				t23300 = sbshotcoptershot4,
				
				
				
				
				
			},
		},
})
table.insert(Projectiles,
{
		SaveName = "sbshotcopter-still",

		ProjectileType = "missile",
		DrawBlurredProjectile = false,
		ProjectileMass = 20.0,
		ProjectileDrag = 64,
		DisableShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 20,
		Impact = 70000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 100.0,
		ProjectileSplashDamage = 20.0,
		ProjectileSplashDamageMaxRadius = 100.0,
		ProjectileSplashMaxForce = 100000,
		SpeedIndicatorFactor = 0.05,
		ProjectileIncendiary = true,
		IncendiaryRadius = 150,
		IncendiaryRadiusHeated = 0,
		MaxAge = 20,
		EMPSensitivity = 4,
		EMPMissileProbabilityOfCircling = 0.75,
		FlipSpriteFacingLeft = true,
		Gravity = 0,

		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = -90,
				Sprite = path .. "/weapons/sbhelicopter/heli",
				Pivot = { 0, 0 },

				ChildrenInFront =
				{
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0 },
						Pivot = { 0, 0 },
						PivotOffset = { 0, 0 },
						Sprite = path .. "/weapons/sbhelicopter/shotwing",
					},
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0 },
						Pivot = { 0, 0 },
						PivotOffset = { 0, 0 },
						Sprite = "sbhelicopterrotor",
					},
				},
			}
		},

		TrailEffect = path .. "/effects/rotorloop.lua",

		Missile =
		{
			ThrustAngleExtent = 10,
			ErraticAngleExtentStdDev = 2.2,
			MaxSteerPerSecond = 50,
			MaxSteerPerSecondErratic = 100,
			ErraticAnglePeriodMean = 0.5,
			ErraticAnglePeriodStdDev = 0.1,
			LaunchThrust = 0.1,
			RocketThrust = 0.1,
			CruiseTargetDistance = 2000,
			CruiseTargetDuration = .5,
			TargetRearOffsetDistance = 100000,
			MinTargetUpdateDistance = 2000,
		},

		Effects =
		{
			Impact =
			{
				["device"] = "effects/missile_structure_hit.lua",
				["antiair"] = "effects/missile_structure_hit.lua",
				["foundations"] = "effects/missile_ground_hit.lua",
				["rocks01"] = "effects/missile_ground_hit.lua",
				["shield"] = "effects/missile_structure_hit.lua",
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
				t1500 = sbshotcoptershot1,
				t1800 = sbshotcoptershot2,
				t2000 = sbshotcoptershot2,
				t2200 = sbshotcoptershot1,
				t2350 = sbshotcoptershot1,
				t2500 = sbshotcoptershot2,
				t2800 = sbshotcoptershot3,
				t3000 = sbshotcoptershot2,
				t3150 = sbshotcoptershot2,
				t3300 = sbshotcoptershot1,
				t3500 = sbshotcoptershot1,
				t3700 = sbshotcoptershot2,
				t4000 = sbshotcoptershot1,
				t4200 = sbshotcoptershot1,
				t4500 = sbshotcoptershot2,
				t4700 = sbshotcoptershot1,
				t4800 = sbshotcoptershot1,
				t5000 = sbshotcoptershot2,
				t5500 = sbshotcoptershot2,
				t5800 = sbshotcoptershot2,
				t6000 = sbshotcoptershot1,
				t6200 = sbshotcoptershot2,
				t6400 = sbshotcoptershot1,
				t6600 = sbshotcoptershot2,
				t6900 = sbshotcoptershot1,
				t7000 = sbshotcoptershot1,
				t7250 = sbshotcoptershot1,
				t7500 = sbshotcoptershot1,
				t7750 = sbshotcoptershot1,
				t8000 = sbshotcoptershot1,
				t8500 = sbshotcoptershot3,
				t10000 = sbshotcoptersuicide,
			},
		},
})
table.insert(Projectiles,
{
		SaveName = "sbshotcopter-suicide",

		ProjectileType = "missile",
		DrawBlurredProjectile = false,
		ProjectileMass = 20.0,
		ProjectileDrag = 64,
		DisableShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 20,
		Impact = 70000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 120.0,
		ProjectileSplashDamage = 45.0,
		ProjectileSplashDamageMaxRadius = 200.0,
		ProjectileSplashMaxForce = 10000,
		SpeedIndicatorFactor = 0.05,
		ProjectileIncendiary = true,
		IncendiaryRadius = 150,
		IncendiaryRadiusHeated = 0,
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
				Angle = -90,
				Sprite = path .. "/weapons/sbhelicopter/heli",
				Pivot = { 0, 0 },

				ChildrenInFront =
				{
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0 },
						Pivot = { 0, 0 },
						PivotOffset = { 0, 0 },
						Sprite = path .. "/weapons/sbhelicopter/shotwing",
					},
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0 },
						Pivot = { 0, 0 },
						PivotOffset = { 0, 0 },
						Sprite = "sbhelicopterrotor",
					},
				},
			}
		},

		TrailEffect = path .. "/effects/rotorloop.lua",

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
				["default"] = "effects/missile_structure_hit.lua",
			},
		},
})
--warthog copter
sbwarthogcopterstop = { Projectile = { Count = 1, Type = "sbwarthogcopter-still", StdDev = 0.0 }, Offset = -1000, Terminate = true, }
sbwarthogcoptersuicide = { Projectile = { Count = 1, Type = "sbwarthogcopter-suicide", StdDev = 0.0 }, Offset = 0, Terminate = true, }
sbwarthogcoptershot1 = { Effect = path .."/effects/fire_periscope.lua", Projectile = { Count = 1, Type = "sbbigminigun", Speed = 7600, StdDev = 0.09 }, Splash = false, Terminate = false, }
sbwarthogcoptershot2 = { Effect = "mods/weapon_pack/effects/fire_20mmcannon.lua", Projectile = { Count = 1, Type = "cannon20mm", Speed = 6000, StdDev = 0.04 }, Splash = false, Terminate = false, }
sbwarthogcoptershot3 = { Effect = "effects/fire_cannon.lua", Projectile = { Count = 1, Type = "cannon", Speed = 6000, StdDev = 0.09 }, Splash = false, Terminate = false, }
sbwarthogcoptershot4 = { Effect = "effects/fire_cannon.lua", Projectile = { Count = 2, Type = "sbwarthogcopter", StdDev = 0.09 }, Splash = false, Terminate = false, }
table.insert(Projectiles,
{
		SaveName = "sbwarthogcopter",

		ProjectileType = "missile",
		DrawBlurredProjectile = false,
		ProjectileMass = 20.0,
		ProjectileDrag = 64,
		CollisionLookaheadDist = 1000,
		DisableShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 20,
		Impact = 70000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 1.0,
		ProjectileSplashDamage = 1.0,
		ProjectileSplashDamageMaxRadius = 1.0,
		ProjectileSplashMaxForce = 1,
		SpeedIndicatorFactor = 0.05,
		ProjectileIncendiary = false,
		IncendiaryRadius = 150,
		IncendiaryRadiusHeated = 0,
		MaxAge = 60,
		EMPSensitivity = 4,
		EMPMissileProbabilityOfCircling = 0.75,
		FlipSpriteFacingLeft = true,
		Gravity = 0,
		AntiAirHealth = 11,

		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = -90,
				Sprite = path .. "/weapons/sbhelicopter/heliwarthog",
				Pivot = { 0, 0 },

				ChildrenInFront =
				{
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0 },
						Pivot = { 0, 0 },
						PivotOffset = { 0, 0 },
						Sprite = path .. "/weapons/sbhelicopter/warthogwing",
					},
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0 },
						Pivot = { 0, 0 },
						PivotOffset = { 0, 0 },
						Sprite = "sbhelicopterrotor",
					},
				},
			}
		},

		TrailEffect = path .. "/effects/rotorloop.lua",

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
				["default"] = sbwarthogcopterstop,
			},
			Deflect =
			{
				["default"] = sbwarthogcopterstop,
			},
			Age =
			{
				t1900 = sbwarthogcoptershot3,
				t2001 = sbwarthogcoptershot2,
				t2351 = sbwarthogcoptershot2,	
				t2701 = sbwarthogcoptershot2,
				t3051 = sbwarthogcoptershot2,
				t3401 = sbwarthogcoptershot2,
				t3751 = sbwarthogcoptershot2,
				t4101 = sbwarthogcoptershot2,
				t4451 = sbwarthogcoptershot2,
				t4801 = sbwarthogcoptershot2,
				t5500 = sbwarthogcoptershot1,
				t6000 = sbwarthogcoptershot1,
				t6500 = sbwarthogcoptershot1,
				t7000 = sbwarthogcoptershot1,
				t7500 = sbwarthogcoptershot1,
				t8000 = sbwarthogcoptershot1,
				t9000 = sbwarthogcoptershot1,
				t9500 = sbwarthogcoptershot1,
				t10000 = sbwarthogcoptershot1,
				t10250 = sbwarthogcoptershot1,
				t10500 = sbwarthogcoptershot1,
				t10750 = sbwarthogcoptershot1,
				t11000 = sbwarthogcoptershot1,
				t11500 = sbwarthogcoptershot1,
				t12000 = sbwarthogcoptershot1,
				t12001 = sbwarthogcoptershot2,
				t12351 = sbwarthogcoptershot2,	
				t12500 = sbwarthogcoptershot1,
				t12701 = sbwarthogcoptershot2,
				t13000 = sbwarthogcoptershot1,
				t13051 = sbwarthogcoptershot2,
				t13401 = sbwarthogcoptershot2,
				t13751 = sbwarthogcoptershot2,
				t14101 = sbwarthogcoptershot2,
				t14451 = sbwarthogcoptershot2,
				t14500 = sbwarthogcoptershot1,
				t14801 = sbwarthogcoptershot2,	
				t15000 = sbwarthogcoptershot1,
				t16500 = sbwarthogcoptershot1,
				t17000 = sbwarthogcoptershot1,
				t20500 = sbwarthogcoptershot3,
			},
		},
})
table.insert(Projectiles,
{
		SaveName = "sbwarthogcopter-still",

		ProjectileType = "missile",
		DrawBlurredProjectile = false,
		ProjectileMass = 20.0,
		ProjectileDrag = 64,
		DisableShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 20,
		Impact = 70000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 100.0,
		ProjectileSplashDamage = 45.0,
		ProjectileSplashDamageMaxRadius = 100.0,
		ProjectileSplashMaxForce = 100000,
		SpeedIndicatorFactor = 0.05,
		ProjectileIncendiary = true,
		IncendiaryRadius = 150,
		IncendiaryRadiusHeated = 0,
		MaxAge = 20,
		EMPSensitivity = 4,
		EMPMissileProbabilityOfCircling = 0.75,
		FlipSpriteFacingLeft = true,
		Gravity = 0,

		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = -90,
				Sprite = path .. "/weapons/sbhelicopter/heliwarthog",
				Pivot = { 0, 0 },

				ChildrenInFront =
				{
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0 },
						Pivot = { 0, 0 },
						PivotOffset = { 0, 0 },
						Sprite = path .. "/weapons/sbhelicopter/warthogwing",
					},
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0 },
						Pivot = { 0, 0 },
						PivotOffset = { 0, 0 },
						Sprite = "sbhelicopterrotor",
					},
				},
			}
		},

		TrailEffect = path .. "/effects/rotorloop.lua",

		Missile =
		{
			ThrustAngleExtent = 10,
			ErraticAngleExtentStdDev = 2.2,
			MaxSteerPerSecond = 50,
			MaxSteerPerSecondErratic = 100,
			ErraticAnglePeriodMean = 0.5,
			ErraticAnglePeriodStdDev = 0.1,
			LaunchThrust = 0.1,
			RocketThrust = 0.1,
			CruiseTargetDistance = 2000,
			CruiseTargetDuration = .5,
			TargetRearOffsetDistance = 100000,
			MinTargetUpdateDistance = 2000,
		},

		Effects =
		{
			Impact =
			{
				["device"] = "effects/missile_structure_hit.lua",
				["antiair"] = "effects/missile_structure_hit.lua",
				["foundations"] = "effects/missile_ground_hit.lua",
				["rocks01"] = "effects/missile_ground_hit.lua",
				["shield"] = "effects/missile_structure_hit.lua",
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
				t1500 = sbwarthogcoptershot3,
				t3000 = sbwarthogcoptersuicide,
			},
		},
})
table.insert(Projectiles,
{
		SaveName = "sbwarthogcopter-suicide",

		ProjectileType = "missile",
		DrawBlurredProjectile = false,
		ProjectileMass = 20.0,
		ProjectileDrag = 64,
		DisableShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 20,
		Impact = 70000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 350.0,
		ProjectileSplashDamage = 85.0,
		ProjectileSplashDamageMaxRadius = 200.0,
		ProjectileSplashMaxForce = 10000,
		SpeedIndicatorFactor = 0.05,
		ProjectileIncendiary = true,
		IncendiaryRadius = 150,
		IncendiaryRadiusHeated = 0,
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
				Angle = -90,
				Sprite = path .. "/weapons/sbhelicopter/heliwarthog",
				Pivot = { 0, 0 },

				ChildrenInFront =
				{
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0 },
						Pivot = { 0, 0 },
						PivotOffset = { 0, 0 },
						Sprite = path .. "/weapons/sbhelicopter/warthogwing",
					},
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0 },
						Pivot = { 0, 0 },
						PivotOffset = { 0, 0 },
						Sprite = "sbhelicopterrotor",
					},
				},
			}
		},

		TrailEffect = path .. "/effects/rotorloop.lua",

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
				["default"] = "effects/missile_structure_hit.lua",
			},
			Age =
			{
			},
		},
})
table.insert(Projectiles,
{
	SaveName = "shockhelilaser",

	ProjectileType = "bullet",
	ProjectileSprite = path .. "/weapons/sbhelicopter/beam.png",
	ProjectileSpriteMipMap = false,
	DrawBlurredProjectile = true,
	ProjectileMass = 16,
	ProjectileDrag = 0,
	Impact = 20000,
	DisableShields = false,
	DeflectedByShields = true,
	PassesThroughMaterials = false,
	ExplodeOnTouch = false,
	ProjectileThickness = 5.0,
	ProjectileShootDownRadius = 60,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,
	ProjectileDamage = 100.0,
	SpeedIndicatorFactor = 0.25,

	Effects =
	{
		Impact =
		{
--			["device"] = "effects/impact_medium.lua",
--			["foundations"] = "effects/impact_medium.lua",
--			["rocks01"] = "effects/impact_heavy_ground.lua",
--			["bracing"] = "effects/impact_medium.lua",
--			["armour"] = "effects/impact_medium.lua",
--			["door"] = "effects/impact_medium.lua",
			["shield"] = "effects/energy_shield_ricochet.lua",
			["default"] = "effects/energy_shield_ricochet.lua",
		},	
		Deflect =
		{
			["armour"] = { Effect = "effects/armor_ricochet.lua", Splash = false },
			["door"] = { Effect = "effects/armor_ricochet.lua", Splash = false },
			["shield"] = { Effect = "effects/energy_shield_ricochet.lua", Splash = false },
		},
	},

	DamageMultiplier =
	{
		{ SaveName = "sandbags", Direct = 0.6, Splash = 0.6 },
	},
})

sbmooncoptershot1 = { Effect = "effects/fire_mortar.lua", Projectile = { Count = 3, Type = "sbtriplemortar3", Speed = 2000, StdDev = 0.3 }, Splash = false, Terminate = false, }
sbmooncoptershot2 = { Effect = "mods/weapon_pack/effects/emp_launch.lua", Projectile = { Count = 3, Type = "sbhelirocketemp", Speed = 1000, StdDev = 0.2 }, Splash = false, Terminate = false, }
table.insert(Projectiles,
{
		SaveName = "sbmooncopter",

		ProjectileType = "missile",
		DrawBlurredProjectile = false,
		ProjectileMass = 20.0,
		ProjectileDrag = 64,
		DisableShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 20,
		Impact = 70000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 1.0,
		ProjectileSplashDamage = 1.0,
		ProjectileSplashDamageMaxRadius = 1.0,
		ProjectileSplashMaxForce = 1,
		SpeedIndicatorFactor = 0.05,
		ProjectileIncendiary = false,
		IncendiaryRadius = 150,
		IncendiaryRadiusHeated = 0,
		MaxAge = 60,
		EMPSensitivity = 0,
		EMPMissileProbabilityOfCircling = 0.75,
		EMPRadius = 2400,
		EMPDuration = 8,
		FlipSpriteFacingLeft = true,
		AntiAirHealth = 11,
		Gravity = 0,

		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = -90,
				Sprite = "sbmooncopterheli",
				Pivot = { 0, 0 },

				ChildrenInFront =
				{
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0 },
						Pivot = { 0, 0 },
						PivotOffset = { 0, 0 },
						Sprite = path .. "/weapons/sbhelicopter/moonwing",
					},
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0 },
						Pivot = { 0, 0 },
						PivotOffset = { 0, 0 },
						Sprite = "sbhelicopterrotor",
					},
				},
			}
		},

		TrailEffect = path .. "/effects/rotorloop.lua",

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
				["antiair"] =  "mods/weapon_pack/effects/impact_emp.lua",
				["default"] =  path .. "/effects/sbmegaemp.lua",
			},
			Deflect =
			{
				["default"] =  "mods/weapon_pack/effects/impact_emp.lua",
			},
			Age =
			{
				t2500 = sbmooncoptershot2,
				t3000 = sbmooncoptershot1,
				t3500 = sbmooncoptershot1,
				t4000 = sbmooncoptershot1,
				t5000 = sbmooncoptershot2,
				t6000 = sbmooncoptershot1,
				t6500 = sbmooncoptershot1,
				t7000 = sbmooncoptershot2,
				t7400 = sbmooncoptershot2,
				t7800 = sbmooncoptershot1,
				t8000 = sbmooncoptershot1,
				t8500 = sbmooncoptershot2,
				t9000 = sbmooncoptershot1,
				t9500 = sbmooncoptershot1,
				t10000 = sbmooncoptershot1,
				t10500 = sbmooncoptershot2,
				t11000 = sbmooncoptershot1,
				t12500 = sbmooncoptershot1,
				t13000 = sbmooncoptershot2,
				t13400 = sbmooncoptershot2,
				t13800 = sbmooncoptershot1,
				t15000 = sbmooncoptershot1,
				t15333 = sbmooncoptershot2,
				t15666 = sbmooncoptershot1,
				t15999 = sbmooncoptershot2,
				t17000 = sbmooncoptershot1,
				t17500 = sbmooncoptershot1,
				t18000 = sbmooncoptershot2,
				t18500 = sbmooncoptershot2,
				t19000 = sbmooncoptershot1,
				t20000 = sbmooncoptershot1,
			},
		},
})