local sbTorpedo = FindWeapon("cannon")
if sbTorpedo then
	table.insert(Weapons, IndexOfWeapon("cannon"),
		InheritType(FindWeapon("cannon"),nil,
			{
				SaveName = "sbtorpedo",
				FileName = path .. "/weapons/sbtorpedo/sbtorpedo.lua",
				MetalCost = 700,
				EnergyCost = 4500,
				Prerequisite = "munitions",
				CompatibleGroupTypes = {},
			}
		)
	)
end
table.insert(Sprites,
{
	Name = "sbtorpedoswim",
			
	States =
	{
		Normal =  
		{  
			Frames =
			{
				{ texture = path .. "/weapons/sbtorpedo/projectile3.png" },
				{ texture = path .. "/weapons/sbtorpedo/projectile2.png" },
				{ texture = path .. "/weapons/sbtorpedo/projectile3.png" },
				{ texture = path .. "/weapons/sbtorpedo/projectile4.png" },
				
				duration = 0.05,
				mipmap = true,
			},
			NextState = "Normal",
		},
		
	},
}) 

local sbtorpedo = DeepCopy(FindProjectile("cannon"))
if sbtorpedo then
	sbtorpedo.SaveName = "sbtorpedo"
	sbtorpedo.MaxAgeUnderWater = 60
	sbtorpedo.UnderWaterFadeDuration = 60
	sbtorpedo.Gravity = 0
	sbtorpedo.ProjectileSprite = nil
	sbtorpedo.ExplodeOnTouch = true
	sbtorpedo.DrawBlurredProjectile = false
	sbtorpedo.Projectile =
	{
		Root =
		{
			Name = "Root",
			Angle = 0,
			Sprite = "sbtorpedoswim",
		}
	}
	table.insert(Projectiles, sbtorpedo)
end
