dofile(path .. "/weapons/sbssm/sbssmfire.lua")
Sprites={{Name = "sbssmfire-base23",States={Normal={Frames={{texture= path .. "/weapons/sbssm/basefire.tga",colour={0.5,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbssmfire-base23"
NodeEffects = {}
MinFireSpeed = 4000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 12445.862489087453
MetalFireCost = 242.59311091711027
Projectile = "_sbssmfire23"
