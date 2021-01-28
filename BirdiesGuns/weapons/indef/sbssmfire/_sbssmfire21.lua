dofile(path .. "/weapons/sbssm/sbssmfire.lua")
Sprites={{Name = "sbssmfire-base21",States={Normal={Frames={{texture= path .. "/weapons/sbssm/basefire.tga",colour={0.5,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbssmfire-base21"
NodeEffects = {}
MinFireSpeed = 4000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 11479.633788237208
MetalFireCost = 225.4157117908837
Projectile = "_sbssmfire21"
