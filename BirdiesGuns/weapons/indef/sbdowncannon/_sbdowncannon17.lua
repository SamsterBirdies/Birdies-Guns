dofile(path .. "/weapons/sbdowncannon/sbdowncannon.lua")
Sprites={{Name = "sbdowncannon-barrel17",States={Normal={Frames={{texture= path .. "/weapons/sbdowncannon/barrel.tga",colour={0.5,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbdowncannon-barrel17"
NodeEffects = {}
MinFireSpeed = 8848.0
MaxFireSpeed = 8848.1
EnergyFireCost = 3700.1264652923205
MetalFireCost = 96.34779895166353
Projectile = "_sbdowncannon17"
