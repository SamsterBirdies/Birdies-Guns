dofile(path .. "/weapons/sbdowncannon/sbdowncannon.lua")
Sprites={{Name = "sbdowncannon-barrel64",States={Normal={Frames={{texture= path .. "/weapons/sbdowncannon/barrel.tga",colour={0.0,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbdowncannon-barrel64"
NodeEffects = {}
MinFireSpeed = 17214.0
MaxFireSpeed = 17214.1
EnergyFireCost = 15903.92436064303
MetalFireCost = 405.5656510298065
Projectile = "_sbdowncannon64"
