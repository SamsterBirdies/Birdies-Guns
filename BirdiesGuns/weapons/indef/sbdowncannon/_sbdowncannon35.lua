dofile(path .. "/weapons/sbdowncannon/sbdowncannon.lua")
Sprites={{Name = "sbdowncannon-barrel35",States={Normal={Frames={{texture= path .. "/weapons/sbdowncannon/barrel.tga",colour={0.7071067811865476,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbdowncannon-barrel35"
NodeEffects = {}
MinFireSpeed = 12052.0
MaxFireSpeed = 12052.1
EnergyFireCost = 7363.468333656304
MetalFireCost = 189.168961156832
Projectile = "_sbdowncannon35"
