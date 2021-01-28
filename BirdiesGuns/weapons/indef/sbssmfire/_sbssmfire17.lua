dofile(path .. "/weapons/sbssm/sbssmfire.lua")
Sprites={{Name = "sbssmfire-base17",States={Normal={Frames={{texture= path .. "/weapons/sbssm/basefire.tga",colour={0.5,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbssmfire-base17"
NodeEffects = {}
MinFireSpeed = 4000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 9634.779895166354
MetalFireCost = 192.61830924740184
Projectile = "_sbssmfire17"
