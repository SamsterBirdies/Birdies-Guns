dofile(path .. "/weapons/sbdowncannon/sbdowncannon.lua")
Sprites={{Name = "sbdowncannon-barrel22",States={Normal={Frames={{texture= path .. "/weapons/sbdowncannon/barrel.tga",colour={0.5,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbdowncannon-barrel22"
NodeEffects = {}
MinFireSpeed = 9738.0
MaxFireSpeed = 9738.1
EnergyFireCost = 4617.41987678508
MetalFireCost = 119.59003066178413
Projectile = "_sbdowncannon22"
