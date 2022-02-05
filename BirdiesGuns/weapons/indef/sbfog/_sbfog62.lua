dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head62",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.8660254037844386,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head62"
NodeEffects = {}
MinFireSpeed = 11438.0
MaxFireSpeed = 11438.1
EnergyFireCost = 6841.55448868959
MetalFireCost = 178.02721075303106
Projectile = "_sbfog62"
RoundsEachBurst = 418
