dofile(path .. "/weapons/sbslingshot/sbslingshotpebble.lua")
Sprites={{Name = "sbslingshotpebble-head38",States={Normal={Frames={{texture= path .. "/weapons/sbslingshot/head.tga",colour={0.7071067811865476,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbslingshotpebble-head38"
NodeEffects = {}
MinFireSpeed = 800.0
MaxFireSpeed = 2800.1
EnergyFireCost = 116.9143572008245
MetalFireCost = 47
Projectile = "_sbpebble38"
RoundsEachBurst = 38
