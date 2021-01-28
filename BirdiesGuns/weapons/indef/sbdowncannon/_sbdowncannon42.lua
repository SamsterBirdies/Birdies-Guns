dofile(path .. "/weapons/sbdowncannon/sbdowncannon.lua")
Sprites={{Name = "sbdowncannon-barrel42",States={Normal={Frames={{texture= path .. "/weapons/sbdowncannon/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbdowncannon-barrel42"
NodeEffects = {}
MinFireSpeed = 13298.0
MaxFireSpeed = 13298.1
EnergyFireCost = 9088.015038220237
MetalFireCost = 232.86524590085065
Projectile = "_sbdowncannon42"
