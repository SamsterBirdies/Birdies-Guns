dofile(path .. "/weapons/sbdowncannon/sbdowncannon.lua")
Sprites={{Name = "sbdowncannon-barrel28",States={Normal={Frames={{texture= path .. "/weapons/sbdowncannon/barrel.tga",colour={0.5,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbdowncannon-barrel28"
NodeEffects = {}
MinFireSpeed = 10806.0
MaxFireSpeed = 10806.1
EnergyFireCost = 5816.286769178622
MetalFireCost = 149.96672557040426
Projectile = "_sbdowncannon28"
