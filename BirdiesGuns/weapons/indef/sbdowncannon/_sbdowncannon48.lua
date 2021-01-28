dofile(path .. "/weapons/sbdowncannon/sbdowncannon.lua")
Sprites={{Name = "sbdowncannon-barrel48",States={Normal={Frames={{texture= path .. "/weapons/sbdowncannon/barrel.tga",colour={0.8660254037844386,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbdowncannon-barrel48"
NodeEffects = {}
MinFireSpeed = 14366.0
MaxFireSpeed = 14366.1
EnergyFireCost = 10722.71713686361
MetalFireCost = 274.28506258944964
Projectile = "_sbdowncannon48"
