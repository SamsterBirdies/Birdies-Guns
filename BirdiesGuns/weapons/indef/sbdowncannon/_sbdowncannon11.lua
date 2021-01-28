dofile(path .. "/weapons/sbdowncannon/sbdowncannon.lua")
Sprites={{Name = "sbdowncannon-barrel11",States={Normal={Frames={{texture= path .. "/weapons/sbdowncannon/barrel.tga",colour={0.0,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbdowncannon-barrel11"
NodeEffects = {}
MinFireSpeed = 7780.0
MaxFireSpeed = 7780.1
EnergyFireCost = 2689.236797354357
MetalFireCost = 70.73404047350567
Projectile = "_sbdowncannon11"
