dofile(path .. "/weapons/sbdowncannon/sbdowncannon.lua")
Sprites={{Name = "sbdowncannon-barrel25",States={Normal={Frames={{texture= path .. "/weapons/sbdowncannon/barrel.tga",colour={0.5,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbdowncannon-barrel25"
NodeEffects = {}
MinFireSpeed = 10272.0
MaxFireSpeed = 10272.1
EnergyFireCost = 5202.9152437671755
MetalFireCost = 134.42521732518182
Projectile = "_sbdowncannon25"
