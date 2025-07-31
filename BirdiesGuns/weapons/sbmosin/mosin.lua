dofile("weapons/snipertower.lua")
ReloadTime = 2
--[[ReloadTime = 1.8
ReloadBank =
{
	Max = 5,
	ReloadTime = 0.8,
	BaseMult = 1,
	IndexMult = 0,
	EnergyMult = 1,
	MetalMult = 1,
}]]
ReloadEffectOffset = -0.4
Recoil = 100000
Projectile = "sbmosin"
FireEffect = path .. "/effects/fire_mosin.lua"
FireEndEffect = "mods/sbBGsoundbank/effects/reload_mosin2"
ReloadEffect = "mods/sbBGsoundbank/effects/reload_mosin3"
--ReloadEffect = path .. "/effects/reload_mosin.lua"
ShellEffect = path .. "/effects/shell_mosin.lua"
RoundPeriod = 1
RoundsEachBurst = 5
RetriggerFireEffect = true
ReloadTimeIncludesBurst = false
BarrelRecoilLimit = -0.01
BarrelRecoilSpeed = -3
BarrelReturnForce = 0.5

Sprites = 
{
	{
		Name = "sbmosin-arm",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbmosin/Sniper-ReloadAnim01.dds" }, mipmap = true, }, },
			Idle = Normal,
			Firing =
			{
				Frames =
				{
					{ texture =  path .. "/weapons/sbmosin/Sniper-ReloadAnim01.dds" },
					{ texture =  path .. "/weapons/sbmosin/Sniper-ReloadAnim02.dds" },
					{ texture =  path .. "/weapons/sbmosin/Sniper-ReloadAnim03.dds" },
					{ texture =  path .. "/weapons/sbmosin/Sniper-ReloadAnim04.dds" },
					{ texture =  path .. "/weapons/sbmosin/Sniper-ReloadAnim05.dds" },
					{ texture =  path .. "/weapons/sbmosin/Sniper-ReloadAnim06.dds" },
					{ texture =  path .. "/weapons/sbmosin/Sniper-ReloadAnim07.dds" },
					{ texture =  path .. "/weapons/sbmosin/Sniper-ReloadAnim08.dds" },
					{ texture =  path .. "/weapons/sbmosin/Sniper-ReloadAnim09.dds" },
					{ texture =  path .. "/weapons/sbmosin/Sniper-ReloadAnim10.dds" },
					{ texture =  path .. "/weapons/sbmosin/Sniper-ReloadAnim11.dds" },
					{ texture =  path .. "/weapons/sbmosin/Sniper-ReloadAnim12.dds" },
					{ texture =  path .. "/weapons/sbmosin/Sniper-ReloadAnim13.dds" },
					{ texture =  path .. "/weapons/sbmosin/Sniper-ReloadAnim14.dds" },
					{ texture =  path .. "/weapons/sbmosin/Sniper-ReloadAnim15.dds" },
					{ texture =  path .. "/weapons/sbmosin/Sniper-ReloadAnim16.dds" },
					{ texture =  path .. "/weapons/sbmosin/Sniper-ReloadAnim17.dds" },
					{ texture =  path .. "/weapons/sbmosin/Sniper-ReloadAnim18.dds" },
					{ texture =  path .. "/weapons/sbmosin/Sniper-ReloadAnim19.dds" },
					{ texture =  path .. "/weapons/sbmosin/Sniper-ReloadAnim01.dds", duration = 0.24 },

					duration = 0.04,
					mipmap = true,
				},
				--[[NextState = "Firing",
				
				LoopLength = 5,
				LoopExitState = "Reload",]]
			},
			Reload =
			{
				Frames =
				{
					{ texture =  path .. "/weapons/sbmosin/Sniper-ReloadAnim01.dds" },
					{ texture =  path .. "/weapons/sbmosin/Sniper-ReloadAnim02.dds" },
					{ texture =  path .. "/weapons/sbmosin/Sniper-ReloadAnim03.dds" },
					{ texture =  path .. "/weapons/sbmosin/Sniper-ReloadAnim04.dds" },
					{ texture =  path .. "/weapons/sbmosin/Sniper-ReloadAnim05.dds" },
					{ texture =  path .. "/weapons/sbmosin/Sniper-ReloadAnim06.dds" },
					{ texture =  path .. "/weapons/sbmosin/Sniper-ReloadAnim07.dds" },
					{ texture =  path .. "/weapons/sbmosin/Sniper-ReloadAnim08.dds" },
					{ texture =  path .. "/weapons/sbmosin/Sniper-ReloadAnim09.dds" },
					{ texture =  path .. "/weapons/sbmosin/Sniper-ReloadAnim10.dds", duration = 120 },
					mipmap = true,
					duration = 0.04,
				},
			},
			ReloadEnd =
			{
				Frames =
				{
					{ texture =  path .. "/weapons/sbmosin/Sniper-ReloadAnim10.dds" },
					{ texture =  path .. "/weapons/sbmosin/Sniper-ReloadAnim11.dds" },
					{ texture =  path .. "/weapons/sbmosin/Sniper-ReloadAnim12.dds" },
					{ texture =  path .. "/weapons/sbmosin/Sniper-ReloadAnim13.dds" },
					{ texture =  path .. "/weapons/sbmosin/Sniper-ReloadAnim14.dds" },
					{ texture =  path .. "/weapons/sbmosin/Sniper-ReloadAnim15.dds" },
					{ texture =  path .. "/weapons/sbmosin/Sniper-ReloadAnim16.dds" },
					{ texture =  path .. "/weapons/sbmosin/Sniper-ReloadAnim17.dds" },
					{ texture =  path .. "/weapons/sbmosin/Sniper-ReloadAnim18.dds" },
					{ texture =  path .. "/weapons/sbmosin/Sniper-ReloadAnim19.dds" },
					mipmap = true,
					duration = 0.04,
				},
				NextState = "Normal",
			},
		},
	},
	{
		Name = "sbmosin-arm2",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbmosin/lhand.dds" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path .. "/weapons/sbmosin/lhand.dds", colour = {255,255,255,0}, duration = 0.8},
					{ texture =  path .. "/weapons/sbmosin/lhand1.dds", },
					{ texture =  path .. "/weapons/sbmosin/lhand2.dds", duration = 0.12},
					{ texture =  path .. "/weapons/sbmosin/lhand3.dds", },
					{ texture =  path .. "/weapons/sbmosin/lhand4.dds", duration = 0.12},
					{ texture =  path .. "/weapons/sbmosin/lhand.dds", duration = 0.24, colour = {255,255,255,0}},
					{ texture = path .. "/weapons/sbmosin/lhand.dds", duration = 120},
					mipmap = true,
					duration = 0.08,
				},
				NextState = "Normal",
			},
		},
	},
}
Root.Sprite = "mods/faction-Russia/weapons/snipertower/base"
Root.ChildrenInFront[1].Sprite = path .. "/weapons/sbmosin/barrel.png"
Root.ChildrenInFront[1].ChildrenInFront[1].Sprite = "sbmosin-arm"
Root =
{
	Name = "Sniper",
	Angle = 0,
	Pivot = { 0.25, -0.55 },
	PivotOffset = { 0, 0 },
	Sprite = "mods/faction-Russia/weapons/snipertower/base",
	UserData = 0,

	ChildrenInFront =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { -0.25, -0.1 },
			PivotOffset = { 0.25, 0.05 },
			Sprite =  path .. "/weapons/sbmosin/barrel_empty.png",
			UserData = 50,

			ChildrenInFront =
			{
				{
					Name = "Barrel",
					Angle = 0,
					Pivot = { -0.25, 0 },
					PivotOffset = { 0.25, 0 },
					Sprite =  path .. "/weapons/sbmosin/barrel.png",
					UserData = 50,
					ChildrenInFront =
					{
						{
							Name = "Arm",
							Angle = 0,
							Pivot = { -0.185, -0.08 },
							Sprite = "sbmosin-arm",
							PivotOffset = { 0, 0 },
							UserData = 100,
							Scale = 1.0,
						},
						{
							Name = "Arm2",
							Angle = 0,
							Pivot = {-0.003386, -0.072},
							Sprite = "sbmosin-arm2",
							PivotOffset = { 0, 0 },
							UserData = 100,
							Scale = 1.0,
						},
						{
							Name = "Hardpoint0",
							Angle = 90,
							Pivot = { -0.17, -0.15 },
							PivotOffset = { 0, 0 },
						},
						{
							Name = "LaserSight",
							Angle = 90,
							Pivot = { -0.04, -0.2 },
							PivotOffset = { 0, 0 },
						},
						{
							Name = "Chamber",
							Angle = 0,
							Pivot = {-0.09142212189616253, -0.13063063063063063},
							PivotOffset = { 0, 0 },
						},
					},
				},
			},
		},
	},
}