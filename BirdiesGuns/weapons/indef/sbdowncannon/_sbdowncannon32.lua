dofile(path .. "/weapons/sbdowncannon/sbdowncannon.lua")
Sprites={{Name = "sbdowncannon-barrel32",States={Normal={Frames={{texture= path .. "/weapons/sbdowncannon/barrel.tga",colour={0.7071067811865476,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbdowncannon-barrel32"
NodeEffects = {}
MinFireSpeed = 11518.0
MaxFireSpeed = 11518.1
EnergyFireCost = 6679.781385008641
MetalFireCost = 171.84581212015138
Projectile = "_sbdowncannon32"
