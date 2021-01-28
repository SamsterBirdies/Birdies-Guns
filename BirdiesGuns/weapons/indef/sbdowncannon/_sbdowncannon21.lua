dofile(path .. "/weapons/sbdowncannon/sbdowncannon.lua")
Sprites={{Name = "sbdowncannon-barrel21",States={Normal={Frames={{texture= path .. "/weapons/sbdowncannon/barrel.tga",colour={0.5,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbdowncannon-barrel21"
NodeEffects = {}
MinFireSpeed = 9560.0
MaxFireSpeed = 9560.1
EnergyFireCost = 4428.2288017576175
MetalFireCost = 114.79633788237206
Projectile = "_sbdowncannon21"
