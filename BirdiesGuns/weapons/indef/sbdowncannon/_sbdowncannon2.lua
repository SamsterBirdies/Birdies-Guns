dofile(path .. "/weapons/sbdowncannon/sbdowncannon.lua")
Sprites={{Name = "sbdowncannon-barrel2",States={Normal={Frames={{texture= path .. "/weapons/sbdowncannon/barrel.tga",colour={0.0,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbdowncannon-barrel2"
NodeEffects = {}
MinFireSpeed = 6178.0
MaxFireSpeed = 6178.1
EnergyFireCost = 1338.75
MetalFireCost = 36.515625
Projectile = "_sbdowncannon2"
