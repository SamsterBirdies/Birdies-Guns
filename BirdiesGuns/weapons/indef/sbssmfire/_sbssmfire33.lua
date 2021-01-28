dofile(path .. "/weapons/sbssm/sbssmfire.lua")
Sprites={{Name = "sbssmfire-base33",States={Normal={Frames={{texture= path .. "/weapons/sbssm/basefire.tga",colour={0.7071067811865476,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbssmfire-base33"
NodeEffects = {}
MinFireSpeed = 4000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 17753.090293452882
MetalFireCost = 336.94382743916236
Projectile = "_sbssmfire33"
