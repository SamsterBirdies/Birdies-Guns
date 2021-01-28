dofile(path .. "/weapons/sbflamethrower/sbflamethrower.lua")
Sprites={{Name = "sbflamethrower-barrel3",States={Normal={Frames={{texture= path .. "/weapons/sbflamethrower/barrel.tga",colour={0.0,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbflamethrower-barrel3"
NodeEffects = {}
MinFireSpeed = 6316.0
MaxFireSpeed = 6316.1
EnergyFireCost = 2264.55078125
MetalFireCost = 53.59033203125
Projectile = "_sbflames3"
