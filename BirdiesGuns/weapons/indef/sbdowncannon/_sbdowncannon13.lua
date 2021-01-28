dofile(path .. "/weapons/sbdowncannon/sbdowncannon.lua")
Sprites={{Name = "sbdowncannon-barrel13",States={Normal={Frames={{texture= path .. "/weapons/sbdowncannon/barrel.tga",colour={0.0,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbdowncannon-barrel13"
NodeEffects = {}
MinFireSpeed = 8136.0
MaxFireSpeed = 8136.1
EnergyFireCost = 3015.80699922416
MetalFireCost = 79.0086232911527
Projectile = "_sbdowncannon13"
