dofile(path .. "/weapons/sbdowncannon/sbdowncannon.lua")
Sprites={{Name = "sbdowncannon-barrel6",States={Normal={Frames={{texture= path .. "/weapons/sbdowncannon/barrel.tga",colour={0.0,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbdowncannon-barrel6"
NodeEffects = {}
MinFireSpeed = 6890.0
MaxFireSpeed = 6890.1
EnergyFireCost = 1915.77108733356
MetalFireCost = 51.13609173987061
Projectile = "_sbdowncannon6"
