dofile(path .. "/weapons/sbimploder/sbimplodernocap.lua")
Sprites={{Name = "sbimplodernocap-barrel57",States={Normal={Frames={{texture= path .. "/weapons/sbimploder/barrel.tga",colour={0.8660254037844386,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbimplodernocap-barrel57"
NodeEffects = {}
MinFireSpeed = 30000.0
MaxFireSpeed = 30000.1
EnergyFireCost = 29485.298767409608
MetalFireCost = 200.81264851814012
Projectile = "_sbimploder57"
RoundsEachBurst = 1
RoundPeriod = 0.1
