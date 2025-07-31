dofile("weapons/snipertower.lua")
ReloadTime = 0.8
ReloadEffectOffset = -.76
Recoil = 100000
Projectile = "sbmosin"
FireEffect = path .. "/effects/fire_mosin.lua"
ReloadEffect = path .. "/effects/reload_mosin.lua"
ShellEffect = path .. "/effects/shell_mosin.lua"

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
					Pivot = { 0, 0 },
					PivotOffset = { 0, 0 },
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
							Pivot = { -0.17, -0.15 },
							PivotOffset = { 0, 0 },
						},
					},
				},
			},
		},
	},
}