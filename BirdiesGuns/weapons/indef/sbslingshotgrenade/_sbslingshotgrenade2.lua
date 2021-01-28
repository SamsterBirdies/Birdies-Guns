dofile(path .. "/weapons/sbslingshot/sbslingshotgrenade.lua")
Sprites={{Name = "sbslingshotg-base2",States={Normal={Frames={{texture= "weapons/machinegun/base.tga",colour={0.0,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbslingshotg-base2"
NodeEffects = {}
MinFireSpeed = 800.0
MaxFireSpeed = 2200.1
EnergyFireCost = 390.078125
MetalFireCost = 11.15625
Projectile = "_sbgrenade2"
