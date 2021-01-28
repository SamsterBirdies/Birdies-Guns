dofile(path .. "/weapons/sbflamethrower/sbflamethrower.lua")
Sprites={{Name = "sbflamethrower-barrel2",States={Normal={Frames={{texture= path .. "/weapons/sbflamethrower/barrel.tga",colour={0.0,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbflamethrower-barrel2"
NodeEffects = {}
MinFireSpeed = 6158.0
MaxFireSpeed = 6158.1
EnergyFireCost = 2131.25
MetalFireCost = 51.78125
Projectile = "_sbflames2"
