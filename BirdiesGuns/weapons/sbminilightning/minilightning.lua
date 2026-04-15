dofile('weapons/beamlaser.lua')
Sprites = {}
SelectionWidth = 65
SelectionHeight = 50
SelectionOffset = 
{
	10,
	-50.5
}
RecessionBox = 
{
	Offset = {
		-230,
		-60
	},
	Size = {
		200,
		25
	}
}
BeamDuration = 20
RoundsEachBurst = 240
RoundPeriod = 0.04
FireStdDev = 0.005
Projectile = "striker"
MinFireSpread = 8
MaxFireClamp = 0.8
FireEffect = path .. "/effects/fire_minilightning.lua"
CutoffEffects = true
Sprites = 
{
	{
		Name = "sbminilightning-spinning-barrel",
		InitialState = "Null",
		States =
		{
			Null = {},
			Flash =
			{
				Frames =
				{
					{ texture = path .. "/weapons/sbminilightning/lightningbarrel2" },
					{ texture = path .. "/weapons/sbminilightning/lightningbarrel3" },

					duration = 0.04,
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				--RandomPlayLength = 2,
				NextState = "Flash",
				
				LoopLength = 9999,
				LoopExitState = "Null",
			},
		},
	},
}
Root = 
{
	Sprite = "striker-base",
	ChildrenBehind = {
		{
			Sprite = path .. "/weapons/sbminilightning/lightninghead",
			Name = "Head",
			UserData = 50,
			ChildrenInFront = 
			{
				{
					Name = "MuzzleFlash",
					Angle = 0,
					Pivot = { 0.3, 0 },
					PivotOffset = { 0, 0 },
					Sprite = "sbminilightning-spinning-barrel",
					Visible = false,
				},
			},
			ChildrenBehind = {
				{
					Offset = {
						0,
						-48
					},
					Name = "Hardpoint0",
					Angle = 90,
					Pivot = {
						-0.15000000596046448,
						0.05000000074505806
					},
					PivotOffset = {
						0,
						0
					}
				},
				{
					Pivot = {
						0,
						0
					},
					Angle = 90,
					Name = "Chamber",
					PivotOffset = {
						0,
						0
					}
				}
			},
			Angle = 0,
			Pivot = {
				0,
				-0.20000000298023224
			},
			PivotOffset = {
				0.0,
				-0.059999998658895493
			}
		},
		{
			Name = "Icon",
			Pivot = {
				0,
				0.5
			}
		}
	},
	Name = "sbMiniStriker",
	UserData = 0,
	ChildrenInFront = {
		{
			Pivot = {
				-0.40000000596046448,
				0.05000000074505806
			},
			Angle = -45,
			Name = "ReloadEmitter",
			PivotOffset = {
				0,
				0
			}
		}
	},
	Angle = 0,
	Pivot = {
		-0.05000000074505806,
		-0.43000000715255737
	},
	PivotOffset = {
		0,
		0
	}
}