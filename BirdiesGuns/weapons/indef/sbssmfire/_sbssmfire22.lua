dofile(path .. "/weapons/sbssm/sbssmfire.lua")
Sprites={{Name = "sbssmfire-base22",States={Normal={Frames={{texture= path .. "/weapons/sbssm/basefire.tga",colour={0.5,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbssmfire-base22"
NodeEffects = {}
MinFireSpeed = 4000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 11959.003066178415
MetalFireCost = 233.93783228761626
Projectile = "_sbssmfire22"
