dofile(path .. "/weapons/sbflamethrower/sbflamethrower.lua")
Sprites={{Name = "sbflamethrower-barrel45",States={Normal={Frames={{texture= path .. "/weapons/sbflamethrower/barrel.tga",colour={0.7071067811865476,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbflamethrower-barrel45"
NodeEffects = {}
MinFireSpeed = 12952.0
MaxFireSpeed = 12952.1
EnergyFireCost = 10216.82794369808
MetalFireCost = 161.51409352161673
Projectile = "_sbflames45"
