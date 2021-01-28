dofile(path .. "/weapons/sbdowncannon/sbdowncannon.lua")
Sprites={{Name = "sbdowncannon-barrel15",States={Normal={Frames={{texture= path .. "/weapons/sbdowncannon/barrel.tga",colour={0.0,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbdowncannon-barrel15"
NodeEffects = {}
MinFireSpeed = 8492.0
MaxFireSpeed = 8492.1
EnergyFireCost = 3352.662248955585
MetalFireCost = 87.54380698367191
Projectile = "_sbdowncannon15"
