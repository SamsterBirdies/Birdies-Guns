dofile(path .. "/weapons/sbimploder/sbimplodernocap.lua")
Sprites={{Name = "sbimplodernocap-barrel48",States={Normal={Frames={{texture= path .. "/weapons/sbimploder/barrel.tga",colour={0.8660254037844386,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbimplodernocap-barrel48"
NodeEffects = {}
MinFireSpeed = 30000.0
MaxFireSpeed = 30000.1
EnergyFireCost = 11048.212235575536
MetalFireCost = 89.35597614053012
Projectile = "_sbimploder48"
