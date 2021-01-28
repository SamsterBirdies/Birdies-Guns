dofile(path .. "/weapons/sbdowncannon/sbdowncannon.lua")
Sprites={{Name = "sbdowncannon-barrel9",States={Normal={Frames={{texture= path .. "/weapons/sbdowncannon/barrel.tga",colour={0.0,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbdowncannon-barrel9"
NodeEffects = {}
MinFireSpeed = 7424.0
MaxFireSpeed = 7424.1
EnergyFireCost = 2372.6376146659045
MetalFireCost = 62.71210172295366
Projectile = "_sbdowncannon9"
