dofile(path .. "/weapons/sbdowngunner/sbdowngunner.lua")
Sprites={{Name = "sbdowngunner-base2",States={Normal={Frames={{texture= path .. "/weapons/sbdowngunner/base.tga",colour={0.0,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbdowngunner-base2"
NodeEffects = {}
MinFireSpeed = 2000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 61.9375
MetalFireCost = 2.03125
Projectile = "_sbdowngunner2"
