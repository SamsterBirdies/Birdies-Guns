dofile(path .. "/weapons/sbflamethrower/sbflamethrower.lua")
Sprites={{Name = "sbflamethrower-barrel35",States={Normal={Frames={{texture= path .. "/weapons/sbflamethrower/barrel.tga",colour={0.7071067811865476,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbflamethrower-barrel35"
NodeEffects = {}
MinFireSpeed = 11372.0
MaxFireSpeed = 11372.1
EnergyFireCost = 7830.307883188398
MetalFireCost = 129.12560698612822
Projectile = "_sbflames35"
