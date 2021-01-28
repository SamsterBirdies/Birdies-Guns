dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head47",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.7071067811865476,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head47"
NodeEffects = {}
MinFireSpeed = 9068.0
MaxFireSpeed = 9068.1
EnergyFireCost = 4757.93173485994
MetalFireCost = 127.80655976329084
Projectile = "_sbfog47"
