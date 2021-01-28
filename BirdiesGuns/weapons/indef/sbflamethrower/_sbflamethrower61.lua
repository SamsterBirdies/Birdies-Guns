dofile(path .. "/weapons/sbflamethrower/sbflamethrower.lua")
Sprites={{Name = "sbflamethrower-barrel61",States={Normal={Frames={{texture= path .. "/weapons/sbflamethrower/barrel.tga",colour={0.8660254037844386,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbflamethrower-barrel61"
NodeEffects = {}
MinFireSpeed = 15480.0
MaxFireSpeed = 15480.1
EnergyFireCost = 14895.225613883724
MetalFireCost = 225.0066333312791
Projectile = "_sbflames61"
