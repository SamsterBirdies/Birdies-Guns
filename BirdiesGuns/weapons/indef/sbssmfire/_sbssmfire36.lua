dofile(path .. "/weapons/sbssm/sbssmfire.lua")
Sprites={{Name = "sbssmfire-base36",States={Normal={Frames={{texture= path .. "/weapons/sbssm/basefire.tga",colour={0.7071067811865476,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbssmfire-base36"
NodeEffects = {}
MinFireSpeed = 4000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 19512.47261749076
MetalFireCost = 368.221735422058
Projectile = "_sbssmfire36"
