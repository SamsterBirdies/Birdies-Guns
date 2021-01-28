dofile(path .. "/weapons/sbflamethrower/sbflamethrower.lua")
Sprites={{Name = "sbflamethrower-barrel42",States={Normal={Frames={{texture= path .. "/weapons/sbflamethrower/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbflamethrower-barrel42"
NodeEffects = {}
MinFireSpeed = 12478.0
MaxFireSpeed = 12478.1
EnergyFireCost = 9461.635846965095
MetalFireCost = 151.26505792309766
Projectile = "_sbflames42"
