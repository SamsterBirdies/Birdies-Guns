dofile(path .. "/weapons/sbimploder/sbimplodernocap.lua")
Sprites={{Name = "sbimplodernocap-barrel5",States={Normal={Frames={{texture= path .. "/weapons/sbimploder/barrel.tga",colour={0.0,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbimplodernocap-barrel5"
NodeEffects = {}
MinFireSpeed = 30000.0
MaxFireSpeed = 30000.1
EnergyFireCost = 5360.848114490509
MetalFireCost = 14.734531998634338
Projectile = "_sbimploder5"
