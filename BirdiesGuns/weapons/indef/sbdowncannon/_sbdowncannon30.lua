dofile(path .. "/weapons/sbdowncannon/sbdowncannon.lua")
Sprites={{Name = "sbdowncannon-barrel30",States={Normal={Frames={{texture= path .. "/weapons/sbdowncannon/barrel.tga",colour={0.5,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbdowncannon-barrel30"
NodeEffects = {}
MinFireSpeed = 11162.0
MaxFireSpeed = 11162.1
EnergyFireCost = 6241.340722602461
MetalFireCost = 160.73667371458936
Projectile = "_sbdowncannon30"
