dofile(path .. "/weapons/sbdowncannon/sbdowncannon.lua")
Sprites={{Name = "sbdowncannon-barrel31",States={Normal={Frames={{texture= path .. "/weapons/sbdowncannon/barrel.tga",colour={0.5,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbdowncannon-barrel31"
NodeEffects = {}
MinFireSpeed = 11340.0
MaxFireSpeed = 11340.1
EnergyFireCost = 6458.861671393124
MetalFireCost = 166.24818424137982
Projectile = "_sbdowncannon31"
