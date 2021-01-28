dofile(path .. "/weapons/sbdowncannon/sbdowncannon.lua")
Sprites={{Name = "sbdowncannon-barrel18",States={Normal={Frames={{texture= path .. "/weapons/sbdowncannon/barrel.tga",colour={0.5,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbdowncannon-barrel18"
NodeEffects = {}
MinFireSpeed = 9026.0
MaxFireSpeed = 9026.1
EnergyFireCost = 3877.940941312513
MetalFireCost = 100.85323331028327
Projectile = "_sbdowncannon18"
