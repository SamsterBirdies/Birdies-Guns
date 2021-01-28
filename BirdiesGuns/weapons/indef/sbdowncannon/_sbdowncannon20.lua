dofile(path .. "/weapons/sbdowncannon/sbdowncannon.lua")
Sprites={{Name = "sbdowncannon-barrel20",States={Normal={Frames={{texture= path .. "/weapons/sbdowncannon/barrel.tga",colour={0.5,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbdowncannon-barrel20"
NodeEffects = {}
MinFireSpeed = 9382.0
MaxFireSpeed = 9382.1
EnergyFireCost = 4241.948358653654
MetalFireCost = 110.07639422264326
Projectile = "_sbdowncannon20"
