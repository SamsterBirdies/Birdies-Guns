dofile(path .. "/weapons/sbssm/sbssmfire.lua")
Sprites={{Name = "sbssmfire-base60",States={Normal={Frames={{texture= path .. "/weapons/sbssm/basefire.tga",colour={0.8660254037844386,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbssmfire-base60"
NodeEffects = {}
MinFireSpeed = 4000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 36963.23238826476
MetalFireCost = 678.4574646802627
Projectile = "_sbssmfire60"
