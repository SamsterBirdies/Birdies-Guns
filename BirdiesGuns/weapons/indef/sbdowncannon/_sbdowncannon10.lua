dofile(path .. "/weapons/sbdowncannon/sbdowncannon.lua")
Sprites={{Name = "sbdowncannon-barrel10",States={Normal={Frames={{texture= path .. "/weapons/sbdowncannon/barrel.tga",colour={0.0,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbdowncannon-barrel10"
NodeEffects = {}
MinFireSpeed = 7602.0
MaxFireSpeed = 7602.1
EnergyFireCost = 2529.710077395059
MetalFireCost = 66.69197831237481
Projectile = "_sbdowncannon10"
