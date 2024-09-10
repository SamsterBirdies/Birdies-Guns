dofile(path .. "/weapons/sbrm/sbrmemp.lua")

ConstructEffect = "effects/device_upgrade.lua"

Projectile = "sbrmfire"

EnergyFireCost = 2200.0
MetalFireCost = 30.0

Sprites =
{
	{
		Name = "sbrmfire-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbrm/basefire.tga" }, mipmap = true, }, },
			Normal_halloween = { Frames = { { texture = path .. "/seasonal/halloween/basefire.png" }, mipmap = true, }, EventTag = "_halloween" },
			Idle = Normal,
		},
	},
}
Root.Sprite = "sbrmfire-base"