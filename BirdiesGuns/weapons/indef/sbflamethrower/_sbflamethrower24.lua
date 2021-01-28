dofile(path .. "/weapons/sbflamethrower/sbflamethrower.lua")
Sprites={{Name = "sbflamethrower-barrel24",States={Normal={Frames={{texture= path .. "/weapons/sbflamethrower/barrel.tga",colour={0.5,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbflamethrower-barrel24"
NodeEffects = {}
MinFireSpeed = 9634.0
MaxFireSpeed = 9634.1
EnergyFireCost = 5599.056193778993
MetalFireCost = 98.84433405842917
Projectile = "_sbflames24"
