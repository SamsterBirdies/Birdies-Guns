dofile(path .. "/weapons/sbssm/sbssmfire.lua")
Sprites={{Name = "sbssmfire-base48",States={Normal={Frames={{texture= path .. "/weapons/sbssm/basefire.tga",colour={0.8660254037844386,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbssmfire-base48"
NodeEffects = {}
MinFireSpeed = 4000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 27428.506258944966
MetalFireCost = 508.95122238124384
Projectile = "_sbssmfire48"
