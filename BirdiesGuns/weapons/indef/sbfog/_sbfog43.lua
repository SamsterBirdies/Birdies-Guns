dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head43",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.7071067811865476,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head43"
NodeEffects = {}
MinFireSpeed = 8436.0
MaxFireSpeed = 8436.1
EnergyFireCost = 4279.398599712892
MetalFireCost = 116.27268419820814
Projectile = "_sbfog43"
RoundsEachBurst = 323
