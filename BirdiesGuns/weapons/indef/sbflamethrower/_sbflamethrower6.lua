dofile(path .. "/weapons/sbflamethrower/sbflamethrower.lua")
Sprites={{Name = "sbflamethrower-barrel6",States={Normal={Frames={{texture= path .. "/weapons/sbflamethrower/barrel.tga",colour={0.0,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbflamethrower-barrel6"
NodeEffects = {}
MinFireSpeed = 6790.0
MaxFireSpeed = 6790.1
EnergyFireCost = 2677.0807582885027
MetalFireCost = 59.18895314820111
Projectile = "_sbflames6"
