dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head46",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.7071067811865476,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head46"
NodeEffects = {}
MinFireSpeed = 8910.0
MaxFireSpeed = 8910.1
EnergyFireCost = 4635.502015862095
MetalFireCost = 124.85568961308635
Projectile = "_sbfog46"
