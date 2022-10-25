-- fort wars device file

ConstructEffect = "effects/device_upgrade.lua"
CompleteEffect = "effects/device_complete.lua"
Scale = 1.0
SelectionWidth = 40.0
SelectionHeight = 40.0
SelectionOffset = { 0.0, -40.5 }
Mass = 40.0
HitPoints = 100.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 3000.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
DeviceSplashDamage = 175
DeviceSplashDamageMaxRadius = 250
DeviceSplashDamageDelay = 0.2
IgnitePlatformOnDestruct = true
StructureSplashDamage = 60
StructureSplashDamageMaxRadius = 150
DestroyEffect = "effects/battery_explode.lua"

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "sbbigbattery-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/devices/sbbigbattery/base.tga" }, mipmap = true, }, },
		},
	},
}

NodeEffects =
{
	{
		NodeName = "Head",
		EffectPath = "effects/battery_ambient.lua",
	},
}

Root =
{
	Name = "Battery",
	Angle = 0,
	Pivot = { 0, -0.235 },
	PivotOffset = { 0, 0 },
	Sprite = "sbbigbattery-base",
	
	ChildrenInFront =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0, 0 },
			PivotOffset = { 0, 0 },
			Sprite = "battery_detail",
		},
	},
}
