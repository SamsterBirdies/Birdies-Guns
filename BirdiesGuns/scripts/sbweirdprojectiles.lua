
table.insert(Projectiles,
{
		SaveName = "sbsplitmissile",

		ProjectileType = "missile",
		DrawBlurredProjectile = false,
		ProjectileMass = 4.0,
		ProjectileDrag = 64,
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
		ProjectileDamage = 50.0,
		ProjectileSplashDamage = 0.0,
		ProjectileSplashDamageMaxRadius = 150.0,
		ProjectileSplashMaxForce = 10000,
		SpeedIndicatorFactor = 0.05,
		MaxAge = 60.5,
		EMPSensitivity = 4,
		EMPMissileProbabilityOfCircling = 0.5,

		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = 0,
				Sprite = "objects/projectiles/missile/missileswarm.tga",

				ChildrenInFront =
				{
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0.5 },
						Pivot = { 0, 0.5 },
						PivotOffset = { 0, 0 },
						Sprite = "missile_swarm_tail",
					},
				},
			}
		},

		TrailEffect = "effects/swarm_trail.lua",

		Missile =
		{
			ThrustAngleExtent = 25,
			ErraticAngleExtentStdDev = 5,
			ErraticAngleExtentMax = 10,
			MaxSteerPerSecond = 150,
			MaxSteerPerSecondErratic = 200,
			ErraticAnglePeriodMean = 0.6,
			ErraticAnglePeriodStdDev = 0.15,
			ErraticThrust = 0.5,
			ErraticThrustMagneticField = 0.7,
			LaunchThrust = 105000,
			RocketThrust = 60000,
			CruiseTargetDistance = 2000,
			CruiseTargetDuration = .5,
			TargetRearOffsetDistance = 100000,
			MinTargetUpdateDistance = 2000,
		},

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
		},
})