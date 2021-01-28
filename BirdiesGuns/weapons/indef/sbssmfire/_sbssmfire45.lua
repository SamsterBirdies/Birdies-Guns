dofile(path .. "/weapons/sbssm/sbssmfire.lua")
Sprites={{Name = "sbssmfire-base45",States={Normal={Frames={{texture= path .. "/weapons/sbssm/basefire.tga",colour={0.7071067811865476,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbssmfire-base45"
NodeEffects = {}
MinFireSpeed = 4000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 25309.360563476992
MetalFireCost = 471.2775211284799
Projectile = "_sbssmfire45"
