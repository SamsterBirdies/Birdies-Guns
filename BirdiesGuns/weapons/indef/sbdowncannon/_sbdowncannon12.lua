dofile(path .. "/weapons/sbdowncannon/sbdowncannon.lua")
Sprites={{Name = "sbdowncannon-barrel12",States={Normal={Frames={{texture= path .. "/weapons/sbdowncannon/barrel.tga",colour={0.0,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbdowncannon-barrel12"
NodeEffects = {}
MinFireSpeed = 7958.0
MaxFireSpeed = 7958.1
EnergyFireCost = 2851.2561223130187
MetalFireCost = 74.8392598559042
Projectile = "_sbdowncannon12"
