dofile(path .. "/weapons/sbssm/sbssmfire.lua")
Sprites={{Name = "sbssmfire-base15",States={Normal={Frames={{texture= path .. "/weapons/sbssm/basefire.tga",colour={0.0,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbssmfire-base15"
NodeEffects = {}
MinFireSpeed = 4000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 8754.380698367193
MetalFireCost = 176.96676797097228
Projectile = "_sbssmfire15"
