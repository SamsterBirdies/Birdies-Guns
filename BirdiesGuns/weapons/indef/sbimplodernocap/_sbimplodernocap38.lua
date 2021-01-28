dofile(path .. "/weapons/sbimploder/sbimplodernocap.lua")
Sprites={{Name = "sbimplodernocap-barrel38",States={Normal={Frames={{texture= path .. "/weapons/sbimploder/barrel.tga",colour={0.7071067811865476,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbimplodernocap-barrel38"
NodeEffects = {}
MinFireSpeed = 30000.0
MaxFireSpeed = 30000.1
EnergyFireCost = 9369.543294294564
MetalFireCost = 67.33088719464503
Projectile = "_sbimploder38"
