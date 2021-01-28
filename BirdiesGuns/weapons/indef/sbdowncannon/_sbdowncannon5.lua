dofile(path .. "/weapons/sbdowncannon/sbdowncannon.lua")
Sprites={{Name = "sbdowncannon-barrel5",States={Normal={Frames={{texture= path .. "/weapons/sbdowncannon/barrel.tga",colour={0.0,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbdowncannon-barrel5"
NodeEffects = {}
MinFireSpeed = 6712.0
MaxFireSpeed = 6712.1
EnergyFireCost = 1768.1438398361206
MetalFireCost = 47.39553648233414
Projectile = "_sbdowncannon5"
