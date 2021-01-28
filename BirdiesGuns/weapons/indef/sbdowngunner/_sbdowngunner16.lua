dofile(path .. "/weapons/sbdowngunner/sbdowngunner.lua")
Sprites={{Name = "sbdowngunner-base16",States={Normal={Frames={{texture= path .. "/weapons/sbdowngunner/base.tga",colour={0.5,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbdowngunner-base16"
NodeEffects = {}
MinFireSpeed = 2000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 92.46688085336079
MetalFireCost = 2.5236593686025937
Projectile = "_sbdowngunner16"
