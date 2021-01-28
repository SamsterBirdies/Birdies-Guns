dofile(path .. "/weapons/sbdowncannon/sbdowncannon.lua")
Sprites={{Name = "sbdowncannon-barrel24",States={Normal={Frames={{texture= path .. "/weapons/sbdowncannon/barrel.tga",colour={0.5,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbdowncannon-barrel24"
NodeEffects = {}
MinFireSpeed = 10094.0
MaxFireSpeed = 10094.1
EnergyFireCost = 5004.716547709219
MetalFireCost = 129.4032909047944
Projectile = "_sbdowncannon24"
