dofile(path .. "/weapons/sbdowncannon/sbdowncannon.lua")
Sprites={{Name = "sbdowncannon-barrel16",States={Normal={Frames={{texture= path .. "/weapons/sbdowncannon/barrel.tga",colour={0.5,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbdowncannon-barrel16"
NodeEffects = {}
MinFireSpeed = 8670.0
MaxFireSpeed = 8670.1
EnergyFireCost = 3525.0475965955156
MetalFireCost = 91.91167896779179
Projectile = "_sbdowncannon16"
