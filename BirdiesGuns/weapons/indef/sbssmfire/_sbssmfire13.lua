dofile(path .. "/weapons/sbssm/sbssmfire.lua")
Sprites={{Name = "sbssmfire-base13",States={Normal={Frames={{texture= path .. "/weapons/sbssm/basefire.tga",colour={0.0,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbssmfire-base13"
NodeEffects = {}
MinFireSpeed = 4000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 7900.86232911527
MetalFireCost = 161.79310807316037
Projectile = "_sbssmfire13"
