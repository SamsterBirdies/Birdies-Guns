dofile(path .. "/weapons/sbdowncannon/sbdowncannon.lua")
Sprites={{Name = "sbdowncannon-barrel45",States={Normal={Frames={{texture= path .. "/weapons/sbdowncannon/barrel.tga",colour={0.7071067811865476,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbdowncannon-barrel45"
NodeEffects = {}
MinFireSpeed = 13832.0
MaxFireSpeed = 13832.1
EnergyFireCost = 9886.360969052248
MetalFireCost = 253.09360563476986
Projectile = "_sbdowncannon45"
