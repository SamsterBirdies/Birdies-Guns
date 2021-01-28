dofile(path .. "/weapons/sbimploder/sbimplodernocap.lua")
Sprites={{Name = "sbimplodernocap-barrel16",States={Normal={Frames={{texture= path .. "/weapons/sbimploder/barrel.tga",colour={0.5,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbimplodernocap-barrel16"
NodeEffects = {}
MinFireSpeed = 30000.0
MaxFireSpeed = 30000.1
EnergyFireCost = 6476.719419459314
MetalFireCost = 29.375396638295964
Projectile = "_sbimploder16"
