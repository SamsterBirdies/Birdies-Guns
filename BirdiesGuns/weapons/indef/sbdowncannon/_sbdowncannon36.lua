dofile(path .. "/weapons/sbdowncannon/sbdowncannon.lua")
Sprites={{Name = "sbdowncannon-barrel36",States={Normal={Frames={{texture= path .. "/weapons/sbdowncannon/barrel.tga",colour={0.7071067811865476,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbdowncannon-barrel36"
NodeEffects = {}
MinFireSpeed = 12230.0
MaxFireSpeed = 12230.1
EnergyFireCost = 7598.522526369684
MetalFireCost = 195.12472617490752
Projectile = "_sbdowncannon36"
