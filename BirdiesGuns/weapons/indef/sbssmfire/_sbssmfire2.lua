dofile(path .. "/weapons/sbssm/sbssmfire.lua")
Sprites={{Name = "sbssmfire-base2",States={Normal={Frames={{texture= path .. "/weapons/sbssm/basefire.tga",colour={0.0,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbssmfire-base2"
NodeEffects = {}
MinFireSpeed = 4000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 3651.5625
MetalFireCost = 86.25
Projectile = "_sbssmfire2"
