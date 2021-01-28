dofile(path .. "/weapons/sbdowncannon/sbdowncannon.lua")
Sprites={{Name = "sbdowncannon-barrel7",States={Normal={Frames={{texture= path .. "/weapons/sbdowncannon/barrel.tga",colour={0.0,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbdowncannon-barrel7"
NodeEffects = {}
MinFireSpeed = 7068.0
MaxFireSpeed = 7068.1
EnergyFireCost = 2065.705010573147
MetalFireCost = 54.935093173306086
Projectile = "_sbdowncannon7"
