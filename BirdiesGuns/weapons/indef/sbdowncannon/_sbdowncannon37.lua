dofile(path .. "/weapons/sbdowncannon/sbdowncannon.lua")
Sprites={{Name = "sbdowncannon-barrel37",States={Normal={Frames={{texture= path .. "/weapons/sbdowncannon/barrel.tga",colour={0.7071067811865476,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbdowncannon-barrel37"
NodeEffects = {}
MinFireSpeed = 12408.0
MaxFireSpeed = 12408.1
EnergyFireCost = 7837.24944084421
MetalFireCost = 201.17355002139044
Projectile = "_sbdowncannon37"
