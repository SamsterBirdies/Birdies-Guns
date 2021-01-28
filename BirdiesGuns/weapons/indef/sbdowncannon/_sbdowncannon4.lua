dofile(path .. "/weapons/sbdowncannon/sbdowncannon.lua")
Sprites={{Name = "sbdowncannon-barrel4",States={Normal={Frames={{texture= path .. "/weapons/sbdowncannon/barrel.tga",colour={0.0,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbdowncannon-barrel4"
NodeEffects = {}
MinFireSpeed = 6534.0
MaxFireSpeed = 6534.1
EnergyFireCost = 1622.7877807617188
MetalFireCost = 43.712528228759766
Projectile = "_sbdowncannon4"
