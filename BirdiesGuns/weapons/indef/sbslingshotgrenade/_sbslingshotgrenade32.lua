dofile(path .. "/weapons/sbslingshot/sbslingshotgrenade.lua")
Sprites={{Name = "sbslingshotg-base32",States={Normal={Frames={{texture= "weapons/machinegun/base.tga",colour={0.7071067811865476,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbslingshotg-base32"
NodeEffects = {}
MinFireSpeed = 800.0
MaxFireSpeed = 2200.1
EnergyFireCost = 2895.1902554685803
MetalFireCost = 55.66484487507203
Projectile = "_sbgrenade32"
RoundsEachBurst = 5
