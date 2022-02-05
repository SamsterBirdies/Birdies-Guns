dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head19",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.5,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head19"
NodeEffects = {}
MinFireSpeed = 4644.0
MaxFireSpeed = 4644.1
EnergyFireCost = 1955.4371280664448
MetalFireCost = 60.25925385596047
Projectile = "_sbfog19"
RoundsEachBurst = 203
