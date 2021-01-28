dofile(path .. "/weapons/sbflamethrower/sbflamethrower.lua")
Sprites={{Name = "sbflamethrower-barrel48",States={Normal={Frames={{texture= path .. "/weapons/sbflamethrower/barrel.tga",colour={0.8660254037844386,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbflamethrower-barrel48"
NodeEffects = {}
MinFireSpeed = 13426.0
MaxFireSpeed = 13426.1
EnergyFireCost = 11007.97567000612
MetalFireCost = 172.25109837865446
Projectile = "_sbflames48"
