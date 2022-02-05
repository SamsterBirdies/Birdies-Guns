dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head60",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.8660254037844386,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head60"
NodeEffects = {}
MinFireSpeed = 11122.0
MaxFireSpeed = 11122.1
EnergyFireCost = 6534.960280632558
MetalFireCost = 170.63750419986158
Projectile = "_sbfog60"
RoundsEachBurst = 408
