dofile(path .. "/weapons/sbdowncannon/sbdowncannon.lua")
Sprites={{Name = "sbdowncannon-barrel38",States={Normal={Frames={{texture= path .. "/weapons/sbdowncannon/barrel.tga",colour={0.7071067811865476,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbdowncannon-barrel38"
NodeEffects = {}
MinFireSpeed = 12586.0
MaxFireSpeed = 12586.1
EnergyFireCost = 8079.706463357401
MetalFireCost = 207.31688674047467
Projectile = "_sbdowncannon38"
