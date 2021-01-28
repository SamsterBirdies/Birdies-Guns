dofile(path .. "/weapons/sbssm/sbssmfire.lua")
Sprites={{Name = "sbssmfire-base62",States={Normal={Frames={{texture= path .. "/weapons/sbssm/basefire.tga",colour={0.8660254037844386,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbssmfire-base62"
NodeEffects = {}
MinFireSpeed = 4000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 38732.04512705533
MetalFireCost = 709.9030244809838
Projectile = "_sbssmfire62"
