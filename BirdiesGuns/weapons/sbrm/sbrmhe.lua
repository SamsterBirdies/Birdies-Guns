dofile(path .. "/weapons/sbrm/sbrmemp.lua")

ConstructEffect = "effects/device_upgrade.lua"

Projectile = "sbrmhe"

EnergyFireCost = 4000.0
MetalFireCost = 60.0

Sprites =
{
	{
		Name = "sbrmhe-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbrm/basehe.tga" }, mipmap = true, }, },
			Normal_halloween = { Frames = { { texture = path .. "/seasonal/halloween/basehe.png" }, mipmap = true, }, EventTag = "_halloween" },
			NormalAsia_halloween = { Frames = { { texture = path .. "/seasonal/halloween/basehe.png" }, mipmap = true, }, EventTag = "_halloween" },
			NormalBPO_halloween = { Frames = { { texture = path .. "/seasonal/halloween/basehe.png" }, mipmap = true, }, EventTag = "_halloween" },
			NormalRussia_halloween = { Frames = { { texture = path .. "/seasonal/halloween/basehe.png" }, mipmap = true, }, EventTag = "_halloween" },
			NormalCF_halloween = { Frames = { { texture = path .. "/seasonal/halloween/basehe.png" }, mipmap = true, }, EventTag = "_halloween" },
		},
	},
}

Root.Sprite = "sbrmhe-base"