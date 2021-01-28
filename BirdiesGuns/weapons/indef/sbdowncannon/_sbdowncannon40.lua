dofile(path .. "/weapons/sbdowncannon/sbdowncannon.lua")
Sprites={{Name = "sbdowncannon-barrel40",States={Normal={Frames={{texture= path .. "/weapons/sbdowncannon/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbdowncannon-barrel40"
NodeEffects = {}
MinFireSpeed = 12942.0
MaxFireSpeed = 12942.1
EnergyFireCost = 8576.0448749231
MetalFireCost = 219.8930289254164
Projectile = "_sbdowncannon40"
