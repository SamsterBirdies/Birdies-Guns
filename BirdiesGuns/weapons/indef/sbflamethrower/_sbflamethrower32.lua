dofile(path .. "/weapons/sbflamethrower/sbflamethrower.lua")
Sprites={{Name = "sbflamethrower-barrel32",States={Normal={Frames={{texture= path .. "/weapons/sbflamethrower/barrel.tga",colour={0.7071067811865476,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbflamethrower-barrel32"
NodeEffects = {}
MinFireSpeed = 10898.0
MaxFireSpeed = 10898.1
EnergyFireCost = 7183.576985818987
MetalFireCost = 120.34854480754338
Projectile = "_sbflames32"
