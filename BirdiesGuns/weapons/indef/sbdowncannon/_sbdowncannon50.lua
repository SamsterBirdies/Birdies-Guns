dofile(path .. "/weapons/sbdowncannon/sbdowncannon.lua")
Sprites={{Name = "sbdowncannon-barrel50",States={Normal={Frames={{texture= path .. "/weapons/sbdowncannon/barrel.tga",colour={0.8660254037844386,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbdowncannon-barrel50"
NodeEffects = {}
MinFireSpeed = 14722.0
MaxFireSpeed = 14722.1
EnergyFireCost = 11302.29489825409
MetalFireCost = 288.9703099219787
Projectile = "_sbdowncannon50"
