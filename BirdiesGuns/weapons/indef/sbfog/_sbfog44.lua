dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head44",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.7071067811865476,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head44"
NodeEffects = {}
MinFireSpeed = 8594.0
MaxFireSpeed = 8594.1
EnergyFireCost = 4396.264202833406
MetalFireCost = 119.08944488880515
Projectile = "_sbfog44"
