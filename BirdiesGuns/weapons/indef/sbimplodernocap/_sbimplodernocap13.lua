dofile(path .. "/weapons/sbimploder/sbimplodernocap.lua")
Sprites={{Name = "sbimplodernocap-barrel13",States={Normal={Frames={{texture= path .. "/weapons/sbimploder/barrel.tga",colour={0.0,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbimplodernocap-barrel13"
NodeEffects = {}
MinFireSpeed = 30000.0
MaxFireSpeed = 30000.1
EnergyFireCost = 6153.282823831561
MetalFireCost = 25.131724993534664
Projectile = "_sbimploder13"
