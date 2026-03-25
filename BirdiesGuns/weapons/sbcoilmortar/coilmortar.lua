dofile("weapons/mortar.lua")
Sprites = {}
FireEffect = nil
MinFireSpeed = 1600
MaxFireSpeed = 3600
MinFireRadius = 200
MaxFireRadius = 650
BarrelLength = 80
Root =
{
	Name = "Mortar",
	Angle = 0,
	Pivot = { 0, -0.55 },
	PivotOffset = { 0, 0 },
	Sprite = path .. "/weapons/sbcoilmortar/base.png",
	UserData = 0,
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = {-0.26171875, -0.07421875},
			PivotOffset = {0.184375, -0.1875},
			Sprite =  path .. "/weapons/sbcoilmortar/coilmortar.png",
			UserData = 50,

			ChildrenInFront =
			{
				{
					Name = "Hardpoint0",
					Angle = 90,
--					Pivot = { 0.5, 0 },
					Pivot = {-0.171875, 0.09375},
					PivotOffset = { 0, 0 },
				},
				{
					Name = "Chamber",
					Angle = 0,
					Pivot = {-0.171875, 0.09375},
					PivotOffset = { 0, 0 },
				},
			},
		},
	},
}