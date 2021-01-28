dofile(path .. "/weapons/sbslingshot/sbslingshotpebble.lua")
Sprites={{Name = "sbslingshotpebble-head18",States={Normal={Frames={{texture= path .. "/weapons/sbslingshot/head.tga",colour={0.5,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbslingshotpebble-head18"
NodeEffects = {}
MinFireSpeed = 800.0
MaxFireSpeed = 2800.1
EnergyFireCost = 51.61664976364042
MetalFireCost = 27
Projectile = "_sbpebble18"
RoundsEachBurst = 18
