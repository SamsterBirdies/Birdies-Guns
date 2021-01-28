dofile(path .. "/weapons/sbdowngunner/sbdowngunner.lua")
Sprites={{Name = "sbdowngunner-base40",States={Normal={Frames={{texture= path .. "/weapons/sbdowngunner/base.tga",colour={0.7071067811865476,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="sbdowngunner-base40"
NodeEffects = {}
MinFireSpeed = 2000.0
MaxFireSpeed = 4000.1
EnergyFireCost = 162.99882483000715
MetalFireCost = 3.6612713682259246
Projectile = "_sbdowngunner40"
