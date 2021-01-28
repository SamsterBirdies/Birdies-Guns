dofile(path .. "/weapons/sbflamethrower/sbflamethrower.lua")
Sprites={{Name = "sbflamethrower-barrel13",States={Normal={Frames={{texture= path .. "/weapons/sbflamethrower/barrel.tga",colour={0.0,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbflamethrower-barrel13"
NodeEffects = {}
MinFireSpeed = 7896.0
MaxFireSpeed = 7896.1
EnergyFireCost = 3717.6552695363675
MetalFireCost = 73.31103580085069
Projectile = "_sbflames13"
