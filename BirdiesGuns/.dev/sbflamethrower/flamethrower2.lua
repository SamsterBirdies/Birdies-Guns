dofile(path .. "/weapons/sbflamethrower/sbflamethrower.lua")
Sprites = 
{
	{
		Name = "sbflamethrower-base2",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbflamethrower/base.tga" , colour = { 0.85, 0.80, 0.2, 0.0 },}, mipmap = true, }, },
			Idle = Normal,
		},
	},
}
FireStdDev = 0.0
FireStdDevAuto = 0.025
FireDelay = 0
Projectile = "sbflames2"
BarrelLength = 10
RoundsEachBurst = 200
FireEffect = nil
Root =
{
	Name = "Cannon",
	Angle = 0,
	Pivot = { 0, -0.56 },
	PivotOffset = { 0, 0 },
	Sprite = "sbflamethrower-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "subhead",
			Angle = 0,
			Pivot = { 0.0, 0.0 },
			PivotOffset = { 0.0, 0.0 },
			Sprite = "sbflamethrower-base2",
			UserData = 50,
			ChildrenBehind =
			{
				{
					Name = "Head",
					Angle = 0,
					Pivot = { 0.0, -0.0 },
					PivotOffset = { 0.1, -0.2 },
					Sprite = path .. "/weapons/sbflamethrower/head.tga",
					UserData = 50,
		
					ChildrenBehind =
					{
						{
							Name = "Barrel",
							Angle = 0,
							Pivot = { -0.515, 0.05},
							PivotOffset = { 0.5, 0 },
							Sprite = path .. "/weapons/sbflamethrower/barrel.tga",
							UserData = 100,
							
							ChildrenInFront =
							{
								{
									Name = "Hardpoint0",
									Angle = 90,
									Pivot = { 0.5, 0.015625},
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
		},
	},
}