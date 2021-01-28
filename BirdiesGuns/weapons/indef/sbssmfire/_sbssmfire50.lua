dofile(path .. "/weapons/sbssm/sbssmfire.lua")
Sprites={{Name = "sbssmfire-base50",States={Normal={Frames={{texture= path .. "/weapons/sbssm/basefire.tga",colour={0.8660254037844386,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbssmfire-base50"
NodeEffects = {}
MinFireSpeed = 4000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 28897.030992197873
MetalFireCost = 535.0583287501844
Projectile = "_sbssmfire50"
