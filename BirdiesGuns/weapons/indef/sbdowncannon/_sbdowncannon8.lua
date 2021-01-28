dofile(path .. "/weapons/sbdowncannon/sbdowncannon.lua")
Sprites={{Name = "sbdowncannon-barrel8",States={Normal={Frames={{texture= path .. "/weapons/sbdowncannon/barrel.tga",colour={0.0,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbdowncannon-barrel8"
NodeEffects = {}
MinFireSpeed = 7246.0
MaxFireSpeed = 7246.1
EnergyFireCost = 2217.9816513633523
MetalFireCost = 58.793454004138994
Projectile = "_sbdowncannon8"
