dofile(path .. "/weapons/sbflamethrower/sbflamethrower.lua")
Sprites={{Name = "sbflamethrower-barrel33",States={Normal={Frames={{texture= path .. "/weapons/sbflamethrower/barrel.tga",colour={0.7071067811865476,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbflamethrower-barrel33"
NodeEffects = {}
MinFireSpeed = 11056.0
MaxFireSpeed = 11056.1
EnergyFireCost = 7395.820376222408
MetalFireCost = 123.22899082016124
Projectile = "_sbflames33"
