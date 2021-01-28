dofile(path .. "/weapons/sbdowncannon/sbdowncannon.lua")
Sprites={{Name = "sbdowncannon-barrel23",States={Normal={Frames={{texture= path .. "/weapons/sbdowncannon/barrel.tga",colour={0.5,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbdowncannon-barrel23"
NodeEffects = {}
MinFireSpeed = 9916.0
MaxFireSpeed = 9916.1
EnergyFireCost = 4809.567062359847
MetalFireCost = 124.4586248908745
Projectile = "_sbdowncannon23"
