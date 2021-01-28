dofile(path .. "/weapons/sbslingshot/sbslingshotpebble.lua")
Sprites={{Name = "sbslingshotpebble-head10",States={Normal={Frames={{texture= path .. "/weapons/sbslingshot/head.tga",colour={0.0,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbslingshotpebble-head10"
NodeEffects = {}
MinFireSpeed = 800.0
MaxFireSpeed = 2800.1
EnergyFireCost = 30.66441336492322
MetalFireCost = 19
Projectile = "_sbpebble10"
RoundsEachBurst = 10
