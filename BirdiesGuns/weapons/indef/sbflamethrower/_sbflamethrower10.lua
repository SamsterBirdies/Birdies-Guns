dofile(path .. "/weapons/sbflamethrower/sbflamethrower.lua")
Sprites={{Name = "sbflamethrower-barrel10",States={Normal={Frames={{texture= path .. "/weapons/sbflamethrower/barrel.tga",colour={0.0,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbflamethrower-barrel10"
NodeEffects = {}
MinFireSpeed = 7422.0
MaxFireSpeed = 7422.1
EnergyFireCost = 3257.8338569953266
MetalFireCost = 67.07060234493656
Projectile = "_sbflames10"
