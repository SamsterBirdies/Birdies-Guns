dofile(path .. "/weapons/sbflamethrower/sbflamethrower.lua")
Sprites={{Name = "sbflamethrower-barrel9",States={Normal={Frames={{texture= path .. "/weapons/sbflamethrower/barrel.tga",colour={0.0,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbflamethrower-barrel9"
NodeEffects = {}
MinFireSpeed = 7264.0
MaxFireSpeed = 7264.1
EnergyFireCost = 3109.251797656937
MetalFireCost = 65.05413153962985
Projectile = "_sbflames9"
