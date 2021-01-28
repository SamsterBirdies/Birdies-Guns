dofile(path .. "/weapons/sbflamethrower/sbflamethrower.lua")
Sprites={{Name = "sbflamethrower-barrel41",States={Normal={Frames={{texture= path .. "/weapons/sbflamethrower/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbflamethrower-barrel41"
NodeEffects = {}
MinFireSpeed = 12320.0
MaxFireSpeed = 12320.1
EnergyFireCost = 9217.610680088708
MetalFireCost = 147.95328780120386
Projectile = "_sbflames41"
