dofile(path .. "/weapons/sbdowncannon/sbdowncannon.lua")
Sprites={{Name = "sbdowncannon-barrel26",States={Normal={Frames={{texture= path .. "/weapons/sbdowncannon/barrel.tga",colour={0.5,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbdowncannon-barrel26"
NodeEffects = {}
MinFireSpeed = 10450.0
MaxFireSpeed = 10450.1
EnergyFireCost = 5404.210794451038
MetalFireCost = 139.5256113458878
Projectile = "_sbdowncannon26"
