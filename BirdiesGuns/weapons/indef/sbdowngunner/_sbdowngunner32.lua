dofile(path .. "/weapons/sbdowngunner/sbdowngunner.lua")
Sprites={{Name = "sbdowngunner-base32",States={Normal={Frames={{texture= path .. "/weapons/sbdowngunner/base.tga",colour={0.7071067811865476,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbdowngunner-base32"
NodeEffects = {}
MinFireSpeed = 2000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 136.51946979066113
MetalFireCost = 3.2341849966235685
Projectile = "_sbdowngunner32"
