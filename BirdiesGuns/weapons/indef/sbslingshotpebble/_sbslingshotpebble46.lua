dofile(path .. "/weapons/sbslingshot/sbslingshotpebble.lua")
Sprites={{Name = "sbslingshotpebble-head46",States={Normal={Frames={{texture= path .. "/weapons/sbslingshot/head.tga",colour={0.7071067811865476,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbslingshotpebble-head46"
NodeEffects = {}
MinFireSpeed = 800.0
MaxFireSpeed = 2800.1
EnergyFireCost = 149.25622517665875
MetalFireCost = 55
Projectile = "_sbpebble46"
RoundsEachBurst = 46
