dofile("weapons/cannon.lua")
Sprites = {}
SelectionWidth = 80
SelectionHeight = 40
SelectionOffset = {0, 45}
RecessionBox =
{
	Size = { 200, 25 },
	Offset = { -300, 70 },
}
MinFireSpeed = 1000
MaxFireSpeed = 1001
MaxFireAngle = 10
HitPoints = 250
CanFireUnderwater = true
Projectile = "sbtorpedo"
Root = 
{
	Name = "Base",
	Sprite = path .. "/weapons/sbtorpedo/base.png",
	Pivot = {0, 0.56},
	UserData = 0,
	ChildrenBehind =
	{
		{
			Name = "Head",
			Pivot = {-0.0265, 0.301},
			PivotOffset = {0.0399, 0.0065},
			Sprite = path .. "/weapons/sbtorpedo/head.png",
			UserData = 100,
			ChildrenBehind =
			{
				{
					Name = "Hardpoint0",
					Angle = 90,
					Pivot = {-0.05, 0},
					UserData = 100,
				}
			}
		},
		{
			Name = "Chamber",
			UserData = 100,
		},
	}
}