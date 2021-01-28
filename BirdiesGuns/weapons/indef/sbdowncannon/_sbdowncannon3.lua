dofile(path .. "/weapons/sbdowncannon/sbdowncannon.lua")
Sprites={{Name = "sbdowncannon-barrel3",States={Normal={Frames={{texture= path .. "/weapons/sbdowncannon/barrel.tga",colour={0.0,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbdowncannon-barrel3"
NodeEffects = {}
MinFireSpeed = 6356.0
MaxFireSpeed = 6356.1
EnergyFireCost = 1479.66796875
MetalFireCost = 40.086181640625
Projectile = "_sbdowncannon3"
