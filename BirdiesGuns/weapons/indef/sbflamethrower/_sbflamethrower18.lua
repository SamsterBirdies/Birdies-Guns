dofile(path .. "/weapons/sbflamethrower/sbflamethrower.lua")
Sprites={{Name = "sbflamethrower-barrel18",States={Normal={Frames={{texture= path .. "/weapons/sbflamethrower/barrel.tga",colour={0.5,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbflamethrower-barrel18"
NodeEffects = {}
MinFireSpeed = 8686.0
MaxFireSpeed = 8686.1
EnergyFireCost = 4533.187376917243
MetalFireCost = 84.37897154387684
Projectile = "_sbflames18"
