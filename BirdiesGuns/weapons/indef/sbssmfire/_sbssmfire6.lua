dofile(path .. "/weapons/sbssm/sbssmfire.lua")
Sprites={{Name = "sbssmfire-base6",States={Normal={Frames={{texture= path .. "/weapons/sbssm/basefire.tga",colour={0.0,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbssmfire-base6"
NodeEffects = {}
MinFireSpeed = 4000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 5113.609173987061
MetalFireCost = 112.24194087088108
Projectile = "_sbssmfire6"
