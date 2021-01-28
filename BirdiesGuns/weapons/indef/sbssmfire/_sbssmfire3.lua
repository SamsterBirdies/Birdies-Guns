dofile(path .. "/weapons/sbssm/sbssmfire.lua")
Sprites={{Name = "sbssmfire-base3",States={Normal={Frames={{texture= path .. "/weapons/sbssm/basefire.tga",colour={0.0,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbssmfire-base3"
NodeEffects = {}
MinFireSpeed = 4000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 4008.6181640625
MetalFireCost = 92.59765625
Projectile = "_sbssmfire3"
