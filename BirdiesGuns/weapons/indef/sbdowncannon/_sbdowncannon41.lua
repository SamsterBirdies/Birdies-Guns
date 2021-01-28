dofile(path .. "/weapons/sbdowncannon/sbdowncannon.lua")
Sprites={{Name = "sbdowncannon-barrel41",States={Normal={Frames={{texture= path .. "/weapons/sbdowncannon/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbdowncannon-barrel41"
NodeEffects = {}
MinFireSpeed = 13120.0
MaxFireSpeed = 13120.1
EnergyFireCost = 8830.045576093773
MetalFireCost = 226.32885750237602
Projectile = "_sbdowncannon41"
