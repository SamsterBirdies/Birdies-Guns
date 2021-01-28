dofile(path .. "/weapons/sbflamethrower/sbflamethrower.lua")
Sprites={{Name = "sbflamethrower-barrel15",States={Normal={Frames={{texture= path .. "/weapons/sbflamethrower/barrel.tga",colour={0.0,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbflamethrower-barrel15"
NodeEffects = {}
MinFireSpeed = 8212.0
MaxFireSpeed = 8212.1
EnergyFireCost = 4036.3021273904183
MetalFireCost = 77.63552887172709
Projectile = "_sbflames15"
