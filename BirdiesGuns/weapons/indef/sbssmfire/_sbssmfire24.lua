dofile(path .. "/weapons/sbssm/sbssmfire.lua")
Sprites={{Name = "sbssmfire-base24",States={Normal={Frames={{texture= path .. "/weapons/sbssm/basefire.tga",colour={0.5,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbssmfire-base24"
NodeEffects = {}
MinFireSpeed = 4000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 12940.329090479445
MetalFireCost = 251.38362827519012
Projectile = "_sbssmfire24"
