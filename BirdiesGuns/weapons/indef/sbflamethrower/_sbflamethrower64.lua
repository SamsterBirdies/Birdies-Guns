dofile(path .. "/weapons/sbflamethrower/sbflamethrower.lua")
Sprites={{Name = "sbflamethrower-barrel64",States={Normal={Frames={{texture= path .. "/weapons/sbflamethrower/barrel.tga",colour={0.0,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbflamethrower-barrel64"
NodeEffects = {}
MinFireSpeed = 15954.0
MaxFireSpeed = 15954.1
EnergyFireCost = 15909.117638446112
MetalFireCost = 238.76659652176863
Projectile = "_sbflames64"
