-- fort wars weapon file

Scale = 1
SelectionWidth = 40.0
SelectionHeight = 40.0
SelectionOffset = { 0.0, -40.5 }
RecessionBox =
{
	Size = { 20, 25 },
	Offset = { -52.5, -40 },
}

WeaponMass = 40.0
HitPoints = 30.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0

FireEffect = path .. "/effects/release.lua"
ShellEffect = ""
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/machinegun_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_small.lua"
ReloadEffect = path .. "/effects/slingshot_reload.lua"
ReloadEffectOffset = -0.2
Projectile = "sbmolotov"
BarrelLength = 60.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
ReloadTime = 4.5
MinFireSpeed = 800.0
MaxFireSpeed = 2200.1
MinFireRadius = 500.0
MaxFireRadius = 1500.0
MaxFireClamp = 0.85
MinVisibility = 0.5
MaxVisibilityHeight = 500
MinFireAngle = -45
MaxFireAngle = 45
KickbackMean = 15
KickbackStdDev = 3
PanDuration = 0
FireStdDev = 0.00
FireStdDevAuto = 0.000
Recoil = 20000
EnergyFireCost = 325.0
MetalFireCost = 8
ShowFireAngle = true
ShowFireSpeed = true
RoundsEachBurst = 1
RoundPeriod = 0.15
BeamDuration = 0.05
ReloadFramePeriod = (ReloadTime + RoundsEachBurst*RoundPeriod)/12
AutofireCloseDoorTicks = 4*25

CanOverheat = false
HeatPeriod = 2
CoolPeriod = 5
CoolPeriodOverheated = 7

EagleEyeReloadBank = 
{
	Max = 3,
	ReloadTime = 2,
}

TargetIcon =
{
	Persistent = true,
	Texture = "ui/textures/mouse_target.tga",
	Width = 32,
	Height = 32,
}

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter



NodeEffects =
{
	{
		NodeName = "Hardpoint0",
		EffectPath = "effects/weapon_overheated.lua",
		Automatic = false,
	},
}
Sprites =
{
	{
		Name = "sbslingshot-reload",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbslingshot/pullfire.png" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path .. "/weapons/sbslingshot/release.png", duration = 4.5 },
					mipmap = true,
					duration = 4.5,
				},
				NextState = "Normal",
			},
		},
	},
	{
		Name = "sbslingshot-head",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbslingshot/head"}, mipmap = true, }, },
			Idle = Normal,
		},
	},
}

Root =
{
	Name = "Machinegun",
	Angle = 0,
	Pivot = { 0, -0.37 },
	PivotOffset = { 0, 0 },
	Sprite = "mg-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0, 0 },
			PivotOffset = { 0, 0 },
			Sprite = "sbslingshot-head",
			UserData = 50,

			ChildrenInFront =
			{
				{	
					Name = "Reload",
					Angle = 0,
					Pivot = { 0, 0 },
					PivotOffset = { 0, 0 },
					Sprite = "sbslingshot-reload",
					UserData = 100,
				},
				{
					Name = "Arm",
					Angle = 0,
					Pivot = { 0.09, 0.09 },
					Sprite = "mg-arm",
					PivotOffset = { 0, 0 },
					UserData = 50,
				},
				{
					Name = "Hardpoint0",
					Angle = 90,
					Pivot = { 0, -0.053 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "Chamber",
					Angle = 0,
					Pivot = { 0.165, -0.05 },
					PivotOffset = { 0, 0 },
				},
			},
		},
	},
	ChildrenInFront =
	{
		
	},
}
function sbApplyXmas()
	table.insert(Root.ChildrenBehind[1].ChildrenInFront,
	{
		Name = "xmashat",
		Scale = 0.5,
		Pivot = {-0.16, -0.145},
		Sprite = path .. "/seasonal/xmas/santahat.png",
		UserData = 100,
	})
end