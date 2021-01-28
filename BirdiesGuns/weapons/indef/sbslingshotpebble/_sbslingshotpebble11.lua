dofile(path .. "/weapons/sbslingshot/sbslingshotpebble.lua")
Sprites={{Name = "sbslingshotpebble-head11",States={Normal={Frames={{texture= path .. "/weapons/sbslingshot/head.tga",colour={0.0,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbslingshotpebble-head11"
NodeEffects = {}
MinFireSpeed = 800.0
MaxFireSpeed = 2800.1
EnergyFireCost = 33.14354482375015
MetalFireCost = 20
Projectile = "_sbpebble11"
RoundsEachBurst = 11
