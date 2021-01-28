dofile(path .. "/weapons/sbssm/sbssmfire.lua")
Sprites={{Name = "sbssmfire-base40",States={Normal={Frames={{texture= path .. "/weapons/sbssm/basefire.tga",colour={0.7071067811865476,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbssmfire-base40"
NodeEffects = {}
MinFireSpeed = 4000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 21989.302892541644
MetalFireCost = 412.25427364518487
Projectile = "_sbssmfire40"
