dofile(path .. "/weapons/sbflamethrower/sbflamethrower.lua")
Sprites={{Name = "sbflamethrower-barrel25",States={Normal={Frames={{texture= path .. "/weapons/sbflamethrower/barrel.tga",colour={0.5,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbflamethrower-barrel25"
NodeEffects = {}
MinFireSpeed = 9792.0
MaxFireSpeed = 9792.1
EnergyFireCost = 5786.541446806789
MetalFireCost = 101.38877677809212
Projectile = "_sbflames25"
