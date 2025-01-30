dofile("scripts/type.lua")

function MakeDrunkVersion(saveName)
	local projectile = FindProjectile(saveName)
	if not projectile then Log("Error: MakeDrunkVersion unable to find " .. saveName) return end
	-- don't create a drunk version of a drunk version
	if projectile.sbModifiedVersion then return end
	-- beam type projectiles can't be drunk
	if projectile.ProjectileType == "beam" then return end

	if not projectile.Effects then projectile.Effects = {} end
	if not projectile.Effects.Impact then projectile.Effects.Impact = {} end
	if not projectile.Effects.Age then projectile.Effects.Age = {} end
	
	if projectile.CollidesWithBeams == nil then 
		projectile.CollidesWithBeams = true
	end
	
	projectile.Effects.Impact["sbdrunklaser"] =
	{
		Splash = false,
		Terminate = true,
		KeepLifespan = true,
		PosT = 1,
		Offset = 0,
		Projectile = { Count = 1, Type = "drunk" .. saveName, StdDev = 0 }, 
	}
	
	local drunkProjectile = DeepCopy(projectile)
	drunkProjectile.SaveName = "drunk" .. saveName
	
	drunkProjectile.ProjectileType = "missile"
	-- to prevent creating drunk versions of already drunk projectiles
	drunkProjectile.sbModifiedVersion = true
	drunkProjectile.EMPSensitivity = 4
	drunkProjectile.EMPMissileProbabilityOfCircling = 1
	drunkProjectile.Gravity = 0
	if not drunkProjectile.Missile then
		drunkProjectile.ProjectileDrag = 64
		drunkProjectile.ProjectileMass = 5.0
		drunkProjectile.Missile =
		{
			ThrustAngleExtent = 25,
			ErraticAngleExtentStdDev = 3.5,
			MaxSteerPerSecond = 150,
			MaxSteerPerSecondErratic = 250,
			ErraticAnglePeriodMean = 0.5,
			ErraticAnglePeriodStdDev = 0.3,
			LaunchThrust = 105000,
			RocketThrust = 115000,
			RocketThrustChange = 18000,
			CruiseTargetDistance = 2000,
			CruiseTargetDuration = 0.5,
			TargetRearOffsetDistance = 100000,
			MinTargetUpdateDistance = 2000,
		}
	end
	--[[
	if drunkProjectile.ProjectileSprite
	and not drunkProjectile.Projectile then
		drunkProjectile.Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = 0,
				Sprite = drunkProjectile.ProjectileSprite,
			}
		}
		
		drunkProjectile.ProjectileSprite = nil
	end]]
	
	drunkProjectile.Effects.Age["t100"] =
	{
		Splash = false, Terminate = false,
		Projectile = { Count = 1, Type = "sbempghost" }
	}
	
	drunkProjectile.Effects.Impact["sbdrunklaser"] = { Splash = false, Terminate = false, }
	
	local sbDuplicatedDrunkCheck = FindProjectile(drunkProjectile.SaveName)
	if not sbDuplicatedDrunkCheck then
	table.insert(Projectiles, drunkProjectile)
	else
	--Log("Drunk projectile already exists! Abort drunk projectile creation")
	end
end

table.insert(Projectiles,
{
	SaveName = "sbdrunklaser",

	ProjectileType = "beam",
	ProjectileSprite = path .. "/weapons/sbdrunklaser/beam.png",
	ProjectileSpriteMipMap = true,
	DrawBlurredProjectile = false,
	ProjectileMass = 1.0,
	ProjectileDrag = 0.0,
	ProjectileIncendiary = false,
	IncendiaryRadius = 1,
	IncendiaryRadiusHeated = 0,
	IncendiaryOffset = 0,
	--IncendiaryHeatRate = 75,
	IgnitesBackgroundMaterials = false,
	IgnitesBackgroundMaterialsPassing = false,
	IgnitesBackgroundMaterialsPassingSource = false,
	DeflectedByShields = true,
	DeflectedByTerrain = false,
	ExplodeOnTouch = false,
	Impact = 1000,
	BeamScrollRate = -40,
	ProjectileDamage = 0,
	AntiAirDamage = 1, -- non-zero so damage can be multiplied
	MinPenetration = 1,
	SpeedIndicatorFactor = 0.05,
	ProjectileThickness = 30,

	Effects =
	{
		Impact =
		{
			["default"] = path .. "/effects/sbdrunklaser_hit.lua",
		},
		Deflect =
		{
			["armour"] = "mods/weapon_pack/effects/firebeam_hit.lua",
			["door"] = "mods/weapon_pack/effects/firebeam_hit.lua",
			["shield"] =  path .. "/effects/sbdrunklaser_hit.lua",
		},
	},

	DamageMultiplier =
	{
		{ SaveName = "reactor", Direct = 0, Splash = 0 },
	},
})

table.insert(Projectiles,
{
	SaveName = "sbempghost",

	ProjectileType = "mortar",
	ProjectileSpriteMipMap = false,
	DrawBlurredProjectile = false,
	ProjectileMass = 0.25,
	ProjectileDrag = 0,
	DeflectedByShields = false,
	DeflectedByTerrain = false,
	ExplodeOnTouch = false,
	PassesThroughMaterials = false,
	ProjectileThickness = 2.0,
	ProjectileShootDownRadius = 0.1,
	sbModifiedVersion = true,
	Impact = 1,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,
	ProjectileDamage = 0.0,
	ProjectileSplashDamage = 0.0,
	ProjectileSplashDamageMaxRadius = 0.0,
	ProjectileSplashMaxForce = 0,
	WeaponDamageBonus = 0.0,
	SpeedIndicatorFactor = 0.05,
	EMPRadius = 500,
	EMPDuration = 0.2,
	MaxAge = 0.1,
	
	Projectile =
	{
		Root =
		{
			Name = "Root",
			Angle = 0,
			Sprite = path .. "/effects/media/blank.png",
		},
	},

	Effects =
	{
		Impact =
		{
			["default"] = "effects/bracing_bullet_hit.lua",
		},
		Deflect =
		{
			["bracing"] = "effects/bracing_bullet_hit.lua",
			["backbracing"] = "effects/bracing_bullet_hit.lua",
			["armour"] = "effects/armor_bullet_ricochet.lua",
			["door"] = "effects/armor_bullet_ricochet.lua",
			["shield"] = "effects/energy_shield_ricochet.lua",
		},
		Age =
		{
			t1 = { Terminate = true },
		},
	},
})