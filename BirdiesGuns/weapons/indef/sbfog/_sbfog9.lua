dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head9",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.0,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head9"
NodeEffects = {}
MinFireSpeed = 3064.0
MaxFireSpeed = 3064.1
EnergyFireCost = 1215.0097631978635
MetalFireCost = 42.413055830922865
Projectile = "_sbfog9"
RoundsEachBurst = 153
