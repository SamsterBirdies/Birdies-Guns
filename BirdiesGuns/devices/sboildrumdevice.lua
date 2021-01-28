-- fort wars device file

ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
Scale = 1.0
SelectionWidth = 40.0
SelectionHeight = 25.0
SelectionOffset = { 0.0, -25.5 }
Mass = 40.0
HitPoints = 15.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
DeviceSplashDamage = 175
DeviceSplashDamageMaxRadius = 300
DeviceSplashDamageDelay = 0.25
IgnitePlatformOnDestruct = false
StructureSplashDamage = 250
StructureSplashDamageMaxRadius = 260
--IncendiaryRadius = 200
--IncendiraryRaduisHeated = 220
DestroyEffect = "effects/barrel_explode.lua"
Repairable = false

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "sboildrumdevice-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sboildrum/barrel.tga" }, mipmap = true, }, },
		},
	},
}

NodeEffects =
{
}

Root =
{
	Name = "Battery",
	Angle = 0,
	Pivot = { 0, -0.55 },
	PivotOffset = { 0, 0 },
	Sprite = "sboildrumdevice-base",
	
	ChildrenInFront =
	{
	},
}
