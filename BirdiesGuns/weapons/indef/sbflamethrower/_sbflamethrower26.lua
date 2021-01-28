dofile(path .. "/weapons/sbflamethrower/sbflamethrower.lua")
Sprites={{Name = "sbflamethrower-barrel26",States={Normal={Frames={{texture= path .. "/weapons/sbflamethrower/barrel.tga",colour={0.5,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbflamethrower-barrel26"
NodeEffects = {}
MinFireSpeed = 9950.0
MaxFireSpeed = 9950.1
EnergyFireCost = 5976.956156913146
MetalFireCost = 103.97297641524982
Projectile = "_sbflames26"
