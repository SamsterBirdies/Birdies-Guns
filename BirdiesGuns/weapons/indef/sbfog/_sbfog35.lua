dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head35",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.7071067811865476,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head35"
NodeEffects = {}
MinFireSpeed = 7172.0
MaxFireSpeed = 7172.1
EnergyFireCost = 3406.9286600517557
MetalFireCost = 95.24392154996536
Projectile = "_sbfog35"
