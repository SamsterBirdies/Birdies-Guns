dofile(path .. "/weapons/sbssm/sbssmfire.lua")
Sprites={{Name = "sbssmfire-base32",States={Normal={Frames={{texture= path .. "/weapons/sbssm/basefire.tga",colour={0.7071067811865476,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbssmfire-base32"
NodeEffects = {}
MinFireSpeed = 4000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 17184.581212015146
MetalFireCost = 326.8369993247137
Projectile = "_sbssmfire32"
