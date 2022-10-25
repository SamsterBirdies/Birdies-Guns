-- fort wars device file

ConstructEffect = "effects/device_upgrade.lua"
CompleteEffect = "effects/device_complete.lua"
Scale = 1.0
SelectionWidth = 40.0
SelectionHeight = 40.0
SelectionOffset = { 0.0, -40.5 }
Mass = 60.0
HitPoints = 100.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 400.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "sbbigmetal-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/devices/sbbigmetal/base.tga" }, mipmap = true, }, },
		},
	},
	{
		Name = "sbbigmetal-head",
		States =
		{
			Normal = { Frames = { { texture = path .. "/devices/sbbigmetal/metal.tga" }, mipmap = true, }, },
		},
	},
}

Root =
{
	Name = "MetalStore",
	Angle = 0,
	Pivot = { 0, -0.55 },
	PivotOffset = { 0, 0 },
	Sprite = "sbbigmetal-base",

	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0, 0 },
			PivotOffset = { 0, 0 },
			Offset = { 0, -0.8 },
			Sprite = "sbbigmetal-head",
		},
	},
	ChildrenInFront =
	{
	},
}
