dofile(path .. "/weapons/sbslingshot/sbslingshotpebble.lua")
Sprites={{Name = "sbslingshotpebble-head50",States={Normal={Frames={{texture= path .. "/weapons/sbslingshot/head.tga",colour={0.8660254037844386,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbslingshotpebble-head50"
NodeEffects = {}
MinFireSpeed = 800.0
MaxFireSpeed = 2800.1
EnergyFireCost = 166.9951234188136
MetalFireCost = 59
Projectile = "_sbpebble50"
RoundsEachBurst = 50
