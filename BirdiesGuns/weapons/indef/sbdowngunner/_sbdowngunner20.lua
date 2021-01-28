dofile(path .. "/weapons/sbdowngunner/sbdowngunner.lua")
Sprites={{Name = "sbdowngunner-base20",States={Normal={Frames={{texture= path .. "/weapons/sbdowngunner/base.tga",colour={0.5,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbdowngunner-base20"
NodeEffects = {}
MinFireSpeed = 2000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 102.47765726047892
MetalFireCost = 2.6851235042012735
Projectile = "_sbdowngunner20"
