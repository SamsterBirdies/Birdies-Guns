dofile(path .. "/weapons/sbdowncannon/sbdowncannon.lua")
Sprites={{Name = "sbdowncannon-barrel60",States={Normal={Frames={{texture= path .. "/weapons/sbdowncannon/barrel.tga",colour={0.8660254037844386,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbdowncannon-barrel60"
NodeEffects = {}
MinFireSpeed = 16502.0
MaxFireSpeed = 16502.1
EnergyFireCost = 14485.755715901823
MetalFireCost = 369.6323238826476
Projectile = "_sbdowncannon60"
